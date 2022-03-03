// SPDX-License-Identifier: unlicensed
pragma solidity ^0.8.6;

contract ArrayRemove {
    
    uint[] internal arr;
    function poppingElements(uint _index) public {
        require(_index <= arr.length,"Enter lower value");
        for(uint i= _index; i < arr.length -1; i++){
            arr[i] = arr[i+1];
        }
        arr.pop();
    }
}