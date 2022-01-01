// SPDX-License-Identifier: MIT
pragma solidity 0.8.11;

contract Test {

// Implementation of eth_utils.decode_hex (python) in solidity. Only Numbers.

    function hexToUint(bytes memory data) private pure returns(uint number){
    
        for (uint i = 0; i < data.length; i++) 
          {
            number += (uint256(uint8(data[i])) & 15 ) * 10 **(data.length-i-1);
          }

     }
}
