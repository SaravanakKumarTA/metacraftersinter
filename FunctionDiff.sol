// SPDX-License-Identifier: MIT
   // compiler version must be greater than or equal to 0.8.17 and less than 0.9.0
   pragma solidity ^0.8.17;
   
   contract FunctionDiff {
       address owner;
       constructor(){
        owner = msg.sender;
       }
       modifier isOwner{
        require(owner==msg.sender,"Only owner can access this method");
        _;
       }
       function viewer() public view returns(address){
            return owner;
       }
       function purer(uint x,uint y) public pure returns(uint) {
        return x+y;
       }
       function pay() public payable{

       }
   } 