// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import '@openzeppelin/contracts/token/ERC20/ERC20.sol';

contract STREAMLIVR is ERC20 {
    constructor(uint256 initialSupply) ERC20("STREAMLIVR", "STVR"){
        _mint(msg.sender, initialSupply * (10 ** decimals()));
    }

    //tiping the content creator streamlivr token 

address contentCreator;
address contentConsumer;

function tip( address _contentCreator, uint _amount) public{
    contentCreator = _contentCreator;
    contentConsumer = _msgSender();
    _transfer(contentConsumer, contentCreator, _amount);
}

//Aurora contract address: 0x6Af750328f31c019AFC091e7B23A209a29dA756F
}
