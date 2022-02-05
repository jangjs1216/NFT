// SPDX-License-Identifier: SRA
pragma solidity >=0.4.22 <0.9.0;
pragma experimental ABIEncoderV2;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract SRA is Ownable, ERC721 {
    struct Skin {
        string skinName;
        string skinUrl;
    }

    Skin[] public skins;

    mapping(uint256 => Skin) id_to_date;

    mapping(uint => address) public skinToOwner;
    mapping(address => uint) ownerSkinCount;

    string private _currentBaseURI;

    constructor() public ERC721("SRA", "SRA") {
        setBaseURI("https://date.kie.codes/token/");
    }

    function _createSkin(string memory _skinname, string memory _skinurl) public {
        skins.push(Skin(_skinname, _skinurl));
        uint id = skins.length - 1;
        skinToOwner[id] = msg.sender;
        ownerSkinCount[msg.sender]++;
        mint(_skinname, _skinurl);
    }

    function setBaseURI(string memory baseURI) public onlyOwner {
        _currentBaseURI = baseURI;
    }

    function _baseURI() internal view virtual returns (string memory) {
        return _currentBaseURI;
    }

    function stringConcat(string memory s1, string memory s2) public pure returns(string memory){
       return string(abi.encodePacked(s1, s2));
    }

    function mint(string memory skinName, string memory skinUrl) internal {
        string memory prefixUrl = "ipfs://";
        skinUrl = stringConcat(prefixUrl, skinUrl);

        uint256 tokenId = uint256(keccak256(abi.encodePacked(skinUrl)));
        
        id_to_date[tokenId] = Skin(skinName, skinUrl);
        _safeMint(msg.sender, tokenId);
    }

    function claim(uint16 year, uint8 month, uint8 day, string calldata title) external payable {

    }

    function ownerOf(string memory skinUrl) public view returns(string memory) {
        string memory prefixUrl = "ipfs://";
        skinUrl = stringConcat(prefixUrl, skinUrl);

        uint256 tokenId = uint256(keccak256(abi.encodePacked(skinUrl)));

        return id_to_date[tokenId].skinName;
    }

    function getSkinsByOwner() external view returns(string[] memory) {
        address _owner = msg.sender;

        string[] memory result = new string[](ownerSkinCount[_owner]);
        uint counter = 0;
        for (uint i = 0; i < skins.length; i++) {
            if (skinToOwner[i] == _owner) {
                result[counter++] = skins[i].skinName;
            }
        }
        return result;
    }

    function getSkinsNumberByOwner() external view returns(uint) {
        address _owner = msg.sender;
        return uint(ownerSkinCount[_owner]);
    }
}