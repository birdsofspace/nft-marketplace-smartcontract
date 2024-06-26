# Solo Audit Report
## Project Name: Birds of Space NFT Marketplace

### Introduction

The Birds of Space NFT Marketplace project aims to establish a decentralized platform on the Ethereum blockchain for the trading of non-fungible tokens (NFTs). This marketplace, known as "Birds of Space NFT Marketplace," seeks to create a vibrant ecosystem where users can securely buy, sell, and trade digital assets representing unique collectibles, artworks, and virtual goods.

### Audit Overview

The objective of this audit report is to evaluate the smart contract code and the comprehensive security measures integrated into the Birds of Space NFT Marketplace project. The assessment involves scrutinizing the solidity codebase for potential vulnerabilities and verifying adherence to the industry's best practices in smart contract development. Additionally, the audit will assess the platform's user interface for usability, accessibility, and responsiveness, ensuring a seamless and intuitive experience for users interacting with the marketplace.

### Conclusion

The audit report aims to provide insights into the security posture of the Birds of Space NFT Marketplace project and identify areas for improvement. By conducting this audit, we aim to enhance the overall robustness and reliability of the smart contract codebase and user interface, thereby promoting trust and confidence among stakeholders participating in the NFT marketplace ecosystem.

# Summary of Code Compilation and Quality Analysis

