// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.8.0;

import "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";


contract UnderlyingToken is ERC20 {
    constructor() ERC20('Creative Token', 'CRTV') {}

  function faucet(address to, uint amount) external {
    _mint(to, amount);
  }
}