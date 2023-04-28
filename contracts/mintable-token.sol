/*

   ___        ____     __     __  _             
  / _ \__ __ / __/__  / /_ __/ /_(_)__  ___  ___
 / // /\ \ /_\ \/ _ \/ / // / __/ / _ \/ _ \(_-<
/____//_\_\/___/\___/_/\_,_/\__/_/\___/_//_/___/
                                                

If you're creating your own project, 
I hope this contract will be a source of support for you! 
Change the values as needed and implement them! May your project become the next Bitcoin. 
Good luck, DX SOLUTIONS. partnership@ddx-solutuions.com
*/

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.10;

import "./dependencies/ERC20.sol";
import "./dependencies/Ownable.sol";

/**
 * @title Mintable Token
 * @author Breakthrough Labs Inc.
 * @notice Token, ERC20, Mintable
 * @custom:version 1.0.7
 * @custom:address 5
 * @custom:default-precision 18
 * @custom:simple-description Token that allows the owner to mint as many tokens as desired.
 * @dev ERC20 token with the following features:
 *
 *  - Premint your initial supply.
 *  - Mint as many tokens as you want with no cap.
 *  - Only the contract owner can mint new tokens.
 *
 */

contract MintableToken is ERC20, Ownable {
    /**
     * @param name Token Name
     * @param symbol Token Symbol
     * @param initialSupply Initial Supply
     */
    constructor(
        string memory name,
        string memory symbol,
        uint256 initialSupply
    ) payable ERC20(name, symbol) {
        _mint(msg.sender, initialSupply);
    }

    /**
     * @dev Creates `amount` tokens and assigns them to `to`, increasing
     * the total supply. Only accessible by the contract owner.
     */
    function mint(uint256 amount, address to) external onlyOwner {
        _mint(to, amount);
    }
}

