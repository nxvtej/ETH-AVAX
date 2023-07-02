// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract errHand
{

 function enterEvenviaRequire(uint256 _number) public pure returns(string memory) {
    require((_number%2==0),"number is not divisible by two  (error handled by require)");
    return("entered number is even");
}



 function enterEvenviaRevert(uint256 _number) public pure returns(string memory) {
    if(_number%2 !=0 )
    revert("entered number is odd  (error handled by revert)");
    return("entered number is even");
}

 function enterEvenviaAssert(uint256 _number) public pure returns(string memory){

        assert(_number > 0);
        return("return statement executed means assert condition is true");
}}
