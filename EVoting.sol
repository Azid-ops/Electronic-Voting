pragma solidity 0.5.16;
contract EVoting
{
    address owner;
    string cityName;
    string _area;
    uint index;
    uint _votes;
    constructor(string memory _name,string memory _newarea) public
    {
        owner = msg.sender;
        cityName = _name;
        index = 0;
        _area = _newarea;
        PK36[1] = Abbottabad({
            name:"Azid",
            area:_newarea,
            party:"PTI",
            votes:_votes
        });
        
        PK36[2] = Abbottabad({
            name:"Mahad",
            area:_newarea,
            party:"PML-N",
            votes:_votes
        });
        
        PK37[1] = Abbottabad({
            name:"Manzar",
            area:_newarea,
            party:"PTI",
            votes:_votes
        });
        
        PK37[2] = Abbottabad({
            name:"Abdullah",
            area:_newarea,
            party:"PML-N",
            votes:_votes
        });
        
        PK38[1] = Abbottabad({
            name:"Ahmad",
            area:_newarea,
            party:"PTI",
            votes:_votes
        });
        
        PK38[2] = Abbottabad({
            name:"Hadi",
            area:_newarea,
            party:"PML-N",
            votes:_votes
        });
        
        PK39[1] = Abbottabad({
            name:"Aliyan",
            area:_newarea,
            party:"PTI",
            votes:_votes
        });
        
        PK39[2] = Abbottabad({
            name:"Momi",
            area:_newarea,
            party:"PML-N",
            votes:_votes
        });
    }
    
    struct Abbottabad
    {
        string name;
        string area;
        string party;
        uint votes;
    }
    
    mapping(uint=>Abbottabad) PK36;
    
    mapping(uint=>Abbottabad) PK37;
    
    mapping(uint=>Abbottabad) PK38;
    
    mapping(uint=>Abbottabad) PK39;
    
    modifier onlyOwner()
    {
        require(owner == msg.sender);
        _;
    }
    
    modifier Pk36()
    {
        require(keccak256(abi.encodePacked((_area))) == keccak256(abi.encodePacked(("PK-36"))));
        _;
    }
    
    modifier Pk37()
    {
        require(keccak256(abi.encodePacked((_area))) == keccak256(abi.encodePacked(("PK-37"))));
        _;
    }
    
    modifier Pk38()
    {
        require(keccak256(abi.encodePacked((_area))) == keccak256(abi.encodePacked(("PK-38"))));
        _;
    }
    
    modifier Pk39()
    {
        require(keccak256(abi.encodePacked((_area))) == keccak256(abi.encodePacked(("PK-39"))));
        _;
    }
    
    modifier cityAtd()
    {
        require(keccak256(abi.encodePacked((cityName))) == keccak256(abi.encodePacked(("Abbottabad"))));
        _;
    }
    
    function PK36Candidates() onlyOwner Pk36 cityAtd public view returns(
    string memory _name1,
    string memory _myarea1,
    string memory _party1,
    uint _vote1,
    string memory _name2,
    string memory _myarea2,
    string memory _party2
    ,uint _vote2)
    {
        _name1 = PK36[1].name;
        _myarea1 = PK36[1].area;
        _party1 = PK36[1].party;
        _vote1 = PK36[1].votes;
        
        _name2 = PK36[2].name;
        _myarea2 = PK36[1].area;
        _party2 = PK36[2].party;
        _vote2 = PK36[2].votes;
    }
    
    
    function PK37Candidates() onlyOwner Pk37 cityAtd public view returns(
    string memory _name1,
    string memory _myarea1,
    string memory _party1,
    uint _vote1,
    string memory _name2,
    string memory _myarea2,
    string memory _party2
    ,uint _vote2)
    {
        _name1 = PK37[1].name;
        _myarea1 = PK37[1].area;
        _party1 = PK37[1].party;
        _vote1 = PK37[1].votes;
        
        _name2 = PK37[2].name;
        _myarea2 = PK37[1].area;
        _party2 = PK37[2].party;
        _vote2 = PK37[2].votes;
    }
    
    function PK38Candidates() onlyOwner Pk38 cityAtd public view returns(
    string memory _name1,
    string memory _myarea1,
    string memory _party1,
    uint _vote1,
    string memory _name2,
    string memory _myarea2,
    string memory _party2
    ,uint _vote2)
    {
        _name1 = PK38[1].name;
        _myarea1 = PK38[1].area;
        _party1 = PK38[1].party;
        _vote1 = PK38[1].votes;
        
        _name2 = PK38[2].name;
        _myarea2 = PK38[1].area;
        _party2 = PK38[2].party;
        _vote2 = PK38[2].votes;
    }
    
    function PK39Candidates() onlyOwner Pk39 cityAtd public view returns(
    string memory _name1,
    string memory _myarea1,
    string memory _party1,
    uint _vote1,
    string memory _name2,
    string memory _myarea2,
    string memory _party2
    ,uint _vote2)
    {
        _name1 = PK39[1].name;
        _myarea1 = PK39[1].area;
        _party1 = PK39[1].party;
        _vote1 = PK39[1].votes;
        
        _name2 = PK39[2].name;
        _myarea2 = PK39[2].area;
        _party2 = PK39[2].party;
        _vote2 = PK39[2].votes;
    }
    
    function voteAzid() Pk36 cityAtd public
    {
        PK36[1].votes = PK36[1].votes+1;
    }
    
    function voteMahad() Pk36 cityAtd public
    {
        PK36[2].votes = PK36[2].votes+1;
    }
    
    function voteManzar() Pk37 cityAtd public
    {
        PK37[1].votes = PK37[1].votes+1;
    }
    
    function voteAbdullah() Pk37 cityAtd public
    {
        PK37[2].votes = PK37[2].votes+1;
    }
    
    function voteAhmad() Pk38 cityAtd public
    {
        PK38[1].votes = PK38[1].votes+1;
    }
    
    function voteHadi() Pk38 cityAtd public
    {
        PK38[2].votes = PK38[2].votes+1;
    }
    
    function voteAliyan() Pk39 cityAtd public
    {
        PK39[1].votes = PK39[1].votes+1;
    }
    
    function voteMomi() Pk39 cityAtd public
    {
        PK39[2].votes = PK39[2].votes+1;
    }
}
