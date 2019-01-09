pragma solidity ^0.4.0;
pragma experimental ABIEncoderV2;

contract Voter {
    
    struct OptionPos {
        uint pos;
        bool exists;
    }
    uint[] public votes;
    string[] public options;
    mapping (address => bool) hasVoted;
    mapping (string => OptionPos) posOfOption;
    
    constructor(string[] _options){
        options = _options;
        votes.length = options.length;
        
        for(uint i = 0; i < options.length; i++){
            posOfOption[options[i]] = OptionPos(i, true);
        }
    }
    
    function vote(uint option) public {
        require(0 <= option && option < options.length, "Invalid option!");
        require(!hasVoted[msg.sender], "Already voted!");
        
        votes[option] = votes[option] +  1;
        hasVoted[msg.sender] = true;
    }
    
    function vote(string optionName) public {
        require(!hasVoted[msg.sender], "Already voted!");
        OptionPos memory optionPos = posOfOption[optionName];
        require(optionPos.exists, "Invalid option!");
        votes[optionPos.pos] = votes[optionPos.pos] +  1;
        hasVoted[msg.sender] = true;
    }
        
    
    function getVotes() public view returns (uint[]){
        return votes;
    }
    
    function getOptions() public view returns (string[]){
        return options;
    }
    
}