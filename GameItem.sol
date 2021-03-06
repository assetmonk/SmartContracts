pragma solidity ^0.5.0;
import "@openzeppelin/contracts/token/ERC721/ERC721Full.sol";
import "@openzeppelin/contracts/drafts/Counters.sol";
contract GameItem is ERC721Full {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;
    constructor() ERC721Full("Assetmonk", "ATM") public {
    }
    function sendToken(address player, string memory tokenURI) public returns (uint256){
        _tokenIds.increment();
        uint256 newItemId = _tokenIds.current();
        _mint(player, newItemId);
        _setTokenURI(newItemId, tokenURI);
        return newItemId;
    }
}
