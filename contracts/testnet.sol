// SPDX-License-Identifier: SRA
pragma solidity >=0.4.22 <0.9.0;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract SRA is Ownable, ERC721 {

    struct Metadata {
        string skinName;
        string skinUrl;
    }

    mapping(uint256 => Metadata) id_to_date;

    string private _currentBaseURI;

    constructor() public ERC721("SRA", "SRA") {
        setBaseURI("https://date.kie.codes/token/");

        string memory url = "QmdLq13hJJG8nPjSmRnrGEWDNJhA5bjRtP1VwXixztaABB";
        mint("kyungmoo", url);
    }

    function setBaseURI(string memory baseURI) public onlyOwner {
        _currentBaseURI = baseURI;
    }

    function _baseURI() internal view virtual returns (string memory) {
        return _currentBaseURI;
    }

    function mint(string memory skinName, string memory skinUrl) internal {
        string memory prefixUrl = "ipfs://";
        skinUrl = abi.encodePacked(prefixUrl, skinUrl);

        uint256 tokenId = uint256(keccak256(skinUrl));
        
        id_to_date[tokenId] = Metadata(skinName, skinUrl);
        _safeMint(msg.sender, skinUrl);
    }

    function claim(uint16 year, uint8 month, uint8 day, string calldata title) external payable {

    }

    function ownerOf(uint16 year, uint8 month, uint8 day) public view returns(address) {

    }

    function id(uint16 year, uint8 month, uint8 day) pure internal returns(uint256) {

    }

    function get(uint256 tokenId) external view returns (uint16 year, uint8 month, uint8 day, uint8 color, string memory title) {

    }

    function titleOf(uint256 tokenId) external view returns (string memory) {

    }

    function titleOf(uint16 year, uint8 month, uint8 day) external view returns (string memory) {

    }

    function changeTitleOf(uint16 year, uint8 month, uint8 day, string memory title) external {

    }

    function changeTitleOf(uint256 tokenId, string memory title) public {

    }

    function timestampToDate(uint timestamp) public pure returns (uint16 year, uint8 month, uint8 day) {

    }

    function pseudoRNG(uint16 year, uint8 month, uint8 day, string memory title) internal view returns (uint256) {

    }
}