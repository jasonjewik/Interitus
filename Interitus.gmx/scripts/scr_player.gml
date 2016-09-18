globalvar player_state;

enum p_state {
    idle,
    walking,
    sprinting,
    ledging, 
    dodging, 
    aiming, 
    meleeAttack, 
    rangeAttack,
    inventory,
    damage, 
    dead,
    respawn, 
    talking
};

player_state = p_state.idle;
player_state = p_state.walking;
player_state = p_state.sprinting;
player_state = p_state.ledging;
player_state = p_state.dodging;
player_state = p_state.aiming; 
player_state = p_state.meleeAttack;
player_state = p_state.rangeAttack;
player_state = p_state.inventory;
player_state = p_state.damage;
player_state = p_state.dead;
player_state = p_state.respawn;
player_state = p_state.talking;
