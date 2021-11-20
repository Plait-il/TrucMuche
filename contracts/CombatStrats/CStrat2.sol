pragma solidity >=0.4.22 <0.6.0;

import './ActionStrategy.sol';

contract ActionStrategyContract is ActionStrategy {//contre magie
    
    function chooseNextAction(Action previousAdvAction, address avatar, int damages, address avatarAdv, int damagesAdv) external view returns(Action action){
        
        Action result=Action.PHYSICAL_ATTACK;
        
        if (previousAdvAction==Action.PHYSICAL_ATTACK){
            result = Action.PHYSICAL_ATTACK;
        }else if (previousAdvAction==Action.MAGICAL_ATTACK){
            result = Action.DODGE;
        }else if (previousAdvAction==Action.PHYSICAL_PARRY){
            result = Action.PHYSICAL_ATTACK;
        }else if (previousAdvAction==Action.MAGICAL_PARRY){
            result = Action.PHYSICAL_ATTACK;
        }else if (previousAdvAction==Action.DODGE){
            result = Action.MAGICAL_PARRY;
        }
        
        
        return result;
    }
    
}