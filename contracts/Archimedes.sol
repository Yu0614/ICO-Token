pragma solidity ^0.4.18;
import "zeppelin-solidity/contracts/token/ERC20/StandardToken.sol";


contract Archimedes is StandardToken {
  
    string public name = "Archimedes";
    string public symbol = "ARC";
    uint public decimals = 18;
    //decimals = 3, 1000 symbols to see 1.00 in Mist or Ethereum Wallet, if you have only 1symbols you will see 0.001.
  
    // constructor
    function Archimedes(uint initialSupply) public { 
        totalSupply_ = initialSupply;
        balances[msg.sender] = initialSupply;

    }
}
