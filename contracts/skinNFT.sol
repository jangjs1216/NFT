// SPDX-License-Identifier: SRA
pragma solidity >=0.4.22 <0.9.0;
pragma experimental ABIEncoderV2;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/math/SafeMath.sol";

contract skinNFT is Ownable, ERC721{
    using SafeMath for uint256;

    struct Skin{
        string skinName;
        string skinUrl;
    }

    Skin[] private skins;

    mapping(uint256 => address) internal tokenIdToOwner;
    mapping(address => uint) internal ownerToCount;

    mapping(uint => address) internal skinApprovals;

    //constructor 선언
    constructor() public ERC721("SKIN", "SKIN") {
    }

    // modifier 선언
    modifier onlyOwnerOf(uint256 _tokenid){
        require(msg.sender == tokenIdToOwner[_tokenid]);
        _;
    }

    // 1. 스킨 발급 ( Minting )
    function createSkin(string memory _skinname, string memory _skinurl) public
    {
        _createSkin(_skinname, _skinurl);
    }

    function _createSkin(string memory _skinname, string memory _skinurl) internal
    {
        skins.push(Skin(_skinname, _skinurl));
        uint id = skins.length - 1;
        uint256 tokenId = uint256(keccak256(abi.encodePacked(_skinurl)));

        tokenIdToOwner[tokenId] = msg.sender;
        ownerToCount[msg.sender]++;
        _mint(tokenId); 
    }

    function _mint(uint256 _tokenid) internal{
        _safeMint(msg.sender, _tokenid);
    }

    // 2. 스킨 교환하기 ( transfer )
    function balanceOf(address owner) public override view returns (uint256){
        require(owner != address(0), "ERC721: balance query for the zero address");

        return ownerToCount[owner];
    }

    function approve(address to, uint256 tokenId) public override {
        address owner = ownerOf(tokenId);
        require(to != owner, "ERC721: approval to current owner");

        require(msg.sender == owner || isApprovedForAll(owner, msg.sender),
            "ERC721: approve caller is not owner nor approved for all"
        );

        skinApprovals[tokenId] = to;
        emit Approval(owner, to, tokenId);
    }

    function _transfer(address _from, address _to, uint256 _tokenId) internal override {
        ownerToCount[_to] = ownerToCount[_to].add(1);
        ownerToCount[msg.sender] = ownerToCount[msg.sender].sub(1);
        tokenIdToOwner[_tokenId] = _to;
        Transfer(_from, _to, _tokenId);
    }

    function transfer(address _to, uint256 _tokenId) public onlyOwnerOf(_tokenId) {
        _transfer(msg.sender, _to, _tokenId);
    }


   // 3. 갖고 있는 스킨 보기
   function ownerOf(uint256 tokenId) public override view returns (address){
       return tokenIdToOwner[tokenId];
   }

   function getSkinsByOwner() public view returns (string[] memory){
       address _owner = msg.sender;

       string[] memory urls = new string[](ownerToCount[_owner]);
        uint counter = 0;
        for (uint i = 0; i < skins.length; i++) {
            uint256 tokenId = uint256(keccak256(abi.encodePacked(skins[i].skinUrl)));
            if (tokenIdToOwner[tokenId] == _owner) {
                urls[counter++] = skins[i].skinUrl;
            }
        }
        return urls;
   }

   function getSkinsByOwnerParam(address _owner) public view returns (string[] memory){
       string[] memory urls = new string[](ownerToCount[_owner]);
        uint counter = 0;
        for (uint i = 0; i < skins.length; i++) {
            uint256 tokenId = uint256(keccak256(abi.encodePacked(skins[i].skinUrl)));
            if (tokenIdToOwner[tokenId] == _owner) {
                urls[counter++] = skins[i].skinUrl;
            }
        }
        return urls;
   }

   function getTokenIdByOwner() public view returns (uint256[] memory){
       address _owner = msg.sender;

       uint256[] memory urls = new uint256[](ownerToCount[_owner]);
        uint counter = 0;
        for (uint i = 0; i < skins.length; i++) {
            uint256 tokenId = uint256(keccak256(abi.encodePacked(skins[i].skinUrl)));
            if (tokenIdToOwner[tokenId] == _owner) {
                urls[counter++] = tokenId;
            }
        }
        return urls;
   }
}