pragma solidity >=0.4.22 <0.6.0;

import './ActionStrategy.sol';

contract ActionStrategyContract is ActionStrategy {
    
    function chooseNextAction(Action previousAdvAction, address avatar, int damages, address avatarAdv, int damagesAdv) external view returns(Action action){
        Action pAA= previousAdvAction;
        address av = avatar;
        address avAdv = avatarAdv;
        int dmg = damages;
        int dmgAdv = damagesAdv;
        
        Action result=Action.PHYSICAL_ATTACK;
        
        /*if (pAA==Action.PHYSICAL_ATTACK){
            result = Action.DODGE;
        }else if (pAA==Action.MAGICAL_ATTACK){
            result = Action.DODGE;
        }else if (pAA==Action.PHYSICAL_PARRY){
            result = Action.PHYSICAL_ATTACK;
        }else if (pAA==Action.MAGICAL_PARRY){
            result = Action.PHYSICAL_ATTACK;
        }else if (pAA==Action.DODGE){
            result = Action.PHYSICAL_ATTACK;
        }*/
        
        
        return result;
    }
    
}