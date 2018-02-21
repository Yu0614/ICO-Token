pragma solidity ^0.4.18;
import "zeppelin-solidity/contracts/token/ERC20/StandardToken.sol";


contract Archimedes is StandardToken {
    
    string public name = "Archimedes";
    string public symbol = "ARC";
    uint public decimals = 18;//decimals = 3, 1000 symbols to see 1.00 in Mist , if you have 1symbols you'll see 0.001
    uint public maxSup;
    uint public totalSup;
    address public owner;
    mapping (address=>string) public thanksMessage;

    event MessageLog(string);

    modifier onlyOwner() {
        require(owner == msg.sender);
        _;
    }

    /*************************************
    *     // function Archimedes
    *************************************/ 
    function Archimedes(uint initialSupply, uint maxSupply) public {// constructor
        owner = msg.sender;
        maxSup = maxSupply;
        totalSup = initialSupply;
        balances[owner] = initialSupply; // （オーナー）すべてのトークンを渡す
    } 

    /*************************************
    *       // function addTotalSupply
    *************************************/ 
    function addTotalSupply(uint256 _value) public onlyOwner {
        //require(owner == msg.sender);
        require(maxSup >= (totalSup + _value));

        totalSup += _value;
        balances[msg.sender] += _value;
    }
    
    /**********************************************************************
    *   // function thanks  ありがとうメッセージを送る(set)と、100ARCも一緒に送られる(transfer)
    ***********************************************************************/ 
    function thanks(address _to, string _message) public {
        thanksMessage[_to] = _message;
        transfer(_to, 100e18);
       
    }
    
    /*************************************
    *   //  function thanksMessage 最新ありがとうメッセージを見る
    *************************************/ 
    function thanksMessage(address _address) public constant returns (string) {
        return thanksMessage[_address];
    }

    /************************************************************
    *   // function kill  to destruct this contract             
    ************************************************************/ 
    function kill() public onlyOwner {
        selfdestruct(owner);
    }



}


