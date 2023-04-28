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
// OpenZeppelin Contracts v4.4.1 (utils/Context.sol)

pragma solidity ^0.8.0;

/**
 * @dev Provides information about the current execution context, including the
 * sender of the transaction and its data. While these are generally available
 * via msg.sender and msg.data, they should not be accessed in such a direct
 * manner, since when dealing with meta-transactions the account sending and
 * paying for execution may not be the actual sender (as far as an application
 * is concerned).
 *
 * This contract is only required for intermediate, library-like contracts.
 */
abstract contract Context {
    function _msgSender() internal view virtual returns (address) {
        return msg.sender;
    }

    function _msgData() internal view virtual returns (bytes calldata) {
        return msg.data;
    }
}
