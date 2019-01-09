pragma solidity ^0.4.0;
    
// A simple smart contract
contract HelloWorld {
    string public message;

    function setMessage(string newMessage) public {
        message = newMessage;
    }
    
    function remove() public {
        selfdestruct(0x0);
    }
}