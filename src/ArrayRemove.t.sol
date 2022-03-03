// SPDX-License-Identifier: unlicenced
pragma solidity ^0.8.6;

import "./ArrayRemove.sol";
import "../lib/ds-test/src/test.sol";

contract TestArray is  ArrayRemove ,DSTest {


    uint[] private copy;

    function test_remove(uint[] memory _arr, uint _i) public {
        if(_i >= arr.length){
            return;
        }
        arr = _arr;

        delete copy;

        for(uint i = 0; i < arr.length; i++){
            if(i!=_i){
                copy.push();
            }
        }

        poppingElements(_i);
        assertEq(arr.length, copy.length);

        for(uint i = 0; i< arr.length; i++) {
            assertEq(arr[i], copy[i]);
        }

    }
}