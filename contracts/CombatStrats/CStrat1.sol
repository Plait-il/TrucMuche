pragma solidity >=0.4.22 <0.6.0;

import './ActionStrategy.sol';
import '../AvatarInterface.sol';

contract ActionStrategyContract is ActionStrategy {//Grosse def
    
    function chooseNextAction(Action previousAdvAction, address avatar, int damages, address avatarAdv, int damagesAdv) external view returns(Action action){
        AvatarInterface(avatar);
        AvatarInterface(avatar);
        
        Action result=Action.PHYSICAL_ATTACK;
        
        
        if (previousAdvAction==Action.PHYSICAL_ATTACK){
            result = Action.DODGE;
        }else if (previousAdvAction==Action.MAGICAL_ATTACK){
            result = Action.DODGE;
        }else if (previousAdvAction==Action.PHYSICAL_PARRY){
            result = Action.PHYSICAL_ATTACK;
        }else if (previousAdvAction==Action.MAGICAL_PARRY){
            result = Action.PHYSICAL_ATTACK;
        }else if (previousAdvAction==Action.DODGE){
            result = Action.PHYSICAL_ATTACK;
        }
    
        
        return result;
    }
    
}