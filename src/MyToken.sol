// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
import {ERC20} from "../lib/openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";
import {Ownable} from "../lib/openzeppelin-contracts/contracts/access/Ownable.sol";

contract MyToken is ERC20, Ownable {

    uint256 public INITIAL_SUPPLY = 154000000 * 10 ** 16;

    constructor(address _owner) ERC20("ACHE", "ACHE") Ownable(_owner) {
        _mint(_owner, INITIAL_SUPPLY);
    }

    function mint (address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function decimals() public pure override returns (uint8) {
        return 16;
    }
}