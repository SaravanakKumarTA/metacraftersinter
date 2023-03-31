// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract Context{


    function miner() public view returns(address){
        return block.coinbase;
    }
    function sender() public view returns(address){
        return msg.sender;
    }
    function remain() public view returns(uint){
        return gasleft();
    }

    function origin() public view returns(address){
        return tx.origin;
    }
}   
