pragma solidity >=0.4.22 <0.6.0;

import '/contracts/ActionStrategy.sol';

contract testContract is ActionStrategy {
    
    function chooseNextAction(Action previousAdvAction, address avatar, int damages, address avatarAdv, int damagesAdv) external view returns(Action action){
        return Action.PHYSICAL_ATTACK;
    }
    
}