
name = "Vivian";
transformation = "Magix";
level = 1;

power_name = "Alchemy";
power_element = "Magic";

// filled out with spell list yet to be created
spells_level1 = [0,0,0,0,0,0,0,0];
spells_level2 = [0,0,0,0,0,0,0,0];
spells_level3 = [0,0,0,0,0,0,0,0];

spells_master = [1,0,0,0,0,0,0,0,0,0,0,0];
spells_level = [1,0,0,0,0,0,0,0,0,0,0,0];

// sprites
spr = spr_vivian;

enum personalities
{
	bookish = 0,
	cheerful = 1,
	confident = 2,
	fashionable = 3,
	practical = 4,
	shy = 5,
	socialite = 6,
	solemn = 7
}

// personality
personality_1 = 0;
personality_2 = 0;

// create a script to generate these stats based upon:
// - perosnality 1, 2, and not - element

// spell stats
stat_wisdom = 10;
stat_bravery = 10;
stat_kindness = 10;
stat_instinct = 10;
stat_honor = 10;
stat_connection = 10;
stat_creativity = 10;
stat_patience = 10;

// have a starting stat total of 20
stat_magic = 16;
stat_defense = 10;
stat_speed = 10;
stat_skill = 10;
// start with 10 hp
stat_hp = 20;
stat_mp = 12; stat_mp_curr = 12;