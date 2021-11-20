pragma solidity >=0.4.22 <0.6.0;

import '../AvagetCaracteristiquesInterface.sol';

contract soinContract {
    
    function soin(address avatarAdr) pure external {
        AvatarInterface avatar = AvatarInterface(avatarAdr);
        int endurance; int force; int intelligence; int vitesse;
        (endurance, force, intelligence, vitesse) = avatar.getCaracteristiques();
        AvatarInterface.setVie(endurance);
    }
}
  