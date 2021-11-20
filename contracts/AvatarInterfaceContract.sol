pragma solidity >=0.4.22 <0.6.0;

import '/contracts/AvatarInterface.sol';

contract AvatarInterfaceContract is AvatarInterface{
   constructor() public{
   }
   function getCaracteristiques() external view returns(int endurance, int force, int intelligence, int vitesse){
       return (0, 0, 0, 0);
   }
   function getType() external view returns(string memory){
       return "";
   }
   function getNom() external view returns(string memory){}
   function getDefensePhysique() external view returns(int){}
   
   function getVie() external view returns(int){
       int a=15555;
       return a;
   }
   
   function getDefenseMagique() external view returns(int){}
   function getEsquive() external view returns(int){}
   function getPuissancePhysique() external view returns(int){}
   function getPuissanceMagique() external view returns(int){}
   function modifierStrategieCombat(address strategie) external{}
}