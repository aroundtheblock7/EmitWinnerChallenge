# Emit Winner Challenge 
-This challenge from the Alchemy Univeristy bootcamp involves creating a new contract (EmitWinner) that interacts with my previously deployed ERC20 token (HoeToken) to ultimately send the ERC20 HoeTokens to the BucketAddess by calling the drop function on it. Note all the HoeTokens were minted to the deployer address upon deployment, they are not held in the HoeToken contract. 

-Here we have HoeToken deployed on Goerli.....
https://goerli.etherscan.io/address/0xA56AfB65Df413F36f9c753c2e8E56249a44AB812#code

-Here is the Bucket Address where tokens need to be transfered...
https://goerli.etherscan.io/address/0x873289a1aD6Cf024B927bd13bd183B264d274c68#code

-Winning this challenge involved creating and deploying the EmitWinner contract via the deploy the scripts. Next in the deploy scripts I use ethers to get an instance of the HoeToken contract by importing the abi from the contract along with the contract address (ethers is used as the provider). I also get the deployer's HoeToken balance. Next I get access to the signer by with new ethers.Wallet passing in the private key and provider. Next i connect the signer to the hoetokenInstance and call approve on the EmitWinner contract which approves the contract to spend HoeTokens. Finally i call the drop function in the EmitWinner contract which was designed to approve the Bucket Address, use transferFrom to transfer the tokens, and ultimately call the drop function on the BucketAddress passing in the hoetoken address. Note although i am passing in the hoetoken address it is transfering the signer's HoeTokens at the HoeToken address. 

-See photo below for confirmations on deployment, transaction confirmations, balance adjustments and completion of the challenge. 



