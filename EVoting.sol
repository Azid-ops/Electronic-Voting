pragma solidity ^0.4.24;
contract EVoting
{
    uint index1;
    address owner;
    uint index2;
    uint increment = 0;
    
    enum Winner{Winning,Losing}
    
    struct Electors1
    {
        uint id;
        string name;
        string party;
        uint vote;
    }
    
    struct Electors2
    {
        uint id;
        string name;
        string party;
        uint vote;
    }
    
    mapping(uint=>Electors1)elections1;
    
    mapping(uint=>Electors2)elections2;
    
    event added(uint index1);
    
    event added1(uint index1);
    
    constructor() public payable
    {
        index1=0;
        index2=0;
        owner = msg.sender;
    }
    modifier onlyOwner()
    {
        require(owner == msg.sender);
        _;
    }
    
    function addElectors1(string _name, string _party) onlyOwner public
    {
        index1 = index1 + 1;
        emit added(index1);
        elections1[index1] = Electors1({id:index1,name:_name,party:_party,vote:0});
    }
    
    function addElectors2(string _name, string _party) onlyOwner public
    {
        index2 = index2 + 1;
        emit added1(index2);
        elections2[index2] = Electors2({id:index1,name:_name,party:_party,vote:0});
    }
    
    function Azid_Status() public view returns(uint _id,string _name,string _party,uint _vote)
    {
        _id = elections1[1].id;
        _name = elections1[1].name;
        _party = elections1[1].party;
        _vote = elections1[1].vote;
    }
    
    function Mahad_Status() public view returns(uint _id,string _name,string _party,uint _vote)
    {
        _id = elections2[1].id;
        _name = elections2[1].name;
        _party = elections2[1].party;
        _vote = elections2[1].vote;
    }
    
    function Vote_Azid() public
    {
        elections1[1].vote = elections1[1].vote + 1;
    }
    
    function Vote_Mahad() public
    {
        elections2[1].vote = elections2[1].vote + 1;
    }
    
    function finalStatus() public view returns (string result)
    {
        if(elections1[1].vote > elections2[1].vote)
        {
            result= "Azid Won";
        }
        
        if(elections2[1].vote > elections1[1].vote)
        {
            result= "Mahad Won";
        }
        
        if(elections1[1].vote == elections2[1].vote)
        {
            result= "Both has equal votes";
        }
    }
}
