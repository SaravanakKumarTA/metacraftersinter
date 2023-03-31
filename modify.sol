//SPDX-License-Identifier:MIT

pragma solidity 0.8;


contract greatestNum{
    
    uint a;
    uint b;
    uint c;
    uint d;

    address owner;

    constructor(){
        owner = msg.sender;
    }

    modifier isOwner{
        require(owner==msg.sender,"Be the owner to access");
        _;
    }

    function set(uint _a,uint _b,uint _c,uint _d) public isOwner{
        a=_a;
        b=_b;
        c=_c;
        d=_d;
    }
    function get() public view isOwner returns(uint){
        if(a>b&&a>c&&a>d){
            return a;
        }
        if(b>a&&b>c&&b>d){
            return b;
        }
        if(c>a&&c>b&&c>d){
            return c;
        }
        
        return d;
    }


}
