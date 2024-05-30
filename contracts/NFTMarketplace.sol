// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";

contract BirdsofSpaceMarketPlaceV1 is ReentrancyGuard, OwnableUpgradeable {
    using Counters for Counters.Counter;
    Counters.Counter private itemIds;
    Counters.Counter private _itemsSold;
    uint256 public itemId;

    struct MarketItem {
        uint256 itemId;
        address nftContract;
        uint256 tokenId;
        address payable seller;
        address payable owner;
        uint256 price;
        bool sold;
    }

    mapping(uint256 => MarketItem) public idToMarketItem;

    event MarketItemCreated(
        uint256 indexed itemId,
        address indexed nftContract,
        uint256 indexed tokenId,
        address seller,
        address owner,
        uint256 price,
        bool sold
    );

    event MarketItemSold(uint256 indexed itemId, address owner);

    constructor() {
        _disableInitializers();
    }

    function initialize() initializer public {
         __Ownable_init();
    }

    function createMarketItem(
        address nftContract,
        uint256 tokenId,
        uint256 price
    ) public payable nonReentrant {
        require(price > 0, "Price must be greater than 0");
        itemIds.increment();
        itemId = itemIds.current();

        idToMarketItem[itemId] = MarketItem(
            itemId,
            nftContract,
            tokenId,
            payable(msg.sender),
            payable(address(0)),
            price,
            false
        );

        IERC721(nftContract).transferFrom(msg.sender, address(this), tokenId);

        emit MarketItemCreated(
            itemId,
            nftContract,
            tokenId,
            msg.sender,
            address(0),
            price,
            false
        );
    }

    function createMarketSale(address nftContract, uint256 itemId)
        public
        payable
        nonReentrant
    {
        uint256 price = idToMarketItem[itemId].price;
        uint256 tokenId = idToMarketItem[itemId].tokenId;
        bool sold = idToMarketItem[itemId].sold;
        uint256 priceTax = (price * 1) / 100;
        require(
            msg.value == price + priceTax,
            "Please submit the asking price in order to complete the purchase"
        );
        require(sold != true, "This Sale has alredy finnished");
        emit MarketItemSold(itemId, msg.sender);

        idToMarketItem[itemId].seller.transfer(msg.value);
        IERC721(nftContract).transferFrom(address(this), msg.sender, tokenId);
        idToMarketItem[itemId].owner = payable(msg.sender);
        _itemsSold.increment();
        idToMarketItem[itemId].sold = true;
    }

    function fetchMarketItems() public view returns (MarketItem[] memory) {
        uint256 itemCount = itemIds.current();
        uint256 unsoldItemCount = itemIds.current() - _itemsSold.current();
        uint256 currentIndex = 0;

        MarketItem[] memory items = new MarketItem[](unsoldItemCount);
        for (uint256 i = 0; i < itemCount; i++) {
            if (idToMarketItem[i + 1].owner == address(0)) {
                uint256 currentId = i + 1;
                MarketItem storage currentItem = idToMarketItem[currentId];
                items[currentIndex] = currentItem;
                currentIndex += 1;
            }
        }
        return items;
    }

    function withdraw() public payable onlyOwner {
        // This will payout the owner 95% of the contract balance.
        // Do not remove this otherwise you will not be able to withdraw the funds.
        // =============================================================================
        (bool os, ) = payable(owner()).call{value: address(this).balance}("");
        require(os);
        // =============================================================================
    }
}

contract BirdsofSpaceMarketPlaceV2 is BirdsofSpaceMarketPlaceV1 {
    function cancelMarketItem(uint256 itemId) public nonReentrant {
        require(msg.sender == idToMarketItem[itemId].seller, "You are not the seller of this item");
        require(!idToMarketItem[itemId].sold, "This item has already been sold");

        // Transfer NFT back to seller
        IERC721(idToMarketItem[itemId].nftContract).transferFrom(address(this), idToMarketItem[itemId].seller, idToMarketItem[itemId].tokenId);

        // Update market item status
        delete idToMarketItem[itemId];
    }
}
