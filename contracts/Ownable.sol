pragma solidity ^0.6.0;

// creating inheritance. Allowing needed items to be used throughout the rest of the code

contract Ownable {
    address payable _owner;
    
    constructor() public {
        _owner = msg.sender;
    }
    
    // adding a modifier so you don't have to replicate the same code in multiple functions that need the same functionality
    modifier onlyOwner() {
        require(isOwner(), "You are not the owner");
        _;
    }

    function isOwner() public view returns(bool) {
        return (msg.sender == _owner);
    }
}