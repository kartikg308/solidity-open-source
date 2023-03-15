// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Wallet {
    address owner;
    uint balance;

    function getBalance(address person) public view returns(uint) {
        return person.balance;
    }

    function sendBalance(address reciever) public pure {
        payable(reciever).call{value: 1 ether};
    }

    function recieveBalance(uint amount) public view {
        payable(owner).call{value: amount};
    } 

    function getMyBalance() public view returns(uint) {
        return owner.balance;
    }
}