![flow.png](https://raw.githubusercontent.com/birdsofspace/independent-contract-assessment/main/flow/nft-marketplace-smartcontract-flow.png)

+ Compiled with solc
+ Total number of contracts in source files: 16
+ Source lines of code (SLOC) in source files: 688
+ Number of  assembly lines: 0
+ Number of optimization issues: 0
+ Number of informational issues: 69
+ Number of low issues: 0
+ Number of medium issues: 0
+ Number of high issues: 1
+ ERCs: ERC165, ERC721


| Name                      | # functions |          ERCS | ERC20 info | Complex code |           Features |
|---------------------------|-------------|---------------|------------|--------------|--------------------|
| AddressUpgradeable        |           9 |               |            |           No |           Send ETH |
|                           |             |               |            |              |           Assembly |
| IERC721Receiver           |           1 |               |            |           No |                    |
| Address                   |          11 |               |            |           No |           Send ETH |
|                           |             |               |            |              |       Delegatecall |
|                           |             |               |            |              |           Assembly |
| Strings                   |           5 |               |            |           No |                    |
| ERC721                    |          45 | ERC165,ERC721 |            |           No |           Assembly |
| Counters                  |           4 |               |            |           No |                    |
| BirdsofSpaceMarketPlaceV1 |          19 |               |            |           No |        Receive ETH |
|                           |             |               |            |              |           Send ETH |
|                           |             |               |            |              | Tokens interaction |
|                           |             |               |            |              |        Upgradeable |


## Contract AddressUpgradeable

| Function              | Modifiers |
|-----------------------|-----------|
| isContract            |        [] |
| sendValue             |        [] |
| functionCall          |        [] |
| functionCall          |        [] |
| functionCallWithValue |        [] |
| functionCallWithValue |        [] |
| functionStaticCall    |        [] |
| functionStaticCall    |        [] |
| verifyCallResult      |        [] |


## Contract IERC721Receiver

| Function         | Modifiers |
|------------------|-----------|
| onERC721Received |        [] |


## Contract Address

| Function              | Modifiers |
|-----------------------|-----------|
| isContract            |        [] |
| sendValue             |        [] |
| functionCall          |        [] |
| functionCall          |        [] |
| functionCallWithValue |        [] |
| functionCallWithValue |        [] |
| functionStaticCall    |        [] |
| functionStaticCall    |        [] |
| functionDelegateCall  |        [] |
| functionDelegateCall  |        [] |
| verifyCallResult      |        [] |


## Contract Strings

| Function                            | Modifiers |
|-------------------------------------|-----------|
| toString                            |        [] |
| toHexString                         |        [] |
| toHexString                         |        [] |
| toHexString                         |        [] |
| slitherConstructorConstantVariables |        [] |


## Contract ERC721

| Function               | Modifiers |
|------------------------|-----------|
| name                   |        [] |
| symbol                 |        [] |
| tokenURI               |        [] |
| balanceOf              |        [] |
| ownerOf                |        [] |
| safeTransferFrom       |        [] |
| safeTransferFrom       |        [] |
| transferFrom           |        [] |
| approve                |        [] |
| setApprovalForAll      |        [] |
| getApproved            |        [] |
| isApprovedForAll       |        [] |
| supportsInterface      |        [] |
| supportsInterface      |        [] |
| _msgSender             |        [] |
| _msgData               |        [] |
| constructor            |        [] |
| supportsInterface      |        [] |
| balanceOf              |        [] |
| ownerOf                |        [] |
| name                   |        [] |
| symbol                 |        [] |
| tokenURI               |        [] |
| _baseURI               |        [] |
| approve                |        [] |
| getApproved            |        [] |
| setApprovalForAll      |        [] |
| isApprovedForAll       |        [] |
| transferFrom           |        [] |
| safeTransferFrom       |        [] |
| safeTransferFrom       |        [] |
| _safeTransfer          |        [] |
| _exists                |        [] |
| _isApprovedOrOwner     |        [] |
| _safeMint              |        [] |
| _safeMint              |        [] |
| _mint                  |        [] |
| _burn                  |        [] |
| _transfer              |        [] |
| _approve               |        [] |
| _setApprovalForAll     |        [] |
| _requireMinted         |        [] |
| _checkOnERC721Received |        [] |
| _beforeTokenTransfer   |        [] |
| _afterTokenTransfer    |        [] |


## Contract Counters

| Function  | Modifiers |
|-----------|-----------|
| current   |        [] |
| increment |        [] |
| decrement |        [] |
| reset     |        [] |


## Contract BirdsofSpaceMarketPlaceV1

| Function                 |                           Modifiers |
|--------------------------|-------------------------------------|
| __Ownable_init           |                ['onlyInitializing'] |
| __Ownable_init_unchained |                ['onlyInitializing'] |
| owner                    |                                  [] |
| _checkOwner              |                                  [] |
| renounceOwnership        |                       ['onlyOwner'] |
| transferOwnership        |                       ['onlyOwner'] |
| _transferOwnership       |                                  [] |
| __Context_init           |                ['onlyInitializing'] |
| __Context_init_unchained |                ['onlyInitializing'] |
| _msgSender               |                                  [] |
| _msgData                 |                                  [] |
| _disableInitializers     |                                  [] |
| constructor              |                                  [] |
| constructor              |                                  [] |
| initialize               | ['initializer', 'onlyInitializing'] |
| createMarketItem         |                    ['nonReentrant'] |
| createMarketSale         |                    ['nonReentrant'] |
| fetchMarketItems         |                                  [] |
| withdraw                 |                       ['onlyOwner'] |


## Contract AddressUpgradeable
+ Contract vars: []
+ Inheritance:: []
 
| Function                                            | Visibility | Modifiers |     Read | Write |                               Internal Calls             |                      External Calls                   | Cyclomatic Complexity |
|-----------------------------------------------------|------------|-----------|----------|-------|------------------------------------------------------|------------------------------------------------------|-----------------------|
| isContract(address)                                 |   internal |        [] |       [] |    [] |                            ['code(address)']          |                                  []                  |              1        |
| sendValue(address,uint256)                          |   internal |        [] | ['this'] |    [] | ['balance(address)', 'require(bool,string)']          | ['recipient.call{value: amount}()']                  |              1        |
| functionCall(address,bytes)                         |   internal |        [] |       [] |    [] |                             ['functionCall']          |                                  []                  |              1        |
| functionCall(address,bytes,string)                  |   internal |        [] |       [] |    [] |                    ['functionCallWithValue']          |                                  []                  |              1        |
| functionCallWithValue(address,bytes,uint256)        |   internal |        [] |       [] |    [] |                    ['functionCallWithValue']          |                                  []                  |              1        |
| functionCallWithValue(address,bytes,uint256,string) |   internal |        [] | ['this'] |    [] |           ['balance(address)', 'isContract']          | ['target.call{value: value}(data)']                  |              1        |
| functionStaticCall(address,bytes)                   |   internal |        [] |       [] |    [] |                       ['functionStaticCall']          |                                  []                  |              1        |
| functionStaticCall(address,bytes,string)            |   internal |        [] |       [] |    [] |       ['isContract', 'require(bool,string)']          |         ['target.staticcall(data)']                  |              1        |
| verifyCallResult(bool,bytes,string)                 |   internal |        [] |       [] |    [] |         ['mload(uint256)', 'revert(string)']         |                                  []                  |              2        |





| Modifiers | Visibility | Read | Write | Internal Calls | External Calls | Cyclomatic Complexity |
|-----------|------------|------|-------|----------------|----------------|-----------------------|



## Contract Initializable
+ Contract vars: ['_initialized', '_initializing']
+ Inheritance:: []
 

| Function               | Visibility | Modifiers |                              Read |            Write |           Internal Calls | External Calls | Cyclomatic Complexity |
|------------------------|------------|-----------|-----------------------------------|------------------|--------------------------|----------------|-----------------------|
| _disableInitializers() |   internal |        [] | ['_initialized', '_initializing'] | ['_initialized'] | ['require(bool,string)'] |             [] |                     2 |



| Modifiers            | Visibility |                              Read |                             Write |           Internal Calls |                                   External Calls | Cyclomatic Complexity |
|----------------------|------------|-----------------------------------|-----------------------------------|--------------------------|--------------------------------------------------|-----------------------|
| initializer()        |   internal | ['_initialized', '_initializing'] | ['_initialized', '_initializing'] | ['require(bool,string)'] | ['AddressUpgradeable.isContract(address(this))'] |                 3     |
|                      |            |                          ['this'] |                                   |                          |                                                  |                       |
| reinitializer(uint8) |   internal | ['_initialized', '_initializing'] | ['_initialized', '_initializing'] | ['require(bool,string)'] |                                               [] |                 1     |
| onlyInitializing()   |   internal |                 ['_initializing'] |                                [] | ['require(bool,string)'] |                                               [] |                 1     |




## Contract ContextUpgradeable
+ Contract vars: ['__gap']
+ Inheritance:: ['Initializable']
 

| Function                   | Visibility |            Modifiers |                              Read |            Write |           Internal Calls | External Calls | Cyclomatic Complexity |
|----------------------------|------------|----------------------|-----------------------------------|------------------|--------------------------|----------------|-----------------------|
| _disableInitializers()     |   internal |                   [] | ['_initialized', '_initializing'] | ['_initialized'] | ['require(bool,string)'] |             [] |                     2 |
| __Context_init()           |   internal | ['onlyInitializing'] |                                [] |               [] |     ['onlyInitializing'] |             [] |                     1 |
| __Context_init_unchained() |   internal | ['onlyInitializing'] |                                [] |               [] |     ['onlyInitializing'] |             [] |                     1 |
| _msgSender()               |   internal |                   [] |                    ['msg.sender'] |               [] |                       [] |             [] |                     1 |
| _msgData()                 |   internal |                   [] |                      ['msg.data'] |               [] |                       [] |             [] |                     1 |


| Modifiers            | Visibility |                              Read |                             Write |           Internal Calls |                                   External Calls | Cyclomatic Complexity |
|----------------------|------------|-----------------------------------|-----------------------------------|--------------------------|--------------------------------------------------|-----------------------|
| initializer()        |   internal | ['_initialized', '_initializing'] | ['_initialized', '_initializing'] | ['require(bool,string)'] | ['AddressUpgradeable.isContract(address(this))'] |                 3     |
|                      |            |                          ['this'] |                                   |                          |                                                  |                       |
| reinitializer(uint8) |   internal | ['_initialized', '_initializing'] | ['_initialized', '_initializing'] | ['require(bool,string)'] |                                               [] |                 1     |
| onlyInitializing()   |   internal |                 ['_initializing'] |                                [] | ['require(bool,string)'] |                                               [] |                 1     |




## Contract OwnableUpgradeable
+ Contract vars: ['_owner', '__gap']
+ Inheritance:: ['ContextUpgradeable', 'Initializable']
 

| Function                     | Visibility | Modifiers            | Read                                | Write            | Internal Calls                                | External Calls | Cyclomatic Complexity |
|------------------------------|------------|----------------------|-------------------------------------|------------------|-----------------------------------------------|----------------|----------------------|
| __Context_init()            | internal   | ['onlyInitializing'] | []                                  | []               | ['onlyInitializing']                          | []             | 1                    |
| __Context_init_unchained()  | internal   | ['onlyInitializing'] | []                                  | []               | ['onlyInitializing']                          | []             | 1                    |
| _msgSender()                | internal   | []                   | ['msg.sender']                      | []               | []                                            | []             | 1                    |
| _msgData()                  | internal   | []                   | ['msg.data']                        | []               | []                                            | []             | 1                    |
| _disableInitializers()      | internal   | []                   | ['_initialized', '_initializing']  | ['_initialized'] | ['require(bool,string)']                      | []             | 2                    |
| __Ownable_init()            | internal   | ['onlyInitializing'] | []                                  | []               | ['__Ownable_init_unchained', 'onlyInitializing'] | []             | 1                    |
| __Ownable_init_unchained()  | internal   | ['onlyInitializing'] | []                                  | []               | ['_msgSender', '_transferOwnership']          | []             | 1                    |
| owner()                     | public     | []                   | ['_owner']                          | []               | []                                            | []             | 1                    |
| _checkOwner()               | internal   | []                   | []                                  | []               | ['_msgSender', 'owner']                       | []             | 1                    |
| renounceOwnership()         | public     | ['onlyOwner']        | []                                  | []               | ['_transferOwnership', 'onlyOwner']           | []             | 1                    |
| transferOwnership(address)  | public     | ['onlyOwner']        | []                                  | []               | ['_transferOwnership', 'onlyOwner']           | []             | 1                    |
| _transferOwnership(address) | internal   | []                   | ['_owner']                          | ['_owner']       | []                                            | []             | 1                    |



| Modifiers            | Visibility | Read                                  | Write                                 | Internal Calls             | External Calls                                 | Cyclomatic Complexity |
|----------------------|------------|---------------------------------------|---------------------------------------|----------------------------|------------------------------------------------|-----------------------|
| initializer()        | internal   | ['_initialized', '_initializing', 'this'] | ['_initialized', '_initializing']   | ['require(bool,string)']  | ['AddressUpgradeable.isContract(address(this))'] | 3                     |
| reinitializer(uint8) | internal   | ['_initialized', '_initializing']     | ['_initialized', '_initializing']   | ['require(bool,string)']  | []                                             | 1                     |
| onlyInitializing()   | internal   | ['_initializing']                     | []                                    | ['require(bool,string)']  | []                                             | 1                     |
| onlyOwner()          | internal   | []                                    | []                                    | ['_checkOwner']            | []                                             | 1                     |


## Contract IERC165
+ Contract vars: []
+ Inheritance:: []
 

| Function                  | Visibility | Modifiers | Read | Write | Internal Calls | External Calls | Cyclomatic Complexity |
|---------------------------|------------|-----------|------|-------|----------------|----------------|-----------------------|
| supportsInterface(bytes4) |   external |        [] |   [] |    [] |             [] |             [] |                     2 |


| Modifiers | Visibility | Read | Write | Internal Calls | External Calls | Cyclomatic Complexity |
|-----------|------------|------|-------|----------------|----------------|-----------------------|


## Contract IERC721
+ Contract vars: []
+ Inheritance:: ['IERC165']
 

| Function                                        | Visibility | Modifiers | Read | Write | Internal Calls | External Calls | Cyclomatic Complexity |
|-------------------------------------------------|------------|-----------|------|-------|----------------|----------------|-----------------------|
| supportsInterface(bytes4)                       |   external |        [] |   [] |    [] |             [] |             [] |                     2 |
| balanceOf(address)                              |   external |        [] |   [] |    [] |             [] |             [] |                     2 |
| ownerOf(uint256)                                |   external |        [] |   [] |    [] |             [] |             [] |                     2 |
| safeTransferFrom(address,address,uint256,bytes) |   external |        [] |   [] |    [] |             [] |             [] |                     2 |
| safeTransferFrom(address,address,uint256)       |   external |        [] |   [] |    [] |             [] |             [] |                     2 |
| transferFrom(address,address,uint256)           |   external |        [] |   [] |    [] |             [] |             [] |                     2 |
| approve(address,uint256)                        |   external |        [] |   [] |    [] |             [] |             [] |                     2 |
| setApprovalForAll(address,bool)                 |   external |        [] |   [] |    [] |             [] |             [] |                     2 |
| getApproved(uint256)                            |   external |        [] |   [] |    [] |             [] |             [] |                     2 |
| isApprovedForAll(address,address)               |   external |        [] |   [] |    [] |             [] |             [] |                     2 |


| Modifiers | Visibility | Read | Write | Internal Calls | External Calls | Cyclomatic Complexity |
|-----------|------------|------|-------|----------------|----------------|-----------------------|



## Contract IERC721Metadata
+ Contract vars: []
+ Inheritance:: ['IERC721', 'IERC165']
 

| Function                                        | Visibility | Modifiers | Read | Write | Internal Calls | External Calls | Cyclomatic Complexity |
|-------------------------------------------------|------------|-----------|------|-------|----------------|----------------|-----------------------|
| balanceOf(address)                              |   external |        [] |   [] |    [] |             [] |             [] |                     2 |
| ownerOf(uint256)                                |   external |        [] |   [] |    [] |             [] |             [] |                     2 |
| safeTransferFrom(address,address,uint256,bytes) |   external |        [] |   [] |    [] |             [] |             [] |                     2 |
| safeTransferFrom(address,address,uint256)       |   external |        [] |   [] |    [] |             [] |             [] |                     2 |
| transferFrom(address,address,uint256)           |   external |        [] |   [] |    [] |             [] |             [] |                     2 |
| approve(address,uint256)                        |   external |        [] |   [] |    [] |             [] |             [] |                     2 |
| setApprovalForAll(address,bool)                 |   external |        [] |   [] |    [] |             [] |             [] |                     2 |
| getApproved(uint256)                            |   external |        [] |   [] |    [] |             [] |             [] |                     2 |
| isApprovedForAll(address,address)               |   external |        [] |   [] |    [] |             [] |             [] |                     2 |
| supportsInterface(bytes4)                       |   external |        [] |   [] |    [] |             [] |             [] |                     2 |
| name()                                          |   external |        [] |   [] |    [] |             [] |             [] |                     2 |
| symbol()                                        |   external |        [] |   [] |    [] |             [] |             [] |                     2 |
| tokenURI(uint256)                               |   external |        [] |   [] |    [] |             [] |             [] |                     2 |


| Modifiers | Visibility | Read | Write | Internal Calls | External Calls | Cyclomatic Complexity |
|-----------|------------|------|-------|----------------|----------------|-----------------------|



## Contract IERC721Receiver
+ Contract vars: []
+ Inheritance:: []
 

| Function                                        | Visibility | Modifiers | Read | Write | Internal Calls | External Calls | Cyclomatic Complexity |
|-------------------------------------------------|------------|-----------|------|-------|----------------|----------------|-----------------------|
| onERC721Received(address,address,uint256,bytes) |   external |        [] |   [] |    [] |             [] |             [] |                     2 |


| Modifiers | Visibility | Read | Write | Internal Calls | External Calls | Cyclomatic Complexity |
|-----------|------------|------|-------|----------------|----------------|-----------------------|


## Contract Address
+ Contract vars: []
+ Inheritance:: []
 

| Function                                            | Visibility | Modifiers | Read        | Write | Internal Calls                              | External Calls                         | Cyclomatic Complexity |
|-----------------------------------------------------|------------|-----------|-------------|-------|---------------------------------------------|----------------------------------------|-----------------------|
| isContract(address)                                 | internal   | []        | []          | []    | ['code(address)']                           | []                                     | 1                     |
| sendValue(address,uint256)                          | internal   | []        | ['this']    | []    | ['balance(address)', 'require(bool,string)'] | ['recipient.call{value: amount}()']   | 1                     |
| functionCall(address,bytes)                         | internal   | []        | []          | []    | ['functionCall']                            | []                                     | 1                     |
| functionCall(address,bytes,string)                  | internal   | []        | []          | []    | ['functionCallWithValue']                   | []                                     | 1                     |
| functionCallWithValue(address,bytes,uint256)        | internal   | []        | []          | []    | ['functionCallWithValue']                   | []                                     | 1                     |
| functionCallWithValue(address,bytes,uint256,string) | internal   | []        | ['this']    | []    | ['balance(address)', 'isContract']          | ['target.call{value: value}(data)']   | 1                     |
|                                                     |            |           |             |       | ['require(bool,string)', 'verifyCallResult']|                                        |                       |
| functionStaticCall(address,bytes)                   | internal   | []        | []          | []    | ['functionStaticCall']                      | []                                     | 1                     |
| functionStaticCall(address,bytes,string)            | internal   | []        | []          | []    | ['isContract', 'require(bool,string)']      | ['target.staticcall(data)']           | 1                     |
|                                                     |            |           |             |       | ['verifyCallResult']                        |                                        |                       |
| functionDelegateCall(address,bytes)                 | internal   | []        | []          | []    | ['functionDelegateCall']                    | []                                     | 1                     |
| functionDelegateCall(address,bytes,string)          | internal   | []        | []          | []    | ['isContract', 'require(bool,string)']      | ['target.delegatecall(data)']         | 1                     |
|                                                     |            |           |             |       | ['verifyCallResult']                        |                                        |                       |
| verifyCallResult(bool,bytes,string)                 | internal   | []        | []          | []    | ['mload(uint256)', 'revert(string)']        | []                                     | 2                     |
|                                                     |            |           |             |       | ['revert(uint256,uint256)']                 |                                        |                       |


| Modifiers | Visibility | Read | Write | Internal Calls | External Calls | Cyclomatic Complexity |
|-----------|------------|------|-------|----------------|----------------|-----------------------|



## Contract Context
+ Contract vars: []
+ Inheritance:: []
 

| Function     | Visibility | Modifiers |           Read | Write | Internal Calls | External Calls | Cyclomatic Complexity |
|--------------|------------|-----------|----------------|-------|----------------|----------------|-----------------------|
| _msgSender() |   internal |        [] | ['msg.sender'] |    [] |             [] |             [] |                     1 |
| _msgData()   |   internal |        [] |   ['msg.data'] |    [] |             [] |             [] |                     1 |



| Modifiers | Visibility | Read | Write | Internal Calls | External Calls | Cyclomatic Complexity |
|-----------|------------|------|-------|----------------|----------------|-----------------------|



## Contract ERC165
+ Contract vars: []
+ Inheritance:: ['IERC165']
 

| Function                  | Visibility | Modifiers | Read | Write | Internal Calls | External Calls | Cyclomatic Complexity |
|---------------------------|------------|-----------|------|-------|----------------|----------------|-----------------------|
| supportsInterface(bytes4) |   external |        [] |   [] |    [] |             [] |             [] |                     2 |
| supportsInterface(bytes4) |     public |        [] |   [] |    [] |     ['type()'] |             [] |                     1 |


| Modifiers | Visibility | Read | Write | Internal Calls | External Calls | Cyclomatic Complexity |
|-----------|------------|------|-------|----------------|----------------|-----------------------|



## Contract Strings
+ Contract vars: ['_HEX_SYMBOLS', '_ADDRESS_LENGTH']
+ Inheritance:: []
 

| Function                              | Visibility | Modifiers | Read             | Write | Internal Calls            | External Calls            | Cyclomatic Complexity |
|---------------------------------------|------------|-----------|------------------|-------|----------------------------|----------------------------|------------------------|
| toString(uint256)                    | internal   | []        | []               | []    | []                         | ['new bytes(digits)']     | 3                      |
| toHexString(uint256)                 | internal   | []        | []               | []    | ['toHexString']           | []                         | 2                      |
| toHexString(uint256,uint256)         | internal   | []        | ['_HEX_SYMBOLS'] | []    | ['require(bool,string)']  | ['new bytes(2 * length + 2)'] | 2                      |
| toHexString(address)                 | internal   | []        | ['_ADDRESS_LENGTH'] | []    | ['toHexString']           | []                         | 1                      |
| slitherConstructorConstantVariables()| internal  | []        | []               | ['_ADDRESS_LENGTH', '_HEX_SYMBOLS'] | []                     | []                       | 1                      |



| Modifiers | Visibility | Read | Write | Internal Calls | External Calls | Cyclomatic Complexity |
|-----------|------------|------|-------|----------------|----------------|-----------------------|



## Contract ERC721
+ Contract vars: ['_name', '_symbol', '_owners', '_balances', '_tokenApprovals', '_operatorApprovals']
+ Inheritance:: ['IERC721Metadata', 'IERC721', 'ERC165', 'IERC165', 'Context']
 

| Function                                              | Visibility | Modifiers | Read        | Write                              | Internal Calls                                                                                      | External Calls                                                                                   | Cyclomatic Complexity |
|-------------------------------------------------------|------------|-----------|-------------|------------------------------------|----------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------|-----------------------|
| name()                                                | external   | []        | []          | []                                 | []                                                                                                 | []                                                                                               | 2                     |
| symbol()                                              | external   | []        | []          | []                                 | []                                                                                                 | []                                                                                               | 2                     |
| tokenURI(uint256)                                     | external   | []        | []          | []                                 | []                                                                                                 | []                                                                                               | 2                     |
| balanceOf(address)                                    | external   | []        | []          | []                                 | []                                                                                                 | []                                                                                               | 2                     |
| ownerOf(uint256)                                      | external   | []        | []          | []                                 | []                                                                                                 | []                                                                                               | 2                     |
| safeTransferFrom(address,address,uint256,bytes)       | external   | []        | []          | []                                 | []                                                                                                 | []                                                                                               | 2                     |
| safeTransferFrom(address,address,uint256)             | external   | []        | []          | []                                 | []                                                                                                 | []                                                                                               | 2                     |
| transferFrom(address,address,uint256)                 | external   | []        | []          | []                                 | []                                                                                                 | []                                                                                               | 2                     |
| approve(address,uint256)                              | external   | []        | []          | []                                 | []                                                                                                 | []                                                                                               | 2                     |
| setApprovalForAll(address,bool)                       | external   | []        | []          | []                                 | []                                                                                                 | []                                                                                               | 2                     |
| getApproved(uint256)                                  | external   | []        | []          | []                                 | []                                                                                                 | []                                                                                               | 2                     |
| isApprovedForAll(address,address)                     | external   | []        | []          | []                                 | []                                                                                                 | []                                                                                               | 2                     |
| supportsInterface(bytes4)                             | external   | []        | []          | []                                 | []                                                                                                 | []                                                                                               | 2                     |
| supportsInterface(bytes4)                             | public     | []        | []          | []                                 | ['type()']                                                                                        | []                                                                                               | 1                     |
| _msgSender()                                          | internal   | []        | ['msg.sender'] | []                                 | []                                                                                                 | []                                                                                               | 1                     |
| _msgData()                                            | internal   | []        | ['msg.data'] | []                                 | []                                                                                                 | []                                                                                               | 1                     |
| constructor(string,string)                            | public     | []        | []          | ['_name', '_symbol']               | []                                                                                                 | []                                                                                               | 1                     |
| supportsInterface(bytes4)                             | public     | []        | []          | []                                 | ['supportsInterface', 'type()']                                                                   | []                                                                                               | 1                     |
| balanceOf(address)                                    | public     | []        | ['_balances'] | []                                 | ['require(bool,string)']                                                                          | []                                                                                               | 1                     |
| ownerOf(uint256)                                      | public     | []        | ['_owners'] | []                                 | ['require(bool,string)']                                                                          | []                                                                                               | 1                     |
| name()                                                | public     | []        | ['_name']   | []                                 | []                                                                                                 | []                                                                                               | 1                     |
| symbol()                                              | public     | []        | ['_symbol'] | []                                 | []                                                                                                 | []                                                                                               | 1                     |
| tokenURI(uint256)                                     | public     | []        | []          | []                                 | ['_baseURI', '_requireMinted']                                                                    | ['abi.encodePacked(baseURI,tokenId.toString())', 'tokenId.toString()']                          | 1                     |
|                                                       |            |           |             |                                    | ['abi.encodePacked()']                                                                            |                                                                                                  |                       |
| _baseURI()                                            | internal   | []        | []          | []                                 | []                                                                                                 | []                                                                                               | 1                     |
| approve(address,uint256)                              | public     | []        | []          | ['_tokenApprovals']                | ['ownerOf']                                                                                       | ['ERC721.ownerOf(tokenId)']                                                                     | 1                     |
|                                                       |            |           |             |                                    | ['isApprovedForAll', 'ownerOf']                                                                   |                                                                                                  |                       |
|                                                       |            |           |             |                                    | ['require(bool,string)']                                                                          |                                                                                                  |                       |
| getApproved(uint256)                                  | public     | []        | ['_tokenApprovals'] | []                                 | ['_requireMinted']                                                                                | []                                                                                               | 1                     |
| setApprovalForAll(address,bool)                       | public     | []        | []          | []                                 | ['_msgSender', '_setApprovalForAll']                                                              | []                                                                                               | 1                     |
| isApprovedForAll(address,address)                     | public     | []        | ['_operatorApprovals'] | []          | []                                                                                                 | []                                                                                               | 1                     |
| transferFrom(address,address,uint256)                 | public     | []        | []          | []                                 | ['_isApprovedOrOwner', '_msgSender']                                                              | []                                                                                               | 1                     |
|                                                       |            |           |             |                                    | ['_transfer', 'require(bool,string)']                                                            |                                                                                                  |                       |
| safeTransferFrom(address,address,uint256)             | public     | []        | []          | []                                 | ['safeTransferFrom']                                                                              | []                                                                                               | 1                     |
| safeTransferFrom(address,address,uint256,bytes)       | public     | []        | []          | []                                 | ['_isApprovedOrOwner', '_msgSender']                                                              | []                                                                                               | 1                     |
|                                                       |            |           |             |                                    | ['_safeTransfer', 'require(bool,string)']                                                         |                                                                                                  |                       |
| _safeTransfer(address,address,uint256,bytes)          | internal   | []        | []          | []                                 | ['_checkOnERC721Received', '_transfer']                                                           | []                                                                                               | 1                     |
|                                                       |            |           |             |                                    | ['require(bool,string)']                                                                          |                                                                                                  |                       |
| _exists(uint256)                                      | internal   | []        | ['_owners'] | []                                 | []                                                                                                 | []                                                                                               | 1                     |
| _isApprovedOrOwner(address,uint256)                   | internal   | []        | []          | []                                 | ['getApproved', 'isApprovedForAll']                                                               | ['ERC721.ownerOf(tokenId)']                                                                     | 1                     |
|                                                       |            |           |             |                                    | ['ownerOf']                                                                                       |                                                                                                  |                       |
| _safeMint(address,uint256)                            | internal   | []        | []          | []                                 | ['_safeMint']                                                                                     | []                                                                                               | 1                     |
| _safeMint(address,uint256,bytes)                      | internal   | []        | []          | []                                 | ['_checkOnERC721Received', '_mint']                                                               | []                                                                                               | 1                     |
|                                                       |            |           |             |                                    | ['require(bool,string)']                                                                          |                                                                                                  |                       |
| _mint(address,uint256)                                | internal   | []        | ['_balances'] | ['_balances', '_owners']           | ['_afterTokenTransfer', '_beforeTokenTransfer']                                                  | ['_exists', 'require(bool,string)']                                                             | 1                     |
|                                                       |            |           |             |                                    | ['_transfer', 'require(bool,string)']                                                            |                                                                                                  |                       |
| _burn(uint256)                                        | internal   | []        | ['_balances', '_owners'] | ['_balances', '_owners']           | ['_afterTokenTransfer', '_approve']                                                               | ['ERC721.ownerOf(tokenId)']                                                                     | 1                     |
|                                                       |            |           |             |                                    | ['_beforeTokenTransfer', 'ownerOf']                                                              |                                                                                                  |                       |
| _transfer(address,address,uint256)                    | internal   | []        | ['_balances'] | ['_balances', '_owners']           | ['_afterTokenTransfer', '_approve']                                                               | ['ERC721.ownerOf(tokenId)']                                                                     | 1                     |
|                                                       |            |           |             |                                    | ['_beforeTokenTransfer', 'ownerOf']                                                              |                                                                                                  |                       |
|                                                       |            |           |             |                                    | ['require(bool,string)']                                                                          |                                                                                                  |                       |
| _approve(address,uint256)                             | internal   | []        | []          | ['_tokenApprovals']                | ['ownerOf']                                                                                       | ['ERC721.ownerOf(tokenId)']                                                                     | 1                     |
| _setApprovalForAll(address,address,bool)              | internal   | []        | []          | ['_operatorApprovals']             | ['require(bool,string)']                                                                          | []                                                                                               | 1                     |
| _requireMinted(uint256)                               | internal   | []        | []          | []                                 | ['_exists', 'require(bool,string)']                                                              | []                                                                                               | 1                     |
| _checkOnERC721Received(address,address,uint256,bytes) | private    | []        | []          | []                                 | ['_msgSender', 'mload(uint256)']                                                                  | ['IERC721Receiver(to).onERC721Received(_msgSender(),from,tokenId,data)', 'to.isContract()']       | 3                     |
|                                                       |            |           |             |                                    | ['revert(string)', 'revert(uint256,uint256)']                                                    |                                                                                                  |                       |
| _beforeTokenTransfer(address,address,uint256)         | internal   | []        | []          | []                                 | []                                                                                                 | []                                                                                               | 1                     |
| _afterTokenTransfer(address,address,uint256)          | internal   | []        | []          | []                                 | []                                                                                                 | []                                                                                               | 1                     |



| Modifiers | Visibility | Read | Write | Internal Calls | External Calls | Cyclomatic Complexity |
|-----------|------------|------|-------|----------------|----------------|-----------------------|



## Contract ReentrancyGuard
+ Contract vars: ['_NOT_ENTERED', '_ENTERED', '_status']
+ Inheritance:: []
 

| Function                              | Visibility | Modifiers |             Read |                        Write | Internal Calls | External Calls | Cyclomatic Complexity |
|---------------------------------------|------------|-----------|------------------|------------------------------|----------------|----------------|-----------------------|
| constructor()                         |   internal |        [] | ['_NOT_ENTERED'] |                  ['_status'] |             [] |             [] |                     1 |
| slitherConstructorConstantVariables() |   internal |        [] |               [] | ['_ENTERED', '_NOT_ENTERED'] |             [] |             [] |                     1 |


| Modifiers      | Visibility |                         Read |       Write |           Internal Calls | External Calls | Cyclomatic Complexity |
|----------------|------------|------------------------------|-------------|--------------------------|----------------|-----------------------|
| nonReentrant() |   internal | ['_ENTERED', '_NOT_ENTERED'] | ['_status'] | ['require(bool,string)'] |             [] |                     1 |
|                |            |                  ['_status'] |             |                          |                |                       |


## Contract Counters
+ Contract vars: []
+ Inheritance:: []
 

| Function                    | Visibility | Modifiers | Read | Write |           Internal Calls | External Calls | Cyclomatic Complexity |
|-----------------------------|------------|-----------|------|-------|--------------------------|----------------|-----------------------|
| current(Counters.Counter)   |   internal |        [] |   [] |    [] |                       [] |             [] |                     1 |
| increment(Counters.Counter) |   internal |        [] |   [] |    [] |                       [] |             [] |                     1 |
| decrement(Counters.Counter) |   internal |        [] |   [] |    [] | ['require(bool,string)'] |             [] |                     1 |
| reset(Counters.Counter)     |   internal |        [] |   [] |    [] |                       [] |             [] |                     1 |


| Modifiers | Visibility | Read | Write | Internal Calls | External Calls | Cyclomatic Complexity |
|-----------|------------|------|-------|----------------|----------------|-----------------------|


## Contract BirdsofSpaceMarketPlaceV1
+ Contract vars: ['itemIds', '_itemsSold', 'itemId', 'idToMarketItem']
+ Inheritance:: ['OwnableUpgradeable', 'ContextUpgradeable', 'Initializable', 'ReentrancyGuard']
 

| Function                                  | Visibility |            Modifiers |                              Read |                        Write |                                   Internal Calls |                                   External Calls | Cyclomatic Complexity |
|-------------------------------------------|------------|----------------------|-----------------------------------|------------------------------|--------------------------------------------------|--------------------------------------------------|-----------------------|
| __Ownable_init()                          |   internal | ['onlyInitializing'] |                                [] |                           [] | ['__Ownable_init_unchained', 'onlyInitializing'] |                                               [] |                     1 |
| __Ownable_init_unchained()                |   internal | ['onlyInitializing'] |                                [] |                           [] |             ['_msgSender', '_transferOwnership'] |                                               [] |                     1 |
|                                           |            |                      |                                   |                              |                             ['onlyInitializing'] |                                               [] |                       |
| owner()                                   |     public |                   [] |                        ['_owner'] |                           [] |                                               [] |                                               [] |                     1 |
| _checkOwner()                             |   internal |                   [] |                                [] |                           [] |                          ['_msgSender', 'owner'] |                                               [] |                     1 |
|                                           |            |                      |                                   |                              |                         ['require(bool,string)'] |                                               [] |                       |
| renounceOwnership()                       |     public |        ['onlyOwner'] |                                [] |                           [] |              ['_transferOwnership', 'onlyOwner'] |                                               [] |                     1 |
| transferOwnership(address)                |     public |        ['onlyOwner'] |                                [] |                           [] |              ['_transferOwnership', 'onlyOwner'] |                                               [] |                     1 |
|                                           |            |                      |                                   |                              |                         ['require(bool,string)'] |                                               [] |                       |
| _transferOwnership(address)               |   internal |                   [] |                        ['_owner'] |                   ['_owner'] |                                               [] |                                               [] |                     1 |
| __Context_init()                          |   internal | ['onlyInitializing'] |                                [] |                           [] |                             ['onlyInitializing'] |                                               [] |                     1 |
| __Context_init_unchained()                |   internal | ['onlyInitializing'] |                                [] |                           [] |                             ['onlyInitializing'] |                                               [] |                     1 |
| _msgSender()                              |   internal |                   [] |                    ['msg.sender'] |                           [] |                                               [] |                                               [] |                     1 |
| _msgData()                                |   internal |                   [] |                      ['msg.data'] |                           [] |                                               [] |                                               [] |                     1 |
| _disableInitializers()                    |   internal |                   [] | ['_initialized', '_initializing'] |             ['_initialized'] |                         ['require(bool,string)'] |                                               [] |                     2 |
| constructor()                             |   internal |                   [] |                  ['_NOT_ENTERED'] |                  ['_status'] |                                               [] |                                               [] |                     1 |
| constructor()                             |     public |                   [] |                                [] |                           [] |                         ['_disableInitializers'] |                                               [] |                     1 |
| initialize()                              |     public |      ['initializer'] |                                [] |                           [] |                ['__Ownable_init', 'initializer'] |                                               [] |                     1 |
| createMarketItem(address,uint256,uint256) |     public |     ['nonReentrant'] |             ['itemId', 'itemIds'] | ['idToMarketItem', 'itemId'] |         ['nonReentrant', 'require(bool,string)'] | ['IERC721(nftContract).transferFrom(msg.sender,address(this),tokenId)', 'itemIds.increment()', 'itemIds.current()', 'new BirdsofSpaceMarketPlaceV1.MarketItem[](unsoldItemCount)'] |                     1 |
| createMarketSale(address,uint256)         |     public |     ['nonReentrant'] |  ['_itemsSold', 'idToMarketItem'] |           ['idToMarketItem'] |         ['nonReentrant', 'require(bool,string)'] | ['IERC721(nftContract).transferFrom(address(this),msg.sender,tokenId)', '_itemsSold.increment()', 'idToMarketItem[_itemId].seller.transfer(msg.value)'] |                     1 |
|                                           |            |                      |            ['msg.sender', 'this'] |                              |                                                  |                                               [] |                       |
| fetchMarketItems()                        |     public |                   [] |  ['_itemsSold', 'idToMarketItem'] |                           [] |                                               [] | ['_itemsSold.current()', 'itemIds.current()', 'itemIds.current()', 'new BirdsofSpaceMarketPlaceV1.MarketItem[](unsoldItemCount)'] |                     3 |
|                                           |            |                      |                       ['itemIds'] |                              |                                                  |                                               [] |                       |
| withdraw()                                |     public |        ['onlyOwner'] |                          ['this'] |                           [] |                ['balance(address)', 'onlyOwner'] | ['address(owner()).call{value: address(this).balance}()', 'owner', 'require(bool)'] |                     1 |



| Modifiers            | Visibility |                              Read |                             Write |           Internal Calls |                                   External Calls | Cyclomatic Complexity |
|----------------------|------------|-----------------------------------|-----------------------------------|--------------------------|--------------------------------------------------|-----------------------|
| onlyOwner()          |   internal |                                [] |                                [] |          ['_checkOwner'] |                                               [] |                 1     |
| initializer()        |   internal | ['_initialized', '_initializing'] | ['_initialized', '_initializing'] | ['require(bool,string)'] | ['AddressUpgradeable.isContract(address(this))'] |                 3     |
|                      |            |                          ['this'] |                                   |                          |                                                  |                       |
| reinitializer(uint8) |   internal | ['_initialized', '_initializing'] | ['_initialized', '_initializing'] | ['require(bool,string)'] |                                               [] |                 1     |
| onlyInitializing()   |   internal |                 ['_initializing'] |                                [] | ['require(bool,string)'] |                                               [] |                 1     |
| nonReentrant()       |   internal |      ['_ENTERED', '_NOT_ENTERED'] |                       ['_status'] | ['require(bool,string)'] |                                               [] |                 1     |
|                      |            |                       ['_status'] |                                   |                          |                                                  |                       |



---
title: "&nbsp;"
header-includes: |
  <style>
  @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap');

  *{
  font-family: 'Poppins', sans-serif;
  }

  h1, h2 {
      color: MidnightBlue;
  }
  img{
  width:70%;
    height:auto;
  }
  table {
      
      width: auto;
      max-width: 100%;
      border-collapse: collapse;
      font-size:  6px;
  }

  table, th, td {
      border: 1px solid DimGray;
  }

  th, td {
      text-align: left;
      padding: 0.5em; /* Mengurangi padding agar lebih kompak */
  }
  </style>
output: html_document
---