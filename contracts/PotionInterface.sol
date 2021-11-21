pragma solidity >=0.4.22 <0.6.0;

interface PotionInterface {
    /**
     * Les potions sont disponibles pour chaque personnages
     * Le HEAL restaure des points de vie
     * Le PDAMAGE augmente pour le prochain tour l'attaque d'un certain montant
     * Le MDAMAGE fait la même chose mais pour les dégâts magique/à distance
     */
    enum Type {
        HEAL,
        PDAMAGE,
        MDAMAGE
    }

    /**
     * Donne le nombre actuelle de potion.
     * @return le nombre actuelle de potion
     */
    function getnbPotion(Type type) external view returns(uint);
    /**
     * Met à jour le nombre actuelle de potion
     */
    function setnbPotion(Type type, uint nombre) external view;
    /**
     * Utiliser une potion
     */
    function usePotion(Type potion, address avatar) external view;
    /**
     * Ajouter une potion
     */
    function addPotion(Type potion) external view;
    
}