pragma solidity >=0.4.22 <0.6.0;

import '../ActionStrategy.sol';

contract ActionStrategyContract is ActionStrategy {//perdre c'est bien
    
    function chooseNextAction(Action previousAdvAction, address avatar, int damages, address avatarAdv, int damagesAdv) external view returns(Action action){
        return Action.PHYSICAL_PARRY;
    }
    
}