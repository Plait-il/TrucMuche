pragma solidity >=0.4.22 <0.6.0;

contract envoiFortune {
    
    function sendEther(address payable destinataire) payable external{
        destinataire.transfer(msg.value);
    }
    
}

