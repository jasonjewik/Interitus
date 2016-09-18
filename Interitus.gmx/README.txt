List of Adjustable Variables:

Template -- folder -> object -> event -> section -> variable

Player Health
	Player -> obj_player -> Create Event 1 -> //Player Variables 
	-> global.playerHealth/global.maxHealth 
	** be sure that the playerHealth = maxHealth **
Player Stamina
	Player -> obj_player -> Create Event 1 -> //Player Variables
	-> global.stamina/global.maxStamina
	** be sure that stamina = maxStamina **
Ammo Usage
	Scripts -> Player.States -> scr_range -> global.ammo
	** there are distinct values for each weapon ** 
Player Hunger
	Zombies -> obj_spawner -> Step Event 1 -> global.food
	** reduces by that amount when transitions from night to day **
Punch Damage 
	Player -> obj_melee_attack -> Collision Zombie Master 1 ->
	///TAKE DAMAGE FOOL -> if (item = "") -> zHealth
	** adjust the integer for punch damage, do not alter the 
	   "else if" statement below it, the damage is affected 
	   by the global items array **
Item Variables 
	Menus -> obj_newInventory -> Create Event 1 -> ///Items 
	** follow the template listed there **
Item Drops
	Menus -> obj_textBox5 -> Create Event 1 -> //Determines whether
	you get...
	** determines likelihood of particular items spawning **
	Menus -> obj_textBox5 -> Step Event 1 -> //The values in 
	irandom... 
	** all weapons have equal chance of spawning, contact me if 
	   you need to alter that or find Jessie **
Zombie Spawns
	Zombies -> obj_zombieMaster -> Create Event 1 -> //Type 
	Determination -> diceRoll
	** if you alter the range of diceRoll,  alter the following
	   lines until //Physics to accommadate **
Zombie Damage/Health
	Zombies -> obj_zombieMaster -> Create Event 1 -> //Conditionals
	-> damage/zHealth
