// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";

/**
 * @author  Birds of Space
 * @title   NFT Marketplace.
 * @dev     Buy and sell NFTs on the blockchain.
 */
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

    /**
     * @dev     Disable initializer to avoid accidental usage.
     */
    constructor() {
        _disableInitializers();
    }

    /**
     * @notice  .
     * @dev     Initializes the contract.
     */
    function initialize() initializer public {
         __Ownable_init();
    }

    /**
     * @dev     Creates a market item.
     * @param   nftContract  Address of the NFT contract.
     * @param   tokenId  Id of the NFT.
     * @param   price  Price of the NFT.
     */
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

    /**
     * @dev     Creates a market sale of an NFT.
     * @param   nftContract  Address of the NFT contract.
     * @param   _itemId  ID of the NFT to be sold.
     */
    function createMarketSale(address nftContract, uint256 _itemId)
        public
        payable
        nonReentrant
    {
        uint256 price = idToMarketItem[_itemId].price;
        uint256 tokenId = idToMarketItem[_itemId].tokenId;
        bool sold = idToMarketItem[_itemId].sold;
        uint256 priceTax = (price * 1) / 100;
        require(
            msg.value == price + priceTax,
            "Please submit the asking price in order to complete the purchase"
        );
        require(sold != true, "This Sale has alredy finnished");
        emit MarketItemSold(_itemId, msg.sender);

        idToMarketItem[_itemId].seller.transfer(msg.value);
        IERC721(nftContract).transferFrom(address(this), msg.sender, tokenId);
        idToMarketItem[_itemId].owner = payable(msg.sender);
        _itemsSold.increment();
        idToMarketItem[_itemId].sold = true;
    }

    /**
     * @dev     Fetch all the market items that are not sold.
     * @return  MarketItem[]  Should return an array of MarketItem structs.
     */
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

    /**
     * @dev     Will payout the owner 95% of the contract balance.
     */
    function withdraw() public payable onlyOwner {
        // This will payout the owner 95% of the contract balance.
        // Do not remove this otherwise you will not be able to withdraw the funds.
        // =============================================================================
        (bool os, ) = payable(owner()).call{value: address(this).balance}("");
        require(os);
    }
}
