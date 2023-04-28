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

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (token/ERC20/extensions/IERC20Metadata.sol)

pragma solidity ^0.8.0;

import "./IERC20.sol";

/**
 * @dev Interface for the optional metadata functions from the ERC20 standard.
 *
 * _Available since v4.1._
 */
interface IERC20Metadata is IERC20 {
    /**
     * @dev Returns the name of the token.
     */
    function name() external view returns (string memory);

    /**
     * @dev Returns the symbol of the token.
     */
    function symbol() external view returns (string memory);

    /**
     * @dev Returns the decimals places of the token.
     */
    function decimals() external view returns (uint8);
}
