pragma solidity ^0.4.18;
import "zeppelin-solidity/contracts/token/ERC20/StandardToken.sol";


contract Archimedes is StandardToken {
  
    string public name = "Archimedes";
    string public symbol = "ARC";
    uint public decimals = 18;
  
    // constructor
    function Archimedes(uint initialSupply) public { 
        totalSupply_ = initialSupply;
        balances[msg.sender] = initialSupply;

    }
}
