// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

interface Bucket {
    function drop(address erc20, uint256 amount) external;
}

contract EmitWinner {

    constructor() payable {} 

    address hoetokenAddress = 0xA56AfB65Df413F36f9c753c2e8E56249a44AB812;
    address bucketAddress = 0x873289a1aD6Cf024B927bd13bd183B264d274c68;
    ERC20 erc20 = ERC20(hoetokenAddress);


    function drop(address tokenOwner, uint256 _amount) external {
        // Get tokens from owner
        bool success = erc20.transferFrom(tokenOwner, address(this), _amount);
        require(success, "Transaction Failed");

        // Approve Bucket to spend these tokens
        erc20.approve(bucketAddress, _amount);

        // We are ready to call drop (notice the arguments here)
        Bucket(bucketAddress).drop(hoetokenAddress, _amount);
    }

    receive() external payable {}
}
    
    

