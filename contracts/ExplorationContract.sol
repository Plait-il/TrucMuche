pragma solidity >=0.4.22 <0.6.0;

import '../contracts/WorldInterface.sol';
import '../contracts/AvatarInterface.sol';

contract ExplorationContract {
    
    function explore() external {
        
        WorldInterface mondeAdr = WorldInterface(0x02E37C7CB5F13A7216bD1B6FE6A8f3Ff95665109);
        address jean_abdelkrouz = address(0xDE802B994027b0C50e7284872ed33aE07aAfEc14);
        uint16 lieu1 = 1;
        uint16 code = 0;
        
        // fonction du monde permettant d'envoyer un avatar dans un lieu
        // function explorer(uint16 lieu, address avatar, uint64 codeAcces) external payable returns (uint64);
        
        mondeAdr.explorer(lieu1, jean_abdelkrouz, code);
    }
    
    function getCoutLieu() external view returns(uint cout) {
        WorldInterface mondeAdr = WorldInterface(0x02E37C7CB5F13A7216bD1B6FE6A8f3Ff95665109);
        uint16 lieu1 = 1;
        return mondeAdr.getCoutLieu(lieu1);
    }
    
}