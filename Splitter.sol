// SPDX-License-Identifier: MIT

pragma solidity ^0.8.2;

contract PaymentSplitter {
    address payable[] public recipients;
    event transfercomplete(address _from, uint _amt);

    constructor(address payable[] memory _recipients){
        for (uint i = 0; i < _recipients.length; ++i) 
        {
            recipients.push(_recipients[i]);
        }

    }

    receive() external payable { 
        uint split = msg.value/recipients.length; 
        for (uint i = 0; i < recipients.length; ++i) {
            recipients[i].transfer(split);
        }
            
        emit transfercomplete(msg.sender, msg.value);
    }
}