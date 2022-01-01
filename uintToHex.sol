// SPDX-License-Identifier: MIT
pragma solidity 0.8.11;

contract Test {

// Implementation of eth_utils.encode_hex (python) in solidity. Only Numbers.

    function _uintToArray(uint number,uint length) private pure returns (uint[] memory array){
        // INVERSE
        array=new uint[](length);
        for (uint i=0;i<=length-1;i++){
            array[i]=number % 10;
            number/=10;
        }

        return array;
    }
    function lenUint(uint _i) private pure returns (uint len) {
        while (_i != 0) {
            len++;
            _i /= 10;
        }
    }

    function uintToHex(uint number) private pure returns(bytes memory res) {
    uint length=lenUint(number);
    uint[] memory data = _uintToArray(number,length);
    res = new bytes(data.length);
    bytes memory alphabet = "0123456789abcdef";
    uint x=0;
    for (uint i = length; i >= 1; i--) {
        res[x] = alphabet[ data[i-1] ];
        x++;
    }
}


}
