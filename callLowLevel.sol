contract Caller {
    function callLowLevel(address addressToCall,bytes calldata callData,uint256 valueToCall, bytes memory callCompare, bool compareResult) public payable returns(bytes memory){
        (bool success, bytes memory data) = addressToCall.call{value: valueToCall}(callData);
        require(success && 
                          ( !compareResult || keccak256(abi.encodePacked(callCompare)) == keccak256(abi.encodePacked(data)) )
               );
        return(data);
    }
}
