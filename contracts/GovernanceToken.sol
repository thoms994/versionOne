// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.8.0;

import "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";


contract CreativeToken is ERC20, Ownable {
    constructor() ERC20 ('Creative Token', 'CRTV') Ownable() {}
    
    function mint(address to, uint amount) external onlyOwner() {
        _mint(to, amount);
        }
}