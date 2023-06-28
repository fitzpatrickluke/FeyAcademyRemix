enum spells
{
	null = 0,
	attack = 1,
	heal = 2,
	sheild = 3,
	reflect = 4,
	charge_attack = 5,
	charge_plus_hp = 6,
	multi_attack = 7,
	double_attack = 8,
	whip_attack = 9,
	absorb_attack = 10,
	instant_death = 11,
	heal_status = 12,
	revive = 13,
	mag_up = 14,
	def_up = 15,
	skl_up = 16,
	spd_up = 17,
	all_up = 18,
	double_buff = 19,
	steal_buff = 20,
	mag_down = 21,
	def_down = 22,
	skl_down = 23,
	spd_down = 24,
	all_down = 25,
	blind = 26,
	deaf = 27,
	petrify = 28,
	curse = 29,
	double_curse = 30,
	lose_hp = 31,
	hp_phase_down = 32,
	heal_party = 33,
	heal_enemy = 34,
	sacrifice = 35,
	sheild_all = 36
}

enum element
{
	null = 0,
	water = 1,
	earth = 2,
	fire = 3,
	air = 4,
	nature = 5,
	magic = 6,
	light = 7,
	dark = 8
}

// special wing spell
wing_spells_w = 16; 
wing_spells_h = 4;
wing_spells = ds_grid_create(wing_spells_w,wing_spells_h);

for(var i = 0; i < wing_spells_w; i+=1)
	for(var j = 0; j < wing_spells_h; j+=1)
		wing_spells[# i, j] = -1;

#region
wing_spells[# 1, 0] = 228;
wing_spells[# 1, 1] = 229;
wing_spells[# 1, 2] = 230;
wing_spells[# 1, 3] = 231;

wing_spells[# 2, 0] = 232;
wing_spells[# 2, 1] = 233;
wing_spells[# 2, 2] = 234;
wing_spells[# 2, 3] = 235;

wing_spells[# 3, 0] = 236;
wing_spells[# 3, 1] = 237;
wing_spells[# 3, 2] = 238;
wing_spells[# 3, 3] = 239;

wing_spells[# 4, 0] = 240;
wing_spells[# 4, 1] = 241;
wing_spells[# 4, 2] = 242;
wing_spells[# 4, 3] = 243;

wing_spells[# 5, 0] = 244;
wing_spells[# 5, 1] = 245;
wing_spells[# 5, 2] = 246;
wing_spells[# 5, 3] = 247;

wing_spells[# 6, 0] = 248;
wing_spells[# 6, 1] = 249;
wing_spells[# 6, 2] = 250;
wing_spells[# 6, 3] = 251;

wing_spells[# 7, 0] = 252;
wing_spells[# 7, 1] = 253;
wing_spells[# 7, 2] = 254;
wing_spells[# 7, 3] = 255;

wing_spells[# 8, 0] = 256;
wing_spells[# 8, 1] = 257;
wing_spells[# 8, 2] = 258;
wing_spells[# 8, 3] = 259;

wing_spells[# 9, 0] = 260;
wing_spells[# 9, 1] = 261;
wing_spells[# 9, 2] = 262;
wing_spells[# 9, 3] = 263;

wing_spells[# 10, 0] = 264;
wing_spells[# 10, 1] = 265;
wing_spells[# 10, 2] = 266;
wing_spells[# 10, 3] = 267;

wing_spells[# 11, 0] = 268;
wing_spells[# 11, 1] = 269;
wing_spells[# 11, 2] = 270;
wing_spells[# 11, 3] = 271;

wing_spells[# 13, 0] = 272;
wing_spells[# 13, 1] = 273;
wing_spells[# 13, 2] = 274;
wing_spells[# 13, 3] = 275;

wing_spells[# 12, 0] = 276;
wing_spells[# 12, 1] = 277;
wing_spells[# 12, 2] = 278;
wing_spells[# 12, 3] = 279;

wing_spells[# 14, 0] = 280;
wing_spells[# 14, 1] = 281;
wing_spells[# 14, 2] = 282;
wing_spells[# 14, 3] = 283;

wing_spells[# 15, 0] = 284;
wing_spells[# 15, 1] = 285;
wing_spells[# 15, 2] = 286;
wing_spells[# 15, 3] = 287;

#endregion

player_spells_w = 294;
player_spells_h = 8;
player_spells = ds_grid_create(player_spells_w,player_spells_h);

player_spells[# 0, 0] = "";
player_spells[# 0, 1] = spells.null;
player_spells[# 0, 2] = -1;
player_spells[# 0, 3] = spells.null;
player_spells[# 0, 4] = -1;
player_spells[# 0, 5] = element.null;
player_spells[# 0, 6] = false;
player_spells[# 0, 7] = 1;

// Water
#region
player_spells[# 1, 0] = "Splash";
player_spells[# 1, 1] = spells.attack;
player_spells[# 1, 2] = 0.1;
player_spells[# 1, 3] = spells.null;
player_spells[# 1, 4] = -1;
player_spells[# 1, 5] = element.water;
player_spells[# 1, 6] = false;
player_spells[# 1, 7] = 1;

player_spells[# 2, 0] = "Wave";
player_spells[# 2, 1] = spells.attack;
player_spells[# 2, 2] = 0.4;
player_spells[# 2, 3] = spells.null;
player_spells[# 2, 4] = -1;
player_spells[# 2, 5] = element.water;
player_spells[# 2, 6] = false;
player_spells[# 2, 7] = 4;

player_spells[# 3, 0] = "Bubble Beam";
player_spells[# 3, 1] = spells.attack;
player_spells[# 3, 2] = 0.4;
player_spells[# 3, 3] = spells.null;
player_spells[# 3, 4] = -1;
player_spells[# 3, 5] = element.water;
player_spells[# 3, 6] = false;
player_spells[# 3, 7] = 4;

player_spells[# 4, 0] = "Shell Slash";
player_spells[# 4, 1] = spells.attack;
player_spells[# 4, 2] = 0.5;
player_spells[# 4, 3] = spells.null;
player_spells[# 4, 4] = -1;
player_spells[# 4, 5] = element.water;
player_spells[# 4, 6] = false;
player_spells[# 4, 7] = 5;

player_spells[# 5, 0] = "Aurora Beam";
player_spells[# 5, 1] = spells.attack;
player_spells[# 5, 2] = 0.6;
player_spells[# 5, 3] = spells.null;
player_spells[# 5, 4] = -1;
player_spells[# 5, 5] = element.water;
player_spells[# 5, 6] = false;
player_spells[# 5, 7] = 6;

player_spells[# 6, 0] = "Nautical Blast";
player_spells[# 6, 1] = spells.attack;
player_spells[# 6, 2] = 0.8;
player_spells[# 6, 3] = spells.null;
player_spells[# 6, 4] = -1;
player_spells[# 6, 5] = element.water;
player_spells[# 6, 6] = false;
player_spells[# 6, 7] = 8;

player_spells[# 7, 0] = "Tsunami";
player_spells[# 7, 1] = spells.attack;
player_spells[# 7, 2] = 1;
player_spells[# 7, 3] = spells.null;
player_spells[# 7, 4] = -1;
player_spells[# 7, 5] = element.water;
player_spells[# 7, 6] = false;
player_spells[# 7, 7] = 10;

player_spells[# 8, 0] = "River Rush";
player_spells[# 8, 1] = spells.attack;
player_spells[# 8, 2] = 0.2;
player_spells[# 8, 3] = spells.spd_up;
player_spells[# 8, 4] = 2;
player_spells[# 8, 5] = element.water;
player_spells[# 8, 6] = false;
player_spells[# 8, 7] = 4;

player_spells[# 9, 0] = "Glacial Blast";
player_spells[# 9, 1] = spells.attack;
player_spells[# 9, 2] = 0.4;
player_spells[# 9, 3] = spells.def_down;
player_spells[# 9, 4] = 2;
player_spells[# 9, 5] = element.water;
player_spells[# 9, 6] = false;
player_spells[# 9, 7] = 6;

player_spells[# 10, 0] = "Izanami's Assualt";
player_spells[# 10, 1] = spells.attack;
player_spells[# 10, 2] = 1.4;
player_spells[# 10, 3] = spells.mag_down;
player_spells[# 10, 4] = 6;
player_spells[# 10, 5] = element.water;
player_spells[# 10, 6] = false;
player_spells[# 10, 7] = 20;

player_spells[# 11, 0] = "High Tide";
player_spells[# 11, 1] = spells.charge_attack;
player_spells[# 11, 2] = 0.6;
player_spells[# 11, 3] = spells.null;
player_spells[# 11, 4] = -1;
player_spells[# 11, 5] = element.water;
player_spells[# 11, 6] = false;
player_spells[# 11, 7] = 8;

player_spells[# 12, 0] = "Midnight Sea";
player_spells[# 12, 1] = spells.charge_attack;
player_spells[# 12, 2] = 1;
player_spells[# 12, 3] = spells.null;
player_spells[# 12, 4] = -1;
player_spells[# 12, 5] = element.water;
player_spells[# 12, 6] = false;
player_spells[# 12, 7] = 12;

player_spells[# 13, 0] = "Sinking Ship";
player_spells[# 13, 1] = spells.charge_attack;
player_spells[# 13, 2] = 1.2;
player_spells[# 13, 3] = spells.null;
player_spells[# 13, 4] = -1;
player_spells[# 13, 5] = element.water;
player_spells[# 13, 6] = false;
player_spells[# 13, 7] = 14;

player_spells[# 14, 0] = "Water Whip";
player_spells[# 14, 1] = spells.whip_attack;
player_spells[# 14, 2] = 0.6;
player_spells[# 14, 3] = spells.mag_down;
player_spells[# 14, 4] = 2;
player_spells[# 14, 5] = element.water;
player_spells[# 14, 6] = false;
player_spells[# 14, 7] = 6;

player_spells[# 15, 0] = "Pearl Whip";
player_spells[# 15, 1] = spells.whip_attack;
player_spells[# 15, 2] = 0.6;
player_spells[# 15, 3] = spells.all_down;
player_spells[# 15, 4] = 2;
player_spells[# 15, 5] = element.water;
player_spells[# 15, 6] = false;
player_spells[# 15, 7] = 6;

player_spells[# 16, 0] = "Dew Drop";
player_spells[# 16, 1] = spells.heal;
player_spells[# 16, 2] = 0.2;
player_spells[# 16, 3] = spells.null;
player_spells[# 16, 4] = -1;
player_spells[# 16, 5] = element.water;
player_spells[# 16, 6] = true;
player_spells[# 16, 7] = 2;

player_spells[# 17, 0] = "Crystal Spring";
player_spells[# 17, 1] = spells.heal;
player_spells[# 17, 2] = 1;
player_spells[# 17, 3] = spells.null;
player_spells[# 17, 4] = -1;
player_spells[# 17, 5] = element.water;
player_spells[# 17, 6] = true;
player_spells[# 17, 7] = 10;

player_spells[# 18, 0] = "Icey Sheild";
player_spells[# 18, 1] = spells.sheild;
player_spells[# 18, 2] = 0.2;
player_spells[# 18, 3] = spells.null;
player_spells[# 18, 4] = -1;
player_spells[# 18, 5] = element.water;
player_spells[# 18, 6] = true;
player_spells[# 18, 7] = 2;

player_spells[# 19, 0] = "Aurora Veil";
player_spells[# 19, 1] = spells.def_up;
player_spells[# 19, 2] = 3;
player_spells[# 19, 3] = spells.null;
player_spells[# 19, 4] = -1;
player_spells[# 19, 5] = element.water;
player_spells[# 19, 6] = true;
player_spells[# 19, 7] = 6;

player_spells[# 20, 0] = "Triton's Trumpet";
player_spells[# 20, 1] = spells.all_up;
player_spells[# 20, 2] = 4;
player_spells[# 20, 3] = spells.null;
player_spells[# 20, 4] = -1;
player_spells[# 20, 5] = element.water;
player_spells[# 20, 6] = true;
player_spells[# 20, 7] = 8;

player_spells[# 21, 0] = "Bubble Bomb";
player_spells[# 21, 1] = spells.def_down;
player_spells[# 21, 2] = 4;
player_spells[# 21, 3] = spells.null;
player_spells[# 21, 4] = -1;
player_spells[# 21, 5] = element.water;
player_spells[# 21, 6] = false;
player_spells[# 21, 7] = 8;

player_spells[# 22, 0] = "Frost Breath";
player_spells[# 22, 1] = spells.spd_down;
player_spells[# 22, 2] = 3;
player_spells[# 22, 3] = spells.null;
player_spells[# 22, 4] = -1;
player_spells[# 22, 5] = element.water;
player_spells[# 22, 6] = false;
player_spells[# 22, 7] = 6;

player_spells[# 23, 0] = "Siren's Song";
player_spells[# 23, 1] = spells.all_down;
player_spells[# 23, 2] = 1;
player_spells[# 23, 3] = spells.null;
player_spells[# 23, 4] = -1;
player_spells[# 23, 5] = element.water;
player_spells[# 23, 6] = false;
player_spells[# 23, 7] = 2;

player_spells[# 24, 0] = "Waterfall Roar";
player_spells[# 24, 1] = spells.deaf;
player_spells[# 24, 2] = 0.6;
player_spells[# 24, 3] = spells.null;
player_spells[# 24, 4] = -1;
player_spells[# 24, 5] = element.water;
player_spells[# 24, 6] = false;
player_spells[# 24, 7] = 12;
#endregion

// Earth
#region
player_spells[# 25, 0] = "Crystal Ray";
player_spells[# 25, 1] = spells.attack;
player_spells[# 25, 2] = 0.2;
player_spells[# 25, 3] = spells.null;
player_spells[# 25, 4] = -1;
player_spells[# 25, 5] = element.earth;
player_spells[# 25, 6] = false;
player_spells[# 25, 7] = 2;

player_spells[# 26, 0] = "Iron Pierce";
player_spells[# 26, 1] = spells.attack;
player_spells[# 26, 2] = 0.3;
player_spells[# 26, 3] = spells.null;
player_spells[# 26, 4] = -1;
player_spells[# 26, 5] = element.earth;
player_spells[# 26, 6] = false;
player_spells[# 26, 7] = 3;

player_spells[# 27, 0] = "Crushing Quartz";
player_spells[# 27, 1] = spells.attack;
player_spells[# 27, 2] = 0.6;
player_spells[# 27, 3] = spells.null;
player_spells[# 27, 4] = -1;
player_spells[# 27, 5] = element.earth;
player_spells[# 27, 6] = false;
player_spells[# 27, 7] = 6;

player_spells[# 28, 0] = "Crystal Peirce";
player_spells[# 28, 1] = spells.attack;
player_spells[# 28, 2] = 0.8;
player_spells[# 28, 3] = spells.null;
player_spells[# 28, 4] = -1;
player_spells[# 28, 5] = element.earth;
player_spells[# 28, 6] = false;
player_spells[# 28, 7] = 8;

player_spells[# 29, 0] = "Earthquake";
player_spells[# 29, 1] = spells.attack;
player_spells[# 29, 2] = 0.8;
player_spells[# 29, 3] = spells.null;
player_spells[# 29, 4] = -1;
player_spells[# 29, 5] = element.earth;
player_spells[# 29, 6] = false;
player_spells[# 29, 7] = 8;

player_spells[# 30, 0] = "Marble Blast";
player_spells[# 30, 1] = spells.attack;
player_spells[# 30, 2] = 0.9;
player_spells[# 30, 3] = spells.null;
player_spells[# 30, 4] = -1;
player_spells[# 30, 5] = element.earth;
player_spells[# 30, 6] = false;
player_spells[# 30, 7] = 9;

player_spells[# 31, 0] = "Star Sapphire";
player_spells[# 31, 1] = spells.attack;
player_spells[# 31, 2] = 1;
player_spells[# 31, 3] = spells.null;
player_spells[# 31, 4] = -1;
player_spells[# 31, 5] = element.earth;
player_spells[# 31, 6] = false;
player_spells[# 31, 7] = 10;

player_spells[# 32, 0] = "Sterling Strike";
player_spells[# 32, 1] = spells.attack;
player_spells[# 32, 2] = 0.4;
player_spells[# 32, 3] = spells.spd_up;
player_spells[# 32, 4] = 1;
player_spells[# 32, 5] = element.earth;
player_spells[# 32, 6] = false;
player_spells[# 32, 7] = 5;

player_spells[# 33, 0] = "Metal Fusion";
player_spells[# 33, 1] = spells.charge_attack;
player_spells[# 33, 2] = 0.8;
player_spells[# 33, 3] = spells.null;
player_spells[# 33, 4] = -1;
player_spells[# 33, 5] = element.earth;
player_spells[# 33, 6] = false;
player_spells[# 33, 7] = 10;

player_spells[# 34, 0] = "Obstructing Obsidion";
player_spells[# 34, 1] = spells.charge_attack;
player_spells[# 34, 2] = 1;
player_spells[# 34, 3] = spells.null;
player_spells[# 34, 4] = -1;
player_spells[# 34, 5] = element.earth;
player_spells[# 34, 6] = false;
player_spells[# 34, 7] = 12;

player_spells[# 35, 0] = "Boulder Blast";
player_spells[# 35, 1] = spells.charge_attack;
player_spells[# 35, 2] = 1.2;
player_spells[# 35, 3] = spells.null;
player_spells[# 35, 4] = -1;
player_spells[# 35, 5] = element.earth;
player_spells[# 35, 6] = false;
player_spells[# 35, 7] = 14;

player_spells[# 36, 0] = "Continental Crush";
player_spells[# 36, 1] = spells.charge_attack;
player_spells[# 36, 2] = 1.8;
player_spells[# 36, 3] = spells.null;
player_spells[# 36, 4] = -1;
player_spells[# 36, 5] = element.earth;
player_spells[# 36, 6] = false;
player_spells[# 36, 7] = 20;

player_spells[# 37, 0] = "Pebble Pelt";
player_spells[# 37, 1] = spells.multi_attack;
player_spells[# 37, 2] = 0.01;
player_spells[# 37, 3] = spells.null;
player_spells[# 37, 4] = 1;
player_spells[# 37, 5] = element.earth;
player_spells[# 37, 6] = false;
player_spells[# 37, 7] = 2;

player_spells[# 38, 0] = "Sand Slash";
player_spells[# 38, 1] = spells.multi_attack;
player_spells[# 38, 2] = 0.1;
player_spells[# 38, 3] = spells.null;
player_spells[# 38, 4] = 6;
player_spells[# 38, 5] = element.earth;
player_spells[# 38, 6] = false;
player_spells[# 38, 7] = 4;

player_spells[# 39, 0] = "Silver Scales";
player_spells[# 39, 1] = spells.multi_attack;
player_spells[# 39, 2] = 0.2;
player_spells[# 39, 3] = spells.null;
player_spells[# 39, 4] = 2;
player_spells[# 39, 5] = element.earth;
player_spells[# 39, 6] = false;
player_spells[# 39, 7] = 6;

player_spells[# 40, 0] = "Jade Javelins";
player_spells[# 40, 1] = spells.double_attack;
player_spells[# 40, 2] = 0.6;
player_spells[# 40, 3] = spells.null;
player_spells[# 40, 4] = -1;
player_spells[# 40, 5] = element.earth;
player_spells[# 40, 6] = false;
player_spells[# 40, 7] = 12;

player_spells[# 41, 0] = "Rose Quartz";
player_spells[# 41, 1] = spells.heal;
player_spells[# 41, 2] = 0.4;
player_spells[# 41, 3] = spells.null;
player_spells[# 41, 4] = -1;
player_spells[# 41, 5] = element.earth;
player_spells[# 41, 6] = true;
player_spells[# 41, 7] = 4;

player_spells[# 42, 0] = "Bronze Sheild";
player_spells[# 42, 1] = spells.sheild;
player_spells[# 42, 2] = 0.4;
player_spells[# 42, 3] = spells.null;
player_spells[# 42, 4] = -1;
player_spells[# 42, 5] = element.earth;
player_spells[# 42, 6] = true;
player_spells[# 42, 7] = 4;

player_spells[# 43, 0] = "Encasing Emerald";
player_spells[# 43, 1] = spells.sheild;
player_spells[# 43, 2] = 0.4;
player_spells[# 43, 3] = spells.null;
player_spells[# 43, 4] = -1;
player_spells[# 43, 5] = element.earth;
player_spells[# 43, 6] = true;
player_spells[# 43, 7] = 4;

player_spells[# 44, 0] = "Silver Sheild";
player_spells[# 44, 1] = spells.sheild;
player_spells[# 44, 2] = 0.8;
player_spells[# 44, 3] = spells.null;
player_spells[# 44, 4] = -1;
player_spells[# 44, 5] = element.earth;
player_spells[# 44, 6] = true;
player_spells[# 44, 7] = 8;

player_spells[# 45, 0] = "Golden Sheild";
player_spells[# 45, 1] = spells.sheild;
player_spells[# 45, 2] = 1;
player_spells[# 45, 3] = spells.null;
player_spells[# 45, 4] = -1;
player_spells[# 45, 5] = element.earth;
player_spells[# 45, 6] = true;
player_spells[# 45, 7] = 10;

player_spells[# 46, 0] = "Daimond Drape";
player_spells[# 46, 1] = spells.sheild;
player_spells[# 46, 2] = 0.5;
player_spells[# 46, 3] = spells.def_up;
player_spells[# 46, 4] = 4;
player_spells[# 46, 5] = element.earth;
player_spells[# 46, 6] = true;
player_spells[# 46, 7] = 10;

player_spells[# 47, 0] = "Daimond Dust";
player_spells[# 47, 1] = spells.sheild;
player_spells[# 47, 2] = 1;
player_spells[# 47, 3] = spells.all_up;
player_spells[# 47, 4] = 2;
player_spells[# 47, 5] = element.earth;
player_spells[# 47, 6] = true;
player_spells[# 47, 7] = 14;

player_spells[# 48, 0] = "Rainbow Quartz";
player_spells[# 48, 1] = spells.all_up;
player_spells[# 48, 2] = 2;
player_spells[# 48, 3] = spells.null;
player_spells[# 48, 4] = -1;
player_spells[# 48, 5] = element.earth;
player_spells[# 48, 6] = true;
player_spells[# 48, 7] = 6;

player_spells[# 49, 0] = "Mineral Mirror";
player_spells[# 49, 1] = spells.def_up;
player_spells[# 49, 2] = 4;
player_spells[# 49, 3] = spells.def_down;
player_spells[# 49, 4] = 2;
player_spells[# 49, 5] = element.earth;
player_spells[# 49, 6] = true;
player_spells[# 49, 7] = 12;

player_spells[# 50, 0] = "Mud Mask";
player_spells[# 50, 1] = spells.skl_down;
player_spells[# 50, 2] = 2;
player_spells[# 50, 3] = spells.null;
player_spells[# 50, 4] = -1;
player_spells[# 50, 5] = element.earth;
player_spells[# 50, 6] = false;
player_spells[# 50, 7] = 4;
#endregion

// Fire
#region
player_spells[# 51, 0] = "Fireball";
player_spells[# 51, 1] = spells.attack;
player_spells[# 51, 2] = 0.3;
player_spells[# 51, 3] = spells.null;
player_spells[# 51, 4] = -1;
player_spells[# 51, 5] = element.fire;
player_spells[# 51, 6] = false;
player_spells[# 51, 7] = 3;

player_spells[# 52, 0] = "Fire Bolt";
player_spells[# 52, 1] = spells.attack;
player_spells[# 52, 2] = 0.5;
player_spells[# 52, 3] = spells.null;
player_spells[# 52, 4] = -1;
player_spells[# 52, 5] = element.fire;
player_spells[# 52, 6] = false;
player_spells[# 52, 7] = 5;

player_spells[# 53, 0] = "Solar Flare";
player_spells[# 53, 1] = spells.attack;
player_spells[# 53, 2] = 0.8;
player_spells[# 53, 3] = spells.null;
player_spells[# 53, 4] = -1;
player_spells[# 53, 5] = element.fire;
player_spells[# 53, 6] = false;
player_spells[# 53, 7] = 8;

player_spells[# 54, 0] = "Acid Splash";
player_spells[# 54, 1] = spells.attack;
player_spells[# 54, 2] = 0.1;
player_spells[# 54, 3] = spells.mag_down;
player_spells[# 54, 4] = 3;
player_spells[# 54, 5] = element.fire;
player_spells[# 54, 6] = false;
player_spells[# 54, 7] = 8;

player_spells[# 55, 0] = "Azure Flames";
player_spells[# 55, 1] = spells.attack;
player_spells[# 55, 2] = 0.1;
player_spells[# 55, 3] = spells.skl_up;
player_spells[# 55, 4] = 4;
player_spells[# 55, 5] = element.fire;
player_spells[# 55, 6] = false;
player_spells[# 55, 7] = 8;

player_spells[# 56, 0] = "Golden Flames";
player_spells[# 56, 1] = spells.attack;
player_spells[# 56, 2] = 0.4;
player_spells[# 56, 3] = spells.skl_up;
player_spells[# 56, 4] = 1;
player_spells[# 56, 5] = element.fire;
player_spells[# 56, 6] = false;
player_spells[# 56, 7] = 8;

player_spells[# 57, 0] = "Flaming Opal Eye";
player_spells[# 57, 1] = spells.attack;
player_spells[# 57, 2] = 0.8;
player_spells[# 57, 3] = spells.petrify;
player_spells[# 57, 4] = 0.1;
player_spells[# 57, 5] = element.fire;
player_spells[# 57, 6] = false;
player_spells[# 57, 7] = 10;

player_spells[# 58, 0] = "Dragon's Breath";
player_spells[# 58, 1] = spells.charge_attack;
player_spells[# 58, 2] = 0.6;
player_spells[# 58, 3] = spells.null;
player_spells[# 58, 4] = -1;
player_spells[# 58, 5] = element.fire;
player_spells[# 58, 6] = false;
player_spells[# 58, 7] = 8;

player_spells[# 59, 0] = "Eruption";
player_spells[# 59, 1] = spells.charge_attack;
player_spells[# 59, 2] = 1.1;
player_spells[# 59, 3] = spells.null;
player_spells[# 59, 4] = -1;
player_spells[# 59, 5] = element.fire;
player_spells[# 59, 6] = false;
player_spells[# 59, 7] = 13;

player_spells[# 60, 0] = "Death of a Dragon";
player_spells[# 60, 1] = spells.charge_attack;
player_spells[# 60, 2] = 2.5;
player_spells[# 60, 3] = spells.null;
player_spells[# 60, 4] = -1;
player_spells[# 60, 5] = element.fire;
player_spells[# 60, 6] = false;
player_spells[# 60, 7] = 26;

player_spells[# 61, 0] = "Fireworks";
player_spells[# 61, 1] = spells.multi_attack;
player_spells[# 61, 2] = 0.6;
player_spells[# 61, 3] = spells.null;
player_spells[# 61, 4] = 30;
player_spells[# 61, 5] = element.fire;
player_spells[# 61, 6] = false;
player_spells[# 61, 7] = 10;

player_spells[# 62, 0] = "Dragon Claws";
player_spells[# 62, 1] = spells.double_attack;
player_spells[# 62, 2] = 0.4;
player_spells[# 62, 3] = spells.null;
player_spells[# 62, 4] = -1;
player_spells[# 62, 5] = element.fire;
player_spells[# 62, 6] = false;
player_spells[# 62, 7] = 8;

player_spells[# 63, 0] = "Flame Whip";
player_spells[# 63, 1] = spells.whip_attack;
player_spells[# 63, 2] = 0.6;
player_spells[# 63, 3] = spells.def_down;
player_spells[# 63, 4] = 2;
player_spells[# 63, 5] = element.fire;
player_spells[# 63, 6] = false;
player_spells[# 63, 7] = 6;

player_spells[# 64, 0] = "Golden Egg";
player_spells[# 64, 1] = spells.heal;
player_spells[# 64, 2] = 0.6;
player_spells[# 64, 3] = spells.null;
player_spells[# 64, 4] = -1;
player_spells[# 64, 5] = element.fire;
player_spells[# 64, 6] = true;
player_spells[# 64, 7] = 6;

player_spells[# 65, 0] = "Noble Roar";
player_spells[# 65, 1] = spells.all_up;
player_spells[# 65, 2] = 3;
player_spells[# 65, 3] = spells.null;
player_spells[# 65, 4] = -1;
player_spells[# 65, 5] = element.fire;
player_spells[# 65, 6] = true;
player_spells[# 65, 7] = 6;

player_spells[# 66, 0] = "Dancing Dragon";
player_spells[# 66, 1] = spells.skl_up;
player_spells[# 66, 2] = 2;
player_spells[# 66, 3] = spells.spd_up;
player_spells[# 66, 4] = 2;
player_spells[# 66, 5] = element.fire;
player_spells[# 66, 6] = true;
player_spells[# 66, 7] = 8;

player_spells[# 67, 0] = "Lava Lash";
player_spells[# 67, 1] = spells.mag_down;
player_spells[# 67, 2] = 4;
player_spells[# 67, 3] = spells.null;
player_spells[# 67, 4] = -1;
player_spells[# 67, 5] = element.fire;
player_spells[# 67, 6] = false;
player_spells[# 67, 7] = 8;

player_spells[# 68, 0] = "Magma Melt";
player_spells[# 68, 1] = spells.def_down;
player_spells[# 68, 2] = 4;
player_spells[# 68, 3] = spells.null;
player_spells[# 68, 4] = -1;
player_spells[# 68, 5] = element.fire;
player_spells[# 68, 6] = false;
player_spells[# 68, 7] = 8;

player_spells[# 69, 0] = "Heat Wave";
player_spells[# 69, 1] = spells.spd_down;
player_spells[# 69, 2] = 2;
player_spells[# 69, 3] = spells.null;
player_spells[# 69, 4] = -1;
player_spells[# 69, 5] = element.fire;
player_spells[# 69, 6] = false;
player_spells[# 69, 7] = 4;

player_spells[# 70, 0] = "Will o' Wisp";
player_spells[# 70, 1] = spells.all_down;
player_spells[# 70, 2] = 1;
player_spells[# 70, 3] = spells.curse;
player_spells[# 70, 4] = 0.1;
player_spells[# 70, 5] = element.fire;
player_spells[# 70, 6] = false;
player_spells[# 70, 7] = 4;

player_spells[# 71, 0] = "Hypnotic Flame";
player_spells[# 71, 1] = spells.blind;
player_spells[# 71, 2] = 1;
player_spells[# 71, 3] = spells.null;
player_spells[# 71, 4] = -1;
player_spells[# 71, 5] = element.fire;
player_spells[# 71, 6] = false;
player_spells[# 71, 7] = 20;

player_spells[# 72, 0] = "Bright Burn";
player_spells[# 72, 1] = spells.double_curse;
player_spells[# 72, 2] = 0.5;
player_spells[# 72, 3] = spells.blind;
player_spells[# 72, 4] = 0.5;
player_spells[# 72, 5] = element.fire;
player_spells[# 72, 6] = false;
player_spells[# 72, 7] = 20;
#endregion

// Air
#region
player_spells[# 73, 0] = "Cloud Cut";
player_spells[# 73, 1] = spells.attack;
player_spells[# 73, 2] = 0.2;
player_spells[# 73, 3] = spells.null;
player_spells[# 73, 4] = -1;
player_spells[# 73, 5] = element.air;
player_spells[# 73, 6] = false;
player_spells[# 73, 7] = 2;

player_spells[# 74, 0] = "Razor Wind";
player_spells[# 74, 1] = spells.attack;
player_spells[# 74, 2] = 0.5;
player_spells[# 74, 3] = spells.null;
player_spells[# 74, 4] = -1;
player_spells[# 74, 5] = element.air;
player_spells[# 74, 6] = false;
player_spells[# 74, 7] = 5;

player_spells[# 75, 0] = "Tornado Shot";
player_spells[# 75, 1] = spells.attack;
player_spells[# 75, 2] = 0.8;
player_spells[# 75, 3] = spells.null;
player_spells[# 75, 4] = -1;
player_spells[# 75, 5] = element.air;
player_spells[# 75, 6] = false;
player_spells[# 75, 7] = 8;

player_spells[# 76, 0] = "Sphere of Gods";
player_spells[# 76, 1] = spells.attack;
player_spells[# 76, 2] = 1.6;
player_spells[# 76, 3] = spells.null;
player_spells[# 76, 4] = -1;
player_spells[# 76, 5] = element.air;
player_spells[# 76, 6] = false;
player_spells[# 76, 7] = 16;

player_spells[# 77, 0] = "Nimbus Shot";
player_spells[# 77, 1] = spells.attack;
player_spells[# 77, 2] = 0.6;
player_spells[# 77, 3] = spells.mag_up;
player_spells[# 77, 4] = 1;
player_spells[# 77, 5] = element.air;
player_spells[# 77, 6] = false;
player_spells[# 77, 7] = 8;

player_spells[# 78, 0] = "Acumula Cut";
player_spells[# 78, 1] = spells.attack;
player_spells[# 78, 2] = 0.6;
player_spells[# 78, 3] = spells.def_up;
player_spells[# 78, 4] = 1;
player_spells[# 78, 5] = element.air;
player_spells[# 78, 6] = false;
player_spells[# 78, 7] = 8;

player_spells[# 79, 0] = "Cirrus Slash";
player_spells[# 79, 1] = spells.attack;
player_spells[# 79, 2] = 0.6;
player_spells[# 79, 3] = spells.spd_up;
player_spells[# 79, 4] = 1;
player_spells[# 79, 5] = element.air;
player_spells[# 79, 6] = false;
player_spells[# 79, 7] = 8;

player_spells[# 80, 0] = "Eye of the Storm";
player_spells[# 80, 1] = spells.absorb_attack;
player_spells[# 80, 2] = 0.8;
player_spells[# 80, 3] = spells.null;
player_spells[# 80, 4] = 0.4;
player_spells[# 80, 5] = element.air;
player_spells[# 80, 6] = false;
player_spells[# 80, 7] = 12;

player_spells[# 81, 0] = "Bolts of Zeuz";
player_spells[# 81, 1] = spells.multi_attack;
player_spells[# 81, 2] = 0.6;
player_spells[# 81, 3] = spells.null;
player_spells[# 81, 4] = 20;
player_spells[# 81, 5] = element.air;
player_spells[# 81, 6] = false;
player_spells[# 81, 7] = 12;

player_spells[# 82, 0] = "Double Bolt";
player_spells[# 82, 1] = spells.double_attack;
player_spells[# 82, 2] = 0.4;
player_spells[# 82, 3] = spells.null;
player_spells[# 82, 4] = -1;
player_spells[# 82, 5] = element.air;
player_spells[# 82, 6] = false;
player_spells[# 82, 7] = 8;

player_spells[# 83, 0] = "Lightning Whip";
player_spells[# 83, 1] = spells.whip_attack;
player_spells[# 83, 2] = 0.6;
player_spells[# 83, 3] = spells.spd_down;
player_spells[# 83, 4] = 2;
player_spells[# 83, 5] = element.air;
player_spells[# 83, 6] = false;
player_spells[# 83, 7] = 6;

player_spells[# 84, 0] = "Refreshing Mist";
player_spells[# 84, 1] = spells.heal;
player_spells[# 84, 2] = 0.4;
player_spells[# 84, 3] = spells.null;
player_spells[# 84, 4] = -1;
player_spells[# 84, 5] = element.air;
player_spells[# 84, 6] = true;
player_spells[# 84, 7] = 4;

player_spells[# 85, 0] = "Angel Wings";
player_spells[# 85, 1] = spells.heal;
player_spells[# 85, 2] = 0.6;
player_spells[# 85, 3] = spells.spd_up;
player_spells[# 85, 4] = 1;
player_spells[# 85, 5] = element.air;
player_spells[# 85, 6] = true;
player_spells[# 85, 7] = 6;

player_spells[# 86, 0] = "Angel's Kiss";
player_spells[# 86, 1] = spells.heal;
player_spells[# 86, 2] = 1;
//player_spells[# 86, 3] = spells.revive;
//player_spells[# 86, 4] = 1;
player_spells[# 86, 3] = spells.null;
player_spells[# 86, 4] = -1;
player_spells[# 86, 5] = element.air;
player_spells[# 86, 6] = true;
player_spells[# 86, 7] = 10;

player_spells[# 87, 0] = "Rushing Wind";
player_spells[# 87, 1] = spells.spd_up;
player_spells[# 87, 2] = 1;
player_spells[# 87, 3] = spells.null;
player_spells[# 87, 4] = -1;
player_spells[# 87, 5] = element.air;
player_spells[# 87, 6] = true;
player_spells[# 87, 7] = 2;

player_spells[# 88, 0] = "Gale Wings";
player_spells[# 88, 1] = spells.spd_up;
player_spells[# 88, 2] = 3;
player_spells[# 88, 3] = spells.null;
player_spells[# 88, 4] = -1;
player_spells[# 88, 5] = element.air;
player_spells[# 88, 6] = true;
player_spells[# 88, 7] = 6;

player_spells[# 89, 0] = "Rainbow Mist";
player_spells[# 89, 1] = spells.all_up;
player_spells[# 89, 2] = 6;
player_spells[# 89, 3] = spells.null;
player_spells[# 89, 4] = -1;
player_spells[# 89, 5] = element.air;
player_spells[# 89, 6] = true;
player_spells[# 89, 7] = 16;

player_spells[# 90, 0] = "Winter Wind";
player_spells[# 90, 1] = spells.spd_down;
player_spells[# 90, 2] = 1;
player_spells[# 90, 3] = spells.null;
player_spells[# 90, 4] = -1;
player_spells[# 90, 5] = element.air;
player_spells[# 90, 6] = false;
player_spells[# 90, 7] = 2;

player_spells[# 91, 0] = "Confunding Clouds";
player_spells[# 91, 1] = spells.spd_down;
player_spells[# 91, 2] = 2;
player_spells[# 91, 3] = spells.null;
player_spells[# 91, 4] = -1;
player_spells[# 91, 5] = element.air;
player_spells[# 91, 6] = false;
player_spells[# 91, 7] = 4;

player_spells[# 92, 0] = "Storm Front";
player_spells[# 92, 1] = spells.petrify;
player_spells[# 92, 2] = 1;
player_spells[# 92, 3] = spells.null;
player_spells[# 92, 4] = -1;
player_spells[# 92, 5] = element.air;
player_spells[# 92, 6] = false;
player_spells[# 92, 7] = 20;
#endregion

// Nature
#region
player_spells[# 93, 0] = "Petal Blade";
player_spells[# 93, 1] = spells.attack;
player_spells[# 93, 2] = 0.3;
player_spells[# 93, 3] = spells.null;
player_spells[# 93, 4] = -1;
player_spells[# 93, 5] = element.nature;
player_spells[# 93, 6] = false;
player_spells[# 93, 7] = 3;

player_spells[# 94, 0] = "Razor Leaf";
player_spells[# 94, 1] = spells.attack;
player_spells[# 94, 2] = 0.5;
player_spells[# 94, 3] = spells.null;
player_spells[# 94, 4] = -1;
player_spells[# 94, 5] = element.nature;
player_spells[# 94, 6] = false;
player_spells[# 94, 7] = 5;

player_spells[# 95, 0] = "Honey Sickle";
player_spells[# 95, 1] = spells.attack;
player_spells[# 95, 2] = 0.6;
player_spells[# 95, 3] = spells.null;
player_spells[# 95, 4] = -1;
player_spells[# 95, 5] = element.nature;
player_spells[# 95, 6] = false;
player_spells[# 95, 7] = 6;

player_spells[# 96, 0] = "Biting Bark";
player_spells[# 96, 1] = spells.attack;
player_spells[# 96, 2] = 0.2;
player_spells[# 96, 3] = spells.def_up;
player_spells[# 96, 4] = 1;
player_spells[# 96, 5] = element.nature;
player_spells[# 96, 6] = false;
player_spells[# 96, 7] = 4;

player_spells[# 97, 0] = "Gaze of Gaia";
player_spells[# 97, 1] = spells.attack;
player_spells[# 97, 2] = 1.6;
player_spells[# 97, 3] = spells.all_down;
player_spells[# 97, 4] = 3;
player_spells[# 97, 5] = element.nature;
player_spells[# 97, 6] = false;
player_spells[# 97, 7] = 20;

player_spells[# 98, 0] = "Opening Orchids";
player_spells[# 98, 1] = spells.charge_attack;
player_spells[# 98, 2] = 1;
player_spells[# 98, 3] = spells.null;
player_spells[# 98, 4] = -1;
player_spells[# 98, 5] = element.nature;
player_spells[# 98, 6] = false;
player_spells[# 98, 7] = 12;

player_spells[# 99, 0] = "Whipping Roots";
player_spells[# 99, 1] = spells.multi_attack;
player_spells[# 99, 2] = 0.15;
player_spells[# 99, 3] = spells.null;
player_spells[# 99, 4] = 5;
player_spells[# 99, 5] = element.nature;
player_spells[# 99, 6] = false;
player_spells[# 99, 7] = 5;

player_spells[# 100, 0] = "Hive Order";
player_spells[# 100, 1] = spells.multi_attack;
player_spells[# 100, 2] = 0.4;
player_spells[# 100, 3] = spells.null;
player_spells[# 100, 4] = 10;
player_spells[# 100, 5] = element.nature;
player_spells[# 100, 6] = false;
player_spells[# 100, 7] = 8;

player_spells[# 101, 0] = "Thorn Whip";
player_spells[# 101, 1] = spells.whip_attack;
player_spells[# 101, 2] = 0.6;
player_spells[# 101, 3] = spells.skl_down;
player_spells[# 101, 4] = 2;
player_spells[# 101, 5] = element.nature;
player_spells[# 101, 6] = false;
player_spells[# 101, 7] = 6;

player_spells[# 102, 0] = "Golden Honey";
player_spells[# 102, 1] = spells.heal;
player_spells[# 102, 2] = 0.4;
player_spells[# 102, 3] = spells.null;
player_spells[# 102, 4] = -1;
player_spells[# 102, 5] = element.nature;
player_spells[# 102, 6] = true;
player_spells[# 102, 7] = 4;

player_spells[# 103, 0] = "Cherry Wind";
player_spells[# 103, 1] = spells.heal;
player_spells[# 103, 2] = 0.2;
player_spells[# 103, 3] = spells.mag_up;
player_spells[# 103, 4] = 1;
player_spells[# 103, 5] = element.nature;
player_spells[# 103, 6] = true;
player_spells[# 103, 7] = 4;

player_spells[# 104, 0] = "Lotus Love";
player_spells[# 104, 1] = spells.heal;
player_spells[# 104, 2] = 0.2;
player_spells[# 104, 3] = spells.heal_status;
player_spells[# 104, 4] = 1;
player_spells[# 104, 5] = element.nature;
player_spells[# 104, 6] = true;
player_spells[# 104, 7] = 4;

player_spells[# 105, 0] = "Leaf Light";
player_spells[# 105, 1] = spells.heal;
player_spells[# 105, 2] = 0.5;
player_spells[# 105, 3] = spells.null;
player_spells[# 105, 4] = -1;
player_spells[# 105, 5] = element.nature;
player_spells[# 105, 6] = true;
player_spells[# 105, 7] = 5;

player_spells[# 106, 0] = "Harvest Dance";
player_spells[# 106, 1] = spells.heal;
player_spells[# 106, 2] = 0.6;
player_spells[# 106, 3] = spells.mag_up;
player_spells[# 106, 4] = 2;
player_spells[# 106, 5] = element.nature;
player_spells[# 106, 6] = true;
player_spells[# 106, 7] = 10;

player_spells[# 107, 0] = "Brave Bark";
player_spells[# 107, 1] = spells.sheild;
player_spells[# 107, 2] = 0.4;
player_spells[# 107, 3] = spells.null;
player_spells[# 107, 4] = -1;
player_spells[# 107, 5] = element.nature;
player_spells[# 107, 6] = true;
player_spells[# 107, 7] = 4;

player_spells[# 108, 0] = "Leaf Cloak";
player_spells[# 108, 1] = spells.def_up;
player_spells[# 108, 2] = 1;
player_spells[# 108, 3] = spells.null;
player_spells[# 108, 4] = -1;
player_spells[# 108, 5] = element.nature;
player_spells[# 108, 6] = true;
player_spells[# 108, 7] = 2;

player_spells[# 109, 0] = "Honey Comb";
player_spells[# 109, 1] = spells.def_up;
player_spells[# 109, 2] = 2;
player_spells[# 109, 3] = spells.null;
player_spells[# 109, 4] = -1;
player_spells[# 109, 5] = element.nature;
player_spells[# 109, 6] = true;
player_spells[# 109, 7] = 4;

player_spells[# 110, 0] = "Insect Eyes";
player_spells[# 110, 1] = spells.skl_up;
player_spells[# 110, 2] = 3;
player_spells[# 110, 3] = spells.null;
player_spells[# 110, 4] = -1;
player_spells[# 110, 5] = element.nature;
player_spells[# 110, 6] = true;
player_spells[# 110, 7] = 6;

player_spells[# 111, 0] = "Tree of Life";
player_spells[# 111, 1] = spells.all_up;
player_spells[# 111, 2] = 2;
player_spells[# 111, 3] = spells.null;
player_spells[# 111, 4] = -1;
player_spells[# 111, 5] = element.nature;
player_spells[# 111, 6] = true;
player_spells[# 111, 7] = 8;

player_spells[# 112, 0] = "Crown of Thorns";
player_spells[# 112, 1] = spells.all_up;
player_spells[# 112, 2] = 10;
player_spells[# 112, 3] = spells.lose_hp;
player_spells[# 112, 4] = 0.5;
player_spells[# 112, 5] = element.nature;
player_spells[# 112, 6] = true;
player_spells[# 112, 7] = 25;

player_spells[# 113, 0] = "Sweet Scent";
player_spells[# 113, 1] = spells.mag_down;
player_spells[# 113, 2] = 2;
player_spells[# 113, 3] = spells.null;
player_spells[# 113, 4] = -1;
player_spells[# 113, 5] = element.nature;
player_spells[# 113, 6] = false;
player_spells[# 113, 7] = 4;

player_spells[# 114, 0] = "Wrapping Ivy";
player_spells[# 114, 1] = spells.spd_down;
player_spells[# 114, 2] = 1;
player_spells[# 114, 3] = spells.null;
player_spells[# 114, 4] = -1;
player_spells[# 114, 5] = element.nature;
player_spells[# 114, 6] = false;
player_spells[# 114, 7] = 2;

player_spells[# 115, 0] = "Pollen Puff";
player_spells[# 115, 1] = spells.petrify;
player_spells[# 115, 2] = 0.2;
player_spells[# 115, 3] = spells.null;
player_spells[# 115, 4] = -1;
player_spells[# 115, 5] = element.nature;
player_spells[# 115, 6] = false;
player_spells[# 115, 7] = 4;

player_spells[# 116, 0] = "Lilly Lips";
player_spells[# 116, 1] = spells.petrify;
player_spells[# 116, 2] = 0.3;
player_spells[# 116, 3] = spells.null;
player_spells[# 116, 4] = -1;
player_spells[# 116, 5] = element.nature;
player_spells[# 116, 6] = false;
player_spells[# 116, 7] = 6;

player_spells[# 117, 0] = "Poison Kiss";
player_spells[# 117, 1] = spells.curse;
player_spells[# 117, 2] = 0.5;
player_spells[# 117, 3] = spells.null;
player_spells[# 117, 4] = -1;
player_spells[# 117, 5] = element.dark;
player_spells[# 117, 6] = false;
player_spells[# 117, 7] = 10;

player_spells[# 118, 0] = "Forest Curse";
player_spells[# 118, 1] = spells.curse;
player_spells[# 118, 2] = 0.8;
player_spells[# 118, 3] = spells.null;
player_spells[# 118, 4] = -1;
player_spells[# 118, 5] = element.nature;
player_spells[# 118, 6] = false;
player_spells[# 118, 7] = 16;
#endregion

// Magic
#region
player_spells[# 119, 0] = "Elemental Beam";
player_spells[# 119, 1] = spells.attack;
player_spells[# 119, 2] = 0.2;
player_spells[# 119, 3] = spells.null;
player_spells[# 119, 4] = -1;
player_spells[# 119, 5] = element.magic;
player_spells[# 119, 6] = false;
player_spells[# 119, 7] = 2;

player_spells[# 120, 0] = "Star Strike";
player_spells[# 120, 1] = spells.attack;
player_spells[# 120, 2] = 0.4;
player_spells[# 120, 3] = spells.null;
player_spells[# 120, 4] = -1;
player_spells[# 120, 5] = element.magic;
player_spells[# 120, 6] = false;
player_spells[# 120, 7] = 4;

player_spells[# 121, 0] = "Rainbow Beam";
player_spells[# 121, 1] = spells.attack;
player_spells[# 121, 2] = 0.6;
player_spells[# 121, 3] = spells.null;
player_spells[# 121, 4] = -1;
player_spells[# 121, 5] = element.magic;
player_spells[# 121, 6] = false;
player_spells[# 121, 7] = 6;

player_spells[# 122, 0] = "Exploding Ether";
player_spells[# 122, 1] = spells.charge_plus_hp;
player_spells[# 122, 2] = 1;
player_spells[# 122, 3] = spells.null;
player_spells[# 122, 4] = -1;
player_spells[# 122, 5] = element.magic;
player_spells[# 122, 6] = false;
player_spells[# 122, 7] = 16;

player_spells[# 123, 0] = "Tick Tock";
player_spells[# 123, 1] = spells.multi_attack;
player_spells[# 123, 2] = 0.6;
player_spells[# 123, 3] = spells.null;
player_spells[# 123, 4] = 12;
player_spells[# 123, 5] = element.magic;
player_spells[# 123, 6] = false;
player_spells[# 123, 7] = 16;

player_spells[# 124, 0] = "Purgatorio";
player_spells[# 124, 1] = spells.attack;
player_spells[# 124, 2] = 2;
player_spells[# 124, 3] = spells.instant_death;
player_spells[# 124, 4] = 0.1;
player_spells[# 124, 5] = element.magic;
player_spells[# 124, 6] = false;
player_spells[# 124, 7] = 40;

player_spells[# 125, 0] = "Reality Rip";
player_spells[# 125, 1] = spells.instant_death;
player_spells[# 125, 2] = 0.2;
player_spells[# 125, 3] = spells.null;
player_spells[# 125, 4] = -1;
player_spells[# 125, 5] = element.magic;
player_spells[# 125, 6] = false;
player_spells[# 125, 7] = 32;

player_spells[# 126, 0] = "Liquid Life";
player_spells[# 126, 1] = spells.heal;
player_spells[# 126, 2] = 0.4;
player_spells[# 126, 3] = spells.all_up;
player_spells[# 126, 4] = 1;
player_spells[# 126, 5] = element.magic;
player_spells[# 126, 6] = true;
player_spells[# 126, 7] = 8;

player_spells[# 127, 0] = "Mirror Mirror";
player_spells[# 127, 1] = spells.reflect;
player_spells[# 127, 2] = 0.4;
player_spells[# 127, 3] = spells.null;
player_spells[# 127, 4] = -1;
player_spells[# 127, 5] = element.magic;
player_spells[# 127, 6] = true;
player_spells[# 127, 7] = 8;

player_spells[# 128, 0] = "Rainbow Reflect";
player_spells[# 128, 1] = spells.reflect;
player_spells[# 128, 2] = 0.8;
player_spells[# 128, 3] = spells.def_up;
player_spells[# 128, 4] = 2;
player_spells[# 128, 5] = element.magic;
player_spells[# 128, 6] = true;
player_spells[# 128, 7] = 20;

player_spells[# 129, 0] = "Periodic Pearls";
player_spells[# 129, 1] = spells.double_buff;
player_spells[# 129, 2] = 0;
player_spells[# 129, 3] = spells.null;
player_spells[# 129, 4] = -1;
player_spells[# 129, 5] = element.magic;
player_spells[# 129, 6] = true;
player_spells[# 129, 7] = 14;

player_spells[# 130, 0] = "Elemental Transfer";
player_spells[# 130, 1] = spells.steal_buff;
player_spells[# 130, 2] = 0;
player_spells[# 130, 3] = spells.null;
player_spells[# 130, 4] = -1;
player_spells[# 130, 5] = element.magic;
player_spells[# 130, 6] = false;
player_spells[# 130, 7] = 14;

player_spells[# 131, 0] = "Rippling Reflection";
player_spells[# 131, 1] = spells.skl_down;
player_spells[# 131, 2] = 2;
player_spells[# 131, 3] = spells.null;
player_spells[# 131, 4] = -1;
player_spells[# 131, 5] = element.magic;
player_spells[# 131, 6] = false;
player_spells[# 131, 7] = 4;

player_spells[# 132, 0] = "Song of the Lost";
player_spells[# 132, 1] = spells.def_down;
player_spells[# 132, 2] = 2;
player_spells[# 132, 3] = spells.mag_down;
player_spells[# 132, 4] = 2;
player_spells[# 132, 5] = element.magic;
player_spells[# 132, 6] = false;
player_spells[# 132, 7] = 8;

player_spells[# 133, 0] = "Circes Chant";
player_spells[# 133, 1] = spells.hp_phase_down;
player_spells[# 133, 2] = -1;
player_spells[# 133, 3] = spells.null;
player_spells[# 133, 4] = -1;
player_spells[# 133, 5] = element.magic;
player_spells[# 133, 6] = false;
player_spells[# 133, 7] = 20;

player_spells[# 134, 0] = "Toxic Mist";
player_spells[# 134, 1] = spells.curse;
player_spells[# 134, 2] = 0.2;
player_spells[# 134, 3] = spells.null;
player_spells[# 134, 4] = -1;
player_spells[# 134, 5] = element.dark;
player_spells[# 134, 6] = false;
player_spells[# 134, 7] = 4;

player_spells[# 135, 0] = "Liquid Luck";
player_spells[# 135, 1] = spells.skl_up;
player_spells[# 135, 2] = 4;
player_spells[# 135, 3] = spells.null;
player_spells[# 135, 4] = -1;
player_spells[# 135, 5] = element.magic;
player_spells[# 135, 6] = true;
player_spells[# 135, 7] = 8;

player_spells[# 136, 0] = "Corrosive Crown";
player_spells[# 136, 1] = spells.curse;
player_spells[# 136, 2] = 0.6;
player_spells[# 136, 3] = spells.null;
player_spells[# 136, 4] = -1;
player_spells[# 136, 5] = element.magic;
player_spells[# 136, 6] = false;
player_spells[# 136, 7] = 12;
#endregion

// Light
#region
player_spells[# 137, 0] = "Sun Beam";
player_spells[# 137, 1] = spells.attack;
player_spells[# 137, 2] = 0.3;
player_spells[# 137, 3] = spells.null;
player_spells[# 137, 4] = -1;
player_spells[# 137, 5] = element.light;
player_spells[# 137, 6] = false;
player_spells[# 137, 7] = 3;

player_spells[# 138, 0] = "Sparkling Slash";
player_spells[# 138, 1] = spells.attack;
player_spells[# 138, 2] = 0.5;
player_spells[# 138, 3] = spells.null;
player_spells[# 138, 4] = -1;
player_spells[# 138, 5] = element.light;
player_spells[# 138, 6] = false;
player_spells[# 138, 7] = 5;

player_spells[# 139, 0] = "Royal Attack Order";
player_spells[# 139, 1] = spells.attack;
player_spells[# 139, 2] = 1;
player_spells[# 139, 3] = spells.null;
player_spells[# 139, 4] = -1;
player_spells[# 139, 5] = element.light;
player_spells[# 139, 6] = false;
player_spells[# 139, 7] = 10;

player_spells[# 140, 0] = "Sun Burst";
player_spells[# 140, 1] = spells.attack;
player_spells[# 140, 2] = 0.6;
player_spells[# 140, 3] = spells.def_down;
player_spells[# 140, 4] = 1;
player_spells[# 140, 5] = element.light;
player_spells[# 140, 6] = false;
player_spells[# 140, 7] = 8;

player_spells[# 141, 0] = "Iridescent Strike";
player_spells[# 141, 1] = spells.attack;
player_spells[# 141, 2] = 0.6;
player_spells[# 141, 3] = spells.blind;
player_spells[# 141, 4] = 0.4;
player_spells[# 141, 5] = element.light;
player_spells[# 141, 6] = false;
player_spells[# 141, 7] = 12

player_spells[# 142, 0] = "Ocean of Light";
player_spells[# 142, 1] = spells.attack;
player_spells[# 142, 2] = 1;
player_spells[# 142, 3] = spells.mag_down;
player_spells[# 142, 4] = 3;
player_spells[# 142, 5] = element.light;
player_spells[# 142, 6] = false;
player_spells[# 142, 7] = 16;

player_spells[# 143, 0] = "Sun Kiss";
player_spells[# 143, 1] = spells.absorb_attack;
player_spells[# 143, 2] = 0.4;
player_spells[# 143, 3] =  spells.null;
player_spells[# 143, 4] = 0.2;
player_spells[# 143, 5] = element.light;
player_spells[# 143, 6] = false;
player_spells[# 143, 7] = 6;

player_spells[# 144, 0] = "Solar Star Strike";
player_spells[# 144, 1] = spells.absorb_attack;
player_spells[# 144, 2] = 1;
player_spells[# 144, 3] =  spells.null;
player_spells[# 144, 4] = 0.6;
player_spells[# 144, 5] = element.light;
player_spells[# 144, 6] = false;
player_spells[# 144, 7] = 16;

player_spells[# 145, 0] = "Paradiso";
player_spells[# 145, 1] = spells.attack;
player_spells[# 145, 2] = 2;
player_spells[# 145, 3] = spells.instant_death;
player_spells[# 145, 4] = 0.1;
player_spells[# 145, 5] = element.light;
player_spells[# 145, 6] = false;
player_spells[# 145, 7] = 40;

player_spells[# 146, 0] = "Ray of Light";
player_spells[# 146, 1] = spells.heal;
player_spells[# 146, 2] = 0.2;
player_spells[# 146, 3] = spells.null;
player_spells[# 146, 4] = -1;
player_spells[# 146, 5] = element.light;
player_spells[# 146, 6] = true;
player_spells[# 146, 7] = 2;

player_spells[# 147, 0] = "Royal Ambroisa";
player_spells[# 147, 1] = spells.heal;
player_spells[# 147, 2] = 0.8;
player_spells[# 147, 3] = spells.null;
player_spells[# 147, 4] = -1;
player_spells[# 147, 5] = element.nature;
player_spells[# 147, 6] = true;
player_spells[# 147, 7] = 8;

player_spells[# 148, 0] = "Heavenly Light";
player_spells[# 148, 1] = spells.heal;
player_spells[# 148, 2] = 1;
player_spells[# 148, 3] = spells.null;
player_spells[# 148, 4] = -1;
player_spells[# 148, 5] = element.light;
player_spells[# 148, 6] = true;
player_spells[# 148, 7] = 10;

player_spells[# 149, 0] = "Opal Order";
player_spells[# 149, 1] = spells.heal;
player_spells[# 149, 2] = 0.2;
player_spells[# 149, 3] = spells.mag_up;
player_spells[# 149, 4] = 1;
player_spells[# 149, 5] = element.light;
player_spells[# 149, 6] = true;
player_spells[# 149, 7] = 4;

player_spells[# 150, 0] = "Au Soleil";
player_spells[# 150, 1] = spells.mag_up;
player_spells[# 150, 2] = 1;
player_spells[# 150, 3] = spells.null;
player_spells[# 150, 4] = -1;
player_spells[# 150, 5] = element.light;
player_spells[# 150, 6] = true;
player_spells[# 150, 7] = 2;

player_spells[# 151, 0] = "Golden Glow";
player_spells[# 151, 1] = spells.skl_up;
player_spells[# 151, 2] = 2;
player_spells[# 151, 3] = spells.null;
player_spells[# 151, 4] = -1;
player_spells[# 151, 5] = element.light;
player_spells[# 151, 6] = true;
player_spells[# 151, 7] = 4;

player_spells[# 152, 0] = "Solar Burn";
player_spells[# 152, 1] = spells.mag_down;
player_spells[# 152, 2] = 4;
player_spells[# 152, 3] = spells.null;
player_spells[# 152, 4] = -1;
player_spells[# 152, 5] = element.light;
player_spells[# 152, 6] = false;
player_spells[# 152, 7] = 8;

player_spells[# 153, 0] = "Blinding Light";
player_spells[# 153, 1] = spells.blind;
player_spells[# 153, 2] = 0.4;
player_spells[# 153, 3] = spells.null;
player_spells[# 153, 4] = -1;
player_spells[# 153, 5] = element.light;
player_spells[# 153, 6] = false;
player_spells[# 153, 7] = 8;

player_spells[# 154, 0] = "Dazzling Dust";
player_spells[# 154, 1] = spells.blind;
player_spells[# 154, 2] = 0.6;
player_spells[# 154, 3] = spells.null;
player_spells[# 154, 4] = -1;
player_spells[# 154, 5] = element.earth;
player_spells[# 154, 6] = false;
player_spells[# 154, 7] = 12;
#endregion

// Dark
#region
player_spells[# 155, 0] = "Shadow Strike";
player_spells[# 155, 1] = spells.attack;
player_spells[# 155, 2] = 0.2;
player_spells[# 155, 3] = spells.null;
player_spells[# 155, 4] = -1;
player_spells[# 155, 5] = element.dark;
player_spells[# 155, 6] = false;
player_spells[# 155, 7] = 2;

player_spells[# 156, 0] = "Moon Beam";
player_spells[# 156, 1] = spells.attack;
player_spells[# 156, 2] = 0.3;
player_spells[# 156, 3] = spells.null;
player_spells[# 156, 4] = -1;
player_spells[# 156, 5] = element.dark;
player_spells[# 156, 6] = false;
player_spells[# 156, 7] = 3;

player_spells[# 157, 0] = "Darkness Bolt";
player_spells[# 157, 1] = spells.attack;
player_spells[# 157, 2] = 0.5;
player_spells[# 157, 3] = spells.null;
player_spells[# 157, 4] = -1;
player_spells[# 157, 5] = element.dark;
player_spells[# 157, 6] = false;
player_spells[# 157, 7] = 5;

player_spells[# 158, 0] = "Phantom Flight";
player_spells[# 158, 1] = spells.attack;
player_spells[# 158, 2] = 0.6;
player_spells[# 158, 3] = spells.null;
player_spells[# 158, 4] = -1;
player_spells[# 158, 5] = element.dark;
player_spells[# 158, 6] = false;
player_spells[# 158, 7] = 6;

player_spells[# 159, 0] = "Stinging Stab";
player_spells[# 159, 1] = spells.attack;
player_spells[# 159, 2] = 0.6;
player_spells[# 159, 3] = spells.null;
player_spells[# 159, 4] = -1;
player_spells[# 159, 5] = element.dark;
player_spells[# 159, 6] = false;
player_spells[# 159, 7] = 6;

player_spells[# 160, 0] = "Shadow Sphere";
player_spells[# 160, 1] = spells.attack;
player_spells[# 160, 2] = 0.8;
player_spells[# 160, 3] = spells.null;
player_spells[# 160, 4] = -1;
player_spells[# 160, 5] = element.dark;
player_spells[# 160, 6] = false;
player_spells[# 160, 7] = 8;

player_spells[# 161, 0] = "Moon Burst";
player_spells[# 161, 1] = spells.attack;
player_spells[# 161, 2] = 0.6;
player_spells[# 161, 3] = spells.def_up;
player_spells[# 161, 4] = 1;
player_spells[# 161, 5] = element.dark;
player_spells[# 161, 6] = false;
player_spells[# 161, 7] = 8;

player_spells[# 162, 0] = "Haunting Ray";
player_spells[# 162, 1] = spells.attack;
player_spells[# 162, 2] = 0.4;
player_spells[# 162, 3] = spells.curse;
player_spells[# 162, 4] = 0.2;
player_spells[# 162, 5] = element.dark;
player_spells[# 162, 6] = false;
player_spells[# 162, 7] = 8;

player_spells[# 163, 0] = "Demonica Excorsized";
player_spells[# 163, 1] = spells.charge_attack;
player_spells[# 163, 2] = 1.8;
player_spells[# 163, 3] = spells.null;
player_spells[# 163, 4] = -1;
player_spells[# 163, 5] = element.dark;
player_spells[# 163, 6] = false;
player_spells[# 163, 7] = 20;

player_spells[# 164, 0] = "Sharp Stinger";
player_spells[# 164, 1] = spells.multi_attack;
player_spells[# 164, 2] = 0.1;
player_spells[# 164, 3] = spells.null;
player_spells[# 164, 4] = 4;
player_spells[# 164, 5] = element.dark;
player_spells[# 164, 6] = false;
player_spells[# 164, 7] = 10;

player_spells[# 165, 0] = "Ivory Fangs";
player_spells[# 165, 1] = spells.absorb_attack;
player_spells[# 165, 2] = 0.4;
player_spells[# 165, 3] =  spells.null;
player_spells[# 165, 4] = 0.2;
player_spells[# 165, 5] = element.dark;
player_spells[# 165, 6] = false;
player_spells[# 165, 7] = 6;

player_spells[# 166, 0] = "Inferno";
player_spells[# 166, 1] = spells.attack;
player_spells[# 166, 2] = 2;
player_spells[# 166, 3] = spells.instant_death;
player_spells[# 166, 4] = 0.1;
player_spells[# 166, 5] = element.dark;
player_spells[# 166, 6] = false;
player_spells[# 166, 7] = 40;

player_spells[# 167, 0] = "Onyx Order";
player_spells[# 167, 1] = spells.heal;
player_spells[# 167, 2] = 0.2;
player_spells[# 167, 3] = spells.def_up;
player_spells[# 167, 4] = 1;
player_spells[# 167, 5] = element.dark;
player_spells[# 167, 6] = true;
player_spells[# 167, 7] = 4;

player_spells[# 168, 0] = "Obscuring Darkness";
player_spells[# 168, 1] = spells.blind;
player_spells[# 168, 2] = 0.6;
player_spells[# 168, 3] = spells.null;
player_spells[# 168, 4] = -1;
player_spells[# 168, 5] = element.dark;
player_spells[# 168, 6] = false;
player_spells[# 168, 7] = 12;

player_spells[# 169, 0] = "Banshee's Scream";
player_spells[# 169, 1] = spells.deaf;
player_spells[# 169, 2] = 1;
player_spells[# 169, 3] = spells.null;
player_spells[# 169, 4] = -1;
player_spells[# 169, 5] = element.dark;
player_spells[# 169, 6] = false;
player_spells[# 169, 7] = 20;

player_spells[# 170, 0] = "Death Glare";
player_spells[# 170, 1] = spells.petrify;
player_spells[# 170, 2] = 0.6;
player_spells[# 170, 3] = spells.null;
player_spells[# 170, 4] = -1;
player_spells[# 170, 5] = element.dark;
player_spells[# 170, 6] = false;
player_spells[# 170, 7] = 12;

player_spells[# 171, 0] = "Darkness Curse";
player_spells[# 171, 1] = spells.curse;
player_spells[# 171, 2] = 0.2;
player_spells[# 171, 3] = spells.null;
player_spells[# 171, 4] = -1;
player_spells[# 171, 5] = element.dark;
player_spells[# 171, 6] = false;
player_spells[# 171, 7] = 4;

player_spells[# 172, 0] = "Hellish Haze";
player_spells[# 172, 1] = spells.curse;
player_spells[# 172, 2] = 0.4;
player_spells[# 172, 3] = spells.spd_down;
player_spells[# 172, 4] = 1;
player_spells[# 172, 5] = element.dark;
player_spells[# 172, 6] = false;
player_spells[# 172, 7] = 10;
#endregion

// New
#region
player_spells[# 173, 0] = "Frozen Comet";
player_spells[# 173, 1] = spells.all_down;
player_spells[# 173, 2] = 10;
player_spells[# 173, 3] = spells.null;
player_spells[# 173, 4] = -1;
player_spells[# 173, 5] = element.air;
player_spells[# 173, 6] = false;
player_spells[# 173, 7] = 32;

player_spells[# 174, 0] = "Queen's Gambit";
player_spells[# 174, 1] = spells.petrify;
player_spells[# 174, 2] = 1;
player_spells[# 174, 3] = spells.def_down;
player_spells[# 174, 4] = 4;
player_spells[# 174, 5] = element.nature;
player_spells[# 174, 6] = false;
player_spells[# 174, 7] = 28;

player_spells[# 175, 0] = "Halo of Light";
player_spells[# 175, 1] = spells.reflect;
player_spells[# 175, 2] = 1;
player_spells[# 175, 3] = spells.mag_up;
player_spells[# 175, 4] = 4;
player_spells[# 175, 5] = element.light;
player_spells[# 175, 6] = true;
player_spells[# 175, 7] = 28;

player_spells[# 176, 0] = "World's Serpent";
player_spells[# 176, 1] = spells.attack;
player_spells[# 176, 2] = 1.6;
player_spells[# 176, 3] = spells.deaf;
player_spells[# 176, 4] = 1;
player_spells[# 176, 5] = element.earth;
player_spells[# 176, 6] = false;
player_spells[# 176, 7] = 30;

player_spells[# 177, 0] = "Silver Millennium";
player_spells[# 177, 1] = spells.double_attack;
player_spells[# 177, 2] = 1;
player_spells[# 177, 3] = spells.all_up;
player_spells[# 177, 4] = 4;
player_spells[# 177, 5] = element.light;
player_spells[# 177, 6] = false;
player_spells[# 177, 7] = 28;

player_spells[# 178, 0] = "Depths of Darkness";
player_spells[# 178, 1] = spells.instant_death;
player_spells[# 178, 2] = 0.4;
player_spells[# 178, 3] = spells.blind;
player_spells[# 178, 4] = 1;
player_spells[# 178, 5] = element.dark;
player_spells[# 178, 6] = false;
player_spells[# 178, 7] = 64;

player_spells[# 179, 0] = "Moon Escalation";
player_spells[# 179, 1] = spells.mag_up;
player_spells[# 179, 2] = 3;
player_spells[# 179, 3] = spells.null;
player_spells[# 179, 4] = -1;
player_spells[# 179, 5] = element.light;
player_spells[# 179, 6] = true;
player_spells[# 179, 7] = 6;

player_spells[# 180, 0] = "Night Wave";
player_spells[# 180, 1] = spells.attack;
player_spells[# 180, 2] = 0.2;
player_spells[# 180, 3] = spells.mag_up;
player_spells[# 180, 4] = 2;
player_spells[# 180, 5] = element.water;
player_spells[# 180, 6] = false;
player_spells[# 180, 7] = 8;

player_spells[# 181, 0] = "Dragon's Heart";
player_spells[# 181, 1] = spells.attack;
player_spells[# 181, 2] = 1;
player_spells[# 181, 3] = spells.mag_up;
player_spells[# 181, 4] = 6;
player_spells[# 181, 5] = element.fire;
player_spells[# 181, 6] = false;
player_spells[# 181, 7] = 22;

player_spells[# 182, 0] = "Dragons Flame";
player_spells[# 182, 1] = spells.all_up;
player_spells[# 182, 2] = 8;
player_spells[# 182, 3] = spells.all_down;
player_spells[# 182, 4] = 8;
player_spells[# 182, 5] = element.fire;
player_spells[# 182, 6] = true;
player_spells[# 182, 7] = 32;

player_spells[# 183, 0] = "Double Eclispe";
player_spells[# 183, 1] = spells.absorb_attack;
player_spells[# 183, 2] = 1.4;
player_spells[# 183, 3] =  spells.null;
player_spells[# 183, 4] = 2;
player_spells[# 183, 5] = element.light;
player_spells[# 183, 6] = false;
player_spells[# 183, 7] = 34;

player_spells[# 184, 0] = "Power of the Sun";
player_spells[# 184, 1] = spells.attack;
player_spells[# 184, 2] = 2;
player_spells[# 184, 3] = spells.null;
player_spells[# 184, 4] = -1;
player_spells[# 184, 5] = element.light;
player_spells[# 184, 6] = false;
player_spells[# 184, 7] = 20;

player_spells[# 185, 0] = "Return to Nature";
player_spells[# 185, 1] = spells.heal_enemy;
player_spells[# 185, 2] = 1;
player_spells[# 185, 3] = spells.all_down;
player_spells[# 185, 4] = 20;
player_spells[# 185, 5] = element.nature;
player_spells[# 185, 6] = false;
player_spells[# 185, 7] = 28;

player_spells[# 186, 0] = "Breath of the World";
player_spells[# 186, 1] = spells.heal_party;
player_spells[# 186, 2] = 2;
player_spells[# 186, 3] = spells.null;
player_spells[# 186, 4] = -1;
player_spells[# 186, 5] = element.nature;
player_spells[# 186, 6] = false;
player_spells[# 186, 7] = 26;

player_spells[# 187, 0] = "Plasma Ball";
player_spells[# 187, 1] = spells.attack;
player_spells[# 187, 2] = 0.5;
player_spells[# 187, 3] = spells.null;
player_spells[# 187, 4] = -1;
player_spells[# 187, 5] = element.water;
player_spells[# 187, 6] = false;
player_spells[# 187, 7] = 5;

player_spells[# 188, 0] = "Morphix Tidal Wave";
player_spells[# 188, 1] = spells.attack;
player_spells[# 188, 2] = 1.8;
player_spells[# 188, 3] = spells.all_down;
player_spells[# 188, 4] = 4;
player_spells[# 188, 5] = element.water;
player_spells[# 188, 6] = false;
player_spells[# 188, 7] = 26;

player_spells[# 189, 0] = "Pure Morphix";
player_spells[# 189, 1] = spells.attack;
player_spells[# 189, 2] = 2.4;
player_spells[# 189, 3] = spells.null;
player_spells[# 189, 4] = -1;
player_spells[# 189, 5] = element.water;
player_spells[# 189, 6] = false;
player_spells[# 189, 7] = 24;

player_spells[# 190, 0] = "Sonic Boom";
player_spells[# 190, 1] = spells.attack;
player_spells[# 190, 2] = 0.5;
player_spells[# 190, 3] = spells.null;
player_spells[# 190, 4] = -1;
player_spells[# 190, 5] = element.air;
player_spells[# 190, 6] = false;
player_spells[# 190, 7] = 5;

player_spells[# 191, 0] = "Sonic Bomb";
player_spells[# 191, 1] = spells.attack;
player_spells[# 191, 2] = 0.8;
player_spells[# 191, 3] = spells.def_down;
player_spells[# 191, 4] = 2;
player_spells[# 191, 5] = element.air;
player_spells[# 191, 6] = false;
player_spells[# 191, 7] = 12;

player_spells[# 192, 0] = "Bass Boom";
player_spells[# 192, 1] = spells.attack;
player_spells[# 192, 2] = 1.6;
player_spells[# 192, 3] = spells.null;
player_spells[# 192, 4] = -1;
player_spells[# 192, 5] = element.air;
player_spells[# 192, 6] = false;
player_spells[# 192, 7] = 16;

player_spells[# 193, 0] = "Power of Harmony";
player_spells[# 193, 1] = spells.heal_party;
player_spells[# 193, 2] = 0.8;
player_spells[# 193, 3] = spells.all_down;
player_spells[# 193, 4] = 4;
player_spells[# 193, 5] = element.air;
player_spells[# 193, 6] = false;
player_spells[# 193, 7] = 32;

player_spells[# 194, 0] = "Sonic Shield";
player_spells[# 194, 1] = spells.reflect;
player_spells[# 194, 2] = 1;
player_spells[# 194, 3] = spells.all_down;
player_spells[# 194, 4] = 4;
player_spells[# 194, 5] = element.air;
player_spells[# 194, 6] = true;
player_spells[# 194, 7] = 28;

player_spells[# 195, 0] = "Electric Beam";
player_spells[# 195, 1] = spells.attack;
player_spells[# 195, 2] = 0.5;
player_spells[# 195, 3] = spells.null;
player_spells[# 195, 4] = -1;
player_spells[# 195, 5] = element.air;
player_spells[# 195, 6] = false;
player_spells[# 195, 7] = 5;

player_spells[# 196, 0] = "Electro Cage";
player_spells[# 196, 1] = spells.petrify;
player_spells[# 196, 2] = 0.6;
player_spells[# 196, 3] = spells.null;
player_spells[# 196, 4] = -1;
player_spells[# 196, 5] = element.air;
player_spells[# 196, 6] = false;
player_spells[# 196, 7] = 12;

player_spells[# 197, 0] = "Digital Blast";
player_spells[# 197, 1] = spells.attack;
player_spells[# 197, 2] = 2;
player_spells[# 197, 3] = spells.null;
player_spells[# 197, 4] = -1;
player_spells[# 197, 5] = element.magic;
player_spells[# 197, 6] = false;
player_spells[# 197, 7] = 20;

player_spells[# 198, 0] = "Storm of Numbers";
player_spells[# 198, 1] = spells.multi_attack;
player_spells[# 198, 2] = 0.1;
player_spells[# 198, 3] = spells.null;
player_spells[# 198, 4] = 2;
player_spells[# 198, 5] = element.magic;
player_spells[# 198, 6] = false;
player_spells[# 198, 7] = 18;

player_spells[# 199, 0] = "Data Sphere";
player_spells[# 199, 1] = spells.sheild;
player_spells[# 199, 2] = 2;
player_spells[# 199, 3] = spells.null;
player_spells[# 199, 4] = -1;
player_spells[# 199, 5] = element.magic;
player_spells[# 199, 6] = true;
player_spells[# 199, 7] = 10;
#endregion

// New 2
#region
player_spells[# 200, 0] = "Sandy Shield";
player_spells[# 200, 1] = spells.sheild;
player_spells[# 200, 2] = 0.3;
player_spells[# 200, 3] = spells.null;
player_spells[# 200, 4] = -1;
player_spells[# 200, 5] = element.earth;
player_spells[# 200, 6] = true;
player_spells[# 200, 7] = 3;

player_spells[# 201, 0] = "Bubble Blast";
player_spells[# 201, 1] = spells.attack;
player_spells[# 201, 2] = 0.8;
player_spells[# 201, 3] = spells.null;
player_spells[# 201, 4] = -1;
player_spells[# 201, 5] = element.water;
player_spells[# 201, 6] = false;
player_spells[# 201, 7] = 8;

player_spells[# 202, 0] = "Mermaidic Pearl";
player_spells[# 202, 1] = spells.sheild;
player_spells[# 202, 2] = 1;
player_spells[# 202, 3] = spells.heal_party;
player_spells[# 202, 4] = 0.5;
player_spells[# 202, 5] = element.water;
player_spells[# 202, 6] = true;
player_spells[# 202, 7] = 22;

player_spells[# 203, 0] = "Amber Beam";
player_spells[# 203, 1] = spells.absorb_attack;
player_spells[# 203, 2] = 0.4;
player_spells[# 203, 3] = spells.null;
player_spells[# 203, 4] = 0.2;
player_spells[# 203, 5] = element.fire;
player_spells[# 203, 6] = false;
player_spells[# 203, 7] = 6;

player_spells[# 204, 0] = "Amber Flames";
player_spells[# 204, 1] = spells.absorb_attack;
player_spells[# 204, 2] = 0.6;
player_spells[# 204, 3] = spells.null;
player_spells[# 204, 4] = 0.4;
player_spells[# 204, 5] = element.fire;
player_spells[# 204, 6] = false;
player_spells[# 204, 7] = 10;

player_spells[# 205, 0] = "Amber Nova";
player_spells[# 205, 1] = spells.charge_attack;
player_spells[# 205, 2] = 0.8;
player_spells[# 205, 3] = spells.heal_party;
player_spells[# 205, 4] = 0.2;
player_spells[# 205, 5] = element.fire;
player_spells[# 205, 6] = false;
player_spells[# 205, 7] = 18;

player_spells[# 206, 0] = "Volcanic Crystal";
player_spells[# 206, 1] = spells.absorb_attack;
player_spells[# 206, 2] = 2;
player_spells[# 206, 3] = spells.null;
player_spells[# 206, 4] = 1;
player_spells[# 206, 5] = element.fire;
player_spells[# 206, 6] = false;
player_spells[# 206, 7] = 30;

player_spells[# 207, 0] = "Frost Cover";
player_spells[# 207, 1] = spells.sheild;
player_spells[# 207, 2] = 0.6;
player_spells[# 207, 3] = spells.null;
player_spells[# 207, 4] = -1;
player_spells[# 207, 5] = element.water;
player_spells[# 207, 6] = true;
player_spells[# 207, 7] = 6;

player_spells[# 208, 0] = "Snowflake Sword";
player_spells[# 208, 1] = spells.attack;
player_spells[# 208, 2] = 0.9;
player_spells[# 208, 3] = spells.null;
player_spells[# 208, 4] = -1;
player_spells[# 208, 5] = element.earth;
player_spells[# 208, 6] = false;
player_spells[# 208, 7] = 9;

player_spells[# 209, 0] = "Blizzard Blast";
player_spells[# 209, 1] = spells.charge_attack;
player_spells[# 209, 2] = 0.8;
player_spells[# 209, 3] = spells.null;
player_spells[# 209, 4] = -1;
player_spells[# 209, 5] = element.water;
player_spells[# 209, 6] = false;
player_spells[# 209, 7] = 10;

player_spells[# 210, 0] = "Dance of the Blue Moon";
player_spells[# 210, 1] = spells.attack;
player_spells[# 210, 2] = 2;
player_spells[# 210, 3] = spells.reflect;
player_spells[# 210, 4] = 1;
player_spells[# 210, 5] = element.air;
player_spells[# 210, 6] = false;
player_spells[# 210, 7] = 40;

player_spells[# 211, 0] = "Electro Wave";
player_spells[# 211, 1] = spells.petrify;
player_spells[# 211, 2] = 0.3;
player_spells[# 211, 3] = spells.null;
player_spells[# 211, 4] = -1;
player_spells[# 211, 5] = element.air;
player_spells[# 211, 6] = false;
player_spells[# 211, 7] = 6;

player_spells[# 212, 0] = "Neon Beam";
player_spells[# 212, 1] = spells.attack;
player_spells[# 212, 2] = 0.2;
player_spells[# 212, 3] = spells.petrify;
player_spells[# 212, 4] = 0.1;
player_spells[# 212, 5] = element.air;
player_spells[# 212, 6] = false;
player_spells[# 212, 7] = 4;

player_spells[# 213, 0] = "Mettalic Beam";
player_spells[# 213, 1] = spells.attack;
player_spells[# 213, 2] = 0.8;
player_spells[# 213, 3] = spells.def_up;
player_spells[# 213, 4] = 3;
player_spells[# 213, 5] = element.earth;
player_spells[# 213, 6] = false;
player_spells[# 213, 7] = 14;

player_spells[# 214, 0] = "Forge of Stars";
player_spells[# 214, 1] = spells.charge_attack;
player_spells[# 214, 2] = 1;
player_spells[# 214, 3] = spells.all_up;
player_spells[# 214, 4] = 4;
player_spells[# 214, 5] = element.earth;
player_spells[# 214, 6] = false;
player_spells[# 214, 7] = 20;

player_spells[# 215, 0] = "Prism Shard";
player_spells[# 215, 1] = spells.multi_attack;
player_spells[# 215, 2] = 0.05;
player_spells[# 215, 3] = spells.null;
player_spells[# 215, 4] = 4;
player_spells[# 215, 5] = element.light;
player_spells[# 215, 6] = false;
player_spells[# 215, 7] = 4;

player_spells[# 216, 0] = "Sword of Light";
player_spells[# 216, 1] = spells.attack;
player_spells[# 216, 2] = 0.9;
player_spells[# 216, 3] = spells.null;
player_spells[# 216, 4] = -1;
player_spells[# 216, 5] = element.light;
player_spells[# 216, 6] = false;
player_spells[# 216, 7] = 9;

player_spells[# 217, 0] = "Prismatic Shatter";
player_spells[# 217, 1] = spells.attack;
player_spells[# 217, 2] = 1.4;
player_spells[# 217, 3] = spells.def_down;
player_spells[# 217, 4] = 6;
player_spells[# 217, 5] = element.light;
player_spells[# 217, 6] = false;
player_spells[# 217, 7] = 28;

player_spells[# 218, 0] = "Midnight Cloak";
player_spells[# 218, 1] = spells.blind;
player_spells[# 218, 2] = 0.3;
player_spells[# 218, 3] = spells.null;
player_spells[# 218, 4] = -1;
player_spells[# 218, 5] = element.dark;
player_spells[# 218, 6] = false;
player_spells[# 218, 7] = 6;

player_spells[# 219, 0] = "Astro Beam";
player_spells[# 219, 1] = spells.attack;
player_spells[# 219, 2] = 0.5;
player_spells[# 219, 3] = spells.null;
player_spells[# 219, 4] = -1;
player_spells[# 219, 5] = element.magic;
player_spells[# 219, 6] = false;
player_spells[# 219, 7] = 5;

player_spells[# 220, 0] = "Star Whip";
player_spells[# 220, 1] = spells.whip_attack;
player_spells[# 220, 2] = 0.7;
player_spells[# 220, 3] = spells.null;
player_spells[# 220, 4] = -1;
player_spells[# 220, 5] = element.magic;
player_spells[# 220, 6] = false;
player_spells[# 220, 7] = 6;

player_spells[# 221, 0] = "Star Void";
player_spells[# 221, 1] = spells.attack;
player_spells[# 221, 2] = 0.8;
player_spells[# 221, 3] = spells.null;
player_spells[# 221, 4] = -1;
player_spells[# 221, 5] = element.magic;
player_spells[# 221, 6] = false;
player_spells[# 221, 7] = 8;

player_spells[# 222, 0] = "Constellation Crash";
player_spells[# 222, 1] = spells.multi_attack;
player_spells[# 222, 2] = 0.5;
player_spells[# 222, 3] = spells.null;
player_spells[# 222, 4] = 5;
player_spells[# 222, 5] = element.magic;
player_spells[# 222, 6] = false;
player_spells[# 222, 7] = 32;

player_spells[# 223, 0] = "Toxic Barb";
player_spells[# 223, 1] = spells.curse;
player_spells[# 223, 2] = 0.2;
player_spells[# 223, 3] = spells.null;
player_spells[# 223, 4] = -1;
player_spells[# 223, 5] = element.nature;
player_spells[# 223, 6] = false;
player_spells[# 223, 7] = 4;

player_spells[# 224, 0] = "Lethal Thorn";
player_spells[# 224, 1] = spells.double_curse;
player_spells[# 224, 2] = 1;
player_spells[# 224, 3] = spells.null;
player_spells[# 224, 4] = -1;
player_spells[# 224, 5] = element.nature;
player_spells[# 224, 6] = false;
player_spells[# 224, 7] = 12;

player_spells[# 225, 0] = "Botulinom Bloom";
player_spells[# 225, 1] = spells.attack;
player_spells[# 225, 2] = 1;
player_spells[# 225, 3] = spells.curse;
player_spells[# 225, 4] = 1;
player_spells[# 225, 5] = element.nature;
player_spells[# 225, 6] = false;
player_spells[# 225, 7] = 30;

player_spells[# 226, 0] = "Absorbing Velvet";
player_spells[# 226, 1] = spells.sheild;
player_spells[# 226, 2] = 0.6;
player_spells[# 226, 3] = spells.null;
player_spells[# 226, 4] = -1;
player_spells[# 226, 5] = element.dark;
player_spells[# 226, 6] = true;
player_spells[# 226, 7] = 6;

player_spells[# 227, 0] = "Midnight Void";
player_spells[# 227, 1] = spells.blind;
player_spells[# 227, 2] = 1;
player_spells[# 227, 3] = spells.null;
player_spells[# 227, 4] = -1;
player_spells[# 227, 5] = element.dark;
player_spells[# 227, 6] = false;
player_spells[# 227, 7] = 20;

#endregion

// New 3 Special Fairy

#region // wings: 1

player_spells[# 228, 0] = "Sun Charm";
player_spells[# 228, 1] = spells.attack;
player_spells[# 228, 2] = 0.2;
player_spells[# 228, 3] = spells.null;
player_spells[# 228, 4] = -1;
player_spells[# 228, 5] = element.light;
player_spells[# 228, 6] = false;
player_spells[# 228, 7] = 4;

player_spells[# 229, 0] = "Moon Charm";
player_spells[# 229, 1] = spells.attack;
player_spells[# 229, 2] = 0.2;
player_spells[# 229, 3] = spells.null;
player_spells[# 229, 4] = -1;
player_spells[# 229, 5] = element.dark;
player_spells[# 229, 6] = false;
player_spells[# 229, 7] = 4;

player_spells[# 230, 0] = "Magic Charm";
player_spells[# 230, 1] = spells.mag_up;
player_spells[# 230, 2] = 2;
player_spells[# 230, 3] = spells.null;
player_spells[# 230, 4] = -1;
player_spells[# 230, 5] = element.magic;
player_spells[# 230, 6] = true;
player_spells[# 230, 7] = 4;

player_spells[# 231, 0] = "Defense Charm";
player_spells[# 231, 1] = spells.def_up;
player_spells[# 231, 2] = 2;
player_spells[# 231, 3] = spells.null;
player_spells[# 231, 4] = -1;
player_spells[# 231, 5] = element.magic;
player_spells[# 231, 6] = true;
player_spells[# 231, 7] = 4;

player_spells[# 232, 0] = "Water Glyph";
player_spells[# 232, 1] = spells.attack;
player_spells[# 232, 2] = 0.2;
player_spells[# 232, 3] = spells.null;
player_spells[# 232, 4] = -1;
player_spells[# 232, 5] = element.water;
player_spells[# 232, 6] = false;
player_spells[# 232, 7] = 4;

player_spells[# 233, 0] = "Stone Glyph";
player_spells[# 233, 1] = spells.attack;
player_spells[# 233, 2] = 0.2;
player_spells[# 233, 3] = spells.null;
player_spells[# 233, 4] = -1;
player_spells[# 233, 5] = element.earth;
player_spells[# 233, 6] = false;
player_spells[# 233, 7] = 4;

player_spells[# 234, 0] = "Fire Glyph";
player_spells[# 234, 1] = spells.attack;
player_spells[# 234, 2] = 0.2;
player_spells[# 234, 3] = spells.null;
player_spells[# 234, 4] = -1;
player_spells[# 234, 5] = element.fire;
player_spells[# 234, 6] = false;
player_spells[# 234, 7] = 4;

player_spells[# 235, 0] = "Wind Glyph";
player_spells[# 235, 1] = spells.attack;
player_spells[# 235, 2] = 0.2;
player_spells[# 235, 3] = spells.null;
player_spells[# 235, 4] = -1;
player_spells[# 235, 5] = element.air;
player_spells[# 235, 6] = false;
player_spells[# 235, 7] = 4;

player_spells[# 236, 0] = "Nature Shard";
player_spells[# 236, 1] = spells.attack;
player_spells[# 236, 2] = 0.2;
player_spells[# 236, 3] = spells.null;
player_spells[# 236, 4] = -1;
player_spells[# 236, 5] = element.nature;
player_spells[# 236, 6] = false;
player_spells[# 236, 7] = 4;

player_spells[# 237, 0] = "Magic Shard";
player_spells[# 237, 1] = spells.attack;
player_spells[# 237, 2] = 0.2;
player_spells[# 237, 3] = spells.null;
player_spells[# 237, 4] = -1;
player_spells[# 237, 5] = element.magic;
player_spells[# 237, 6] = false;
player_spells[# 237, 7] = 4;

player_spells[# 238, 0] = "Healing Shard";
player_spells[# 238, 1] = spells.heal;
player_spells[# 238, 2] = 0.4;
player_spells[# 238, 3] = spells.null;
player_spells[# 238, 4] = -1;
player_spells[# 238, 5] = element.light;
player_spells[# 238, 6] = true;
player_spells[# 238, 7] = 4;

player_spells[# 239, 0] = "Shielding Shard";
player_spells[# 239, 1] = spells.sheild;
player_spells[# 239, 2] = 0.4;
player_spells[# 239, 3] = spells.null;
player_spells[# 239, 4] = -1;
player_spells[# 239, 5] = element.earth;
player_spells[# 239, 6] = true;
player_spells[# 239, 7] = 4;

#endregion

#region // wings: 2

player_spells[# 240, 0] = "Dreamlight Blast";
player_spells[# 240, 1] = spells.attack;
player_spells[# 240, 2] = 0.6;
player_spells[# 240, 3] = spells.null;
player_spells[# 240, 4] = -1;
player_spells[# 240, 5] = element.magic;
player_spells[# 240, 6] = false;
player_spells[# 240, 7] = 6;

player_spells[# 241, 0] = "Flaming Aurora";
player_spells[# 241, 1] = spells.attack;
player_spells[# 241, 2] = 0.6;
player_spells[# 241, 3] = spells.null;
player_spells[# 241, 4] = -1;
player_spells[# 241, 5] = element.fire;
player_spells[# 241, 6] = false;
player_spells[# 241, 7] = 6;

player_spells[# 242, 0] = "Endless Nightmare";
player_spells[# 242, 1] = spells.curse;
player_spells[# 242, 2] = 0.5;
player_spells[# 242, 3] = spells.null;
player_spells[# 242, 4] = -1;
player_spells[# 242, 5] = element.dark;
player_spells[# 242, 6] = false;
player_spells[# 242, 7] = 10;

player_spells[# 243, 0] = "Mythical Enhancement";
player_spells[# 243, 1] = spells.mag_up;
player_spells[# 243, 2] = 3;
player_spells[# 243, 3] = spells.null;
player_spells[# 243, 4] = -1;
player_spells[# 243, 5] = element.magic;
player_spells[# 243, 6] = true;
player_spells[# 243, 7] = 6;

player_spells[# 244, 0] = "Wave of Oceans";
player_spells[# 244, 1] = spells.attack;
player_spells[# 244, 2] = 0.6;
player_spells[# 244, 3] = spells.null;
player_spells[# 244, 4] = -1;
player_spells[# 244, 5] = element.water;
player_spells[# 244, 6] = false;
player_spells[# 244, 7] = 6;

player_spells[# 245, 0] = "Moonlight Arrow";
player_spells[# 245, 1] = spells.attack;
player_spells[# 245, 2] = 0.6;
player_spells[# 245, 3] = spells.null;
player_spells[# 245, 4] = -1;
player_spells[# 245, 5] = element.dark;
player_spells[# 245, 6] = false;
player_spells[# 245, 7] = 6;

player_spells[# 246, 0] = "Ocean's Song";
player_spells[# 246, 1] = spells.def_down;
player_spells[# 246, 2] = 3;
player_spells[# 246, 3] = spells.null;
player_spells[# 246, 4] = -1;
player_spells[# 246, 5] = element.water;
player_spells[# 246, 6] = false;
player_spells[# 246, 7] = 6;

player_spells[# 247, 0] = "Mermaidic Thrust";
player_spells[# 247, 1] = spells.absorb_attack;
player_spells[# 247, 2] = 0.5;
player_spells[# 247, 3] = spells.null;
player_spells[# 247, 4] = 0.4;
player_spells[# 247, 5] = element.water;
player_spells[# 247, 6] = false;
player_spells[# 247, 7] = 8;

player_spells[# 248, 0] = "Fairy Order";
player_spells[# 248, 1] = spells.attack;
player_spells[# 248, 2] = 0.6;
player_spells[# 248, 3] = spells.null;
player_spells[# 248, 4] = -1;
player_spells[# 248, 5] = element.nature;
player_spells[# 248, 6] = false;
player_spells[# 248, 7] = 6;

player_spells[# 249, 0] = "Sunlight Needle";
player_spells[# 249, 1] = spells.attack;
player_spells[# 249, 2] = 0.6;
player_spells[# 249, 3] = spells.null;
player_spells[# 249, 4] = -1;
player_spells[# 249, 5] = element.light;
player_spells[# 249, 6] = false;
player_spells[# 249, 7] = 6;

player_spells[# 250, 0] = "Fairy's Embrace";
player_spells[# 250, 1] = spells.heal;
player_spells[# 250, 2] = 0.6;
player_spells[# 250, 3] = spells.null;
player_spells[# 250, 4] = -1;
player_spells[# 250, 5] = element.nature;
player_spells[# 250, 6] = true;
player_spells[# 250, 7] = 6;

player_spells[# 251, 0] = "Magical Pollen";
player_spells[# 251, 1] = spells.heal_status;
player_spells[# 251, 2] = 1;
player_spells[# 251, 3] = spells.null;
player_spells[# 251, 4] = -1;
player_spells[# 251, 5] = element.nature;
player_spells[# 251, 6] = true;
player_spells[# 251, 7] = 8;

player_spells[# 252, 0] = "Meteor Strike";
player_spells[# 252, 1] = spells.attack;
player_spells[# 252, 2] = 0.6;
player_spells[# 252, 3] = spells.null;
player_spells[# 252, 4] = -1;
player_spells[# 252, 5] = element.earth;
player_spells[# 252, 6] = false;
player_spells[# 252, 7] = 6;

player_spells[# 253, 0] = "Whipping Winds";
player_spells[# 253, 1] = spells.attack;
player_spells[# 253, 2] = 0.6;
player_spells[# 253, 3] = spells.null;
player_spells[# 253, 4] = -1;
player_spells[# 253, 5] = element.air;
player_spells[# 253, 6] = false;
player_spells[# 253, 7] = 6;

player_spells[# 254, 0] = "Space Dust Sield";
player_spells[# 254, 1] = spells.sheild;
player_spells[# 254, 2] = 0.6;
player_spells[# 254, 3] = spells.null;
player_spells[# 254, 4] = -1;
player_spells[# 254, 5] = element.earth;
player_spells[# 254, 6] = true;
player_spells[# 254, 7] = 6;

player_spells[# 255, 0] = "Neon Prism";
player_spells[# 255, 1] = spells.def_up;
player_spells[# 255, 2] = 3;
player_spells[# 255, 3] = spells.null;
player_spells[# 255, 4] = -1;
player_spells[# 255, 5] = element.magic;
player_spells[# 255, 6] = true;
player_spells[# 255, 7] = 6;

#endregion

#region // wings: 3

player_spells[# 256, 0] = "Illuminating Eye";
player_spells[# 256, 1] = spells.attack;
player_spells[# 256, 2] = 1;
player_spells[# 256, 3] = spells.null;
player_spells[# 256, 4] = -1;
player_spells[# 256, 5] = element.magic;
player_spells[# 256, 6] = false;
player_spells[# 256, 7] = 10;

player_spells[# 257, 0] = "Time-Space Manipulation";
player_spells[# 257, 1] = spells.skl_up;
player_spells[# 257, 2] = 6;
player_spells[# 257, 3] = spells.null;
player_spells[# 257, 4] = -1;
player_spells[# 257, 5] = element.magic;
player_spells[# 257, 6] = true;
player_spells[# 257, 7] = 12;

player_spells[# 258, 0] = "Future Fortold";
player_spells[# 258, 1] = spells.curse;
player_spells[# 258, 2] = 0.8;
player_spells[# 258, 3] = spells.null;
player_spells[# 258, 4] = -1;
player_spells[# 258, 5] = element.magic;
player_spells[# 258, 6] = false;
player_spells[# 258, 7] = 12;

player_spells[# 259, 0] = "Star Selection";
player_spells[# 259, 1] = spells.blind;
player_spells[# 259, 2] = 1;
player_spells[# 259, 3] = spells.null;
player_spells[# 259, 4] = -1;
player_spells[# 259, 5] = element.light;
player_spells[# 259, 6] = false;
player_spells[# 259, 7] = 20;

player_spells[# 260, 0] = "Dragonic Bloom";
player_spells[# 260, 1] = spells.attack;
player_spells[# 260, 2] = 1;
player_spells[# 260, 3] = spells.null;
player_spells[# 260, 4] = -1;
player_spells[# 260, 5] = element.fire;
player_spells[# 260, 6] = false;
player_spells[# 260, 7] = 10;

player_spells[# 261, 0] = "Flame Vortex";
player_spells[# 261, 1] = spells.charge_attack;
player_spells[# 261, 2] = 0.6;
player_spells[# 261, 3] = spells.null;
player_spells[# 261, 4] = -1;
player_spells[# 261, 5] = element.fire;
player_spells[# 261, 6] = false;
player_spells[# 261, 7] = 10;

player_spells[# 262, 0] = "Flame of Creation";
player_spells[# 262, 1] = spells.mag_up;
player_spells[# 262, 2] = 8;
player_spells[# 262, 3] = spells.null;
player_spells[# 262, 4] = -1;
player_spells[# 262, 5] = element.fire;
player_spells[# 262, 6] = true;
player_spells[# 262, 7] = 12;

player_spells[# 263, 0] = "Mythical Armor";
player_spells[# 263, 1] = spells.def_up;
player_spells[# 263, 2] = 6;
player_spells[# 263, 3] = spells.null;
player_spells[# 263, 4] = -1;
player_spells[# 263, 5] = element.light;
player_spells[# 263, 6] = true;
player_spells[# 263, 7] = 12;

player_spells[# 264, 0] = "Infinite Whirlpool";
player_spells[# 264, 1] = spells.attack;
player_spells[# 264, 2] = 1;
player_spells[# 264, 3] = spells.null;
player_spells[# 264, 4] = -1;
player_spells[# 264, 5] = element.water;
player_spells[# 264, 6] = false;
player_spells[# 264, 7] = 10;

player_spells[# 265, 0] = "Midnight Essence";
player_spells[# 265, 1] = spells.attack;
player_spells[# 265, 2] = 1;
player_spells[# 265, 3] = spells.null;
player_spells[# 265, 4] = -1;
player_spells[# 265, 5] = element.dark;
player_spells[# 265, 6] = false;
player_spells[# 265, 7] = 10;

player_spells[# 266, 0] = "Curse of Sirenix";
player_spells[# 266, 1] = spells.curse;
player_spells[# 266, 2] = 1;
player_spells[# 266, 3] = spells.null;
player_spells[# 266, 4] = -1;
player_spells[# 266, 5] = element.water;
player_spells[# 266, 6] = false;
player_spells[# 266, 7] = 16;

player_spells[# 267, 0] = "Abyssal Seal";
player_spells[# 267, 1] = spells.all_down;
player_spells[# 267, 2] = 4;
player_spells[# 267, 3] = spells.null;
player_spells[# 267, 4] = -1;
player_spells[# 267, 5] = element.water;
player_spells[# 267, 6] = false;
player_spells[# 267, 7] = 14;

player_spells[# 268, 0] = "Crystal Coral Summoning";
player_spells[# 268, 1] = spells.attack;
player_spells[# 268, 2] = 1;
player_spells[# 268, 3] = spells.null;
player_spells[# 268, 4] = -1;
player_spells[# 268, 5] = element.water;
player_spells[# 268, 6] = false;
player_spells[# 268, 7] = 10;

player_spells[# 269, 0] = "Crystal Whip";
player_spells[# 269, 1] = spells.whip_attack;
player_spells[# 269, 2] = 1;
player_spells[# 269, 3] = spells.all_down;
player_spells[# 269, 4] = 2;
player_spells[# 269, 5] = element.earth;
player_spells[# 269, 6] = false;
player_spells[# 269, 7] = 16;

player_spells[# 270, 0] = "Royal Shield";
player_spells[# 270, 1] = spells.sheild;
player_spells[# 270, 2] = 0.8;
player_spells[# 270, 3] = spells.null;
player_spells[# 270, 4] = -1;
player_spells[# 270, 5] = element.light;
player_spells[# 270, 6] = true;
player_spells[# 270, 7] = 10;

player_spells[# 271, 0] = "Wishing Pearl";
player_spells[# 271, 1] = spells.all_up;
player_spells[# 271, 2] = 4;
player_spells[# 271, 3] = spells.null;
player_spells[# 271, 4] = -1;
player_spells[# 271, 5] = element.water;
player_spells[# 271, 6] = true;
player_spells[# 271, 7] = 14;

player_spells[# 272, 0] = "Nature's Wrath";
player_spells[# 272, 1] = spells.attack;
player_spells[# 272, 2] = 1;
player_spells[# 272, 3] = spells.null;
player_spells[# 272, 4] = -1;
player_spells[# 272, 5] = element.nature;
player_spells[# 272, 6] = false;
player_spells[# 272, 7] = 10;

player_spells[# 273, 0] = "Floral Symphony";
player_spells[# 273, 1] = spells.heal_party;
player_spells[# 273, 2] = 0.8;
player_spells[# 273, 3] = spells.null;
player_spells[# 273, 4] = -1;
player_spells[# 273, 5] = element.nature;
player_spells[# 273, 6] = true;
player_spells[# 273, 7] = 8;

player_spells[# 274, 0] = "Rainbow Wings";
player_spells[# 274, 1] = spells.spd_up;
player_spells[# 274, 2] = 6;
player_spells[# 274, 3] = spells.null;
player_spells[# 274, 4] = -1;
player_spells[# 274, 5] = element.air;
player_spells[# 274, 6] = true;
player_spells[# 274, 7] = 12;

player_spells[# 275, 0] = "Nature's Resonance";
player_spells[# 275, 1] = spells.deaf;
player_spells[# 275, 2] = 2;
player_spells[# 275, 3] = spells.null;
player_spells[# 275, 4] = -1;
player_spells[# 275, 5] = element.nature;
player_spells[# 275, 6] = false;
player_spells[# 275, 7] = 20;

player_spells[# 276, 0] = "Explosion of Light";
player_spells[# 276, 1] = spells.attack;
player_spells[# 276, 2] = 2;
player_spells[# 276, 3] = spells.null;
player_spells[# 276, 4] = -1;
player_spells[# 276, 5] = element.light;
player_spells[# 276, 6] = false;
player_spells[# 276, 7] = 10;

player_spells[# 277, 0] = "Fairy's Sacrifice";
player_spells[# 277, 1] = spells.sacrifice;
player_spells[# 277, 2] = 20;
player_spells[# 277, 3] = spells.null;
player_spells[# 277, 4] = -1;
player_spells[# 277, 5] = element.light;
player_spells[# 277, 6] = false;
player_spells[# 277, 7] = 0;

player_spells[# 278, 0] = "Rainbow Connection";
player_spells[# 278, 1] = spells.heal;
player_spells[# 278, 2] = 1;
player_spells[# 278, 3] = spells.heal_status;
player_spells[# 278, 4] = 1;
player_spells[# 278, 5] = element.light;
player_spells[# 278, 6] = true;
player_spells[# 278, 7] = 10;

player_spells[# 279, 0] = "Pixie Dust";
player_spells[# 279, 1] = spells.revive;
player_spells[# 279, 2] = 1;
player_spells[# 279, 3] = spells.null;
player_spells[# 279, 4] = -1;
player_spells[# 279, 5] = element.light;
player_spells[# 279, 6] = true;
player_spells[# 279, 7] = 16;

player_spells[# 280, 0] = "Crystal Enchantment";
player_spells[# 280, 1] = spells.attack;
player_spells[# 280, 2] = 1;
player_spells[# 280, 3] = spells.null;
player_spells[# 280, 4] = -1;
player_spells[# 280, 5] = element.earth;
player_spells[# 280, 6] = false;
player_spells[# 280, 7] = 10;

player_spells[# 281, 0] = "Sparkling Curtain";
player_spells[# 281, 1] = spells.sheild_all;
player_spells[# 281, 2] = 0.8;
player_spells[# 281, 3] = spells.null;
player_spells[# 281, 4] = -1;
player_spells[# 281, 5] = element.earth;
player_spells[# 281, 6] = false;
player_spells[# 281, 7] = 16;

player_spells[# 282, 0] = "Jewels of Truth";
player_spells[# 282, 1] = spells.reflect;
player_spells[# 282, 2] = 1;
player_spells[# 282, 3] = spells.null;
player_spells[# 282, 4] = -1;
player_spells[# 282, 5] = element.earth;
player_spells[# 282, 6] = true;
player_spells[# 282, 7] = 16;

player_spells[# 283, 0] = "Fairy Shine";
player_spells[# 283, 1] = spells.def_up;
player_spells[# 283, 2] = 10;
player_spells[# 283, 3] = spells.null;
player_spells[# 283, 4] = -1;
player_spells[# 283, 5] = element.earth;
player_spells[# 283, 6] = true;
player_spells[# 283, 7] = 10;

player_spells[# 284, 0] = "The Four Winds";
player_spells[# 284, 1] = spells.attack;
player_spells[# 284, 2] = 1;
player_spells[# 284, 3] = spells.null;
player_spells[# 284, 4] = -1;
player_spells[# 284, 5] = element.air;
player_spells[# 284, 6] = false;
player_spells[# 284, 7] = 10;

player_spells[# 285, 0] = "Vengeful Charge";
player_spells[# 285, 1] = spells.charge_plus_hp;
player_spells[# 285, 2] = 0.8;
player_spells[# 285, 3] = spells.null;
player_spells[# 285, 4] = -1;
player_spells[# 285, 5] = element.dark;
player_spells[# 285, 6] = false;
player_spells[# 285, 7] = 14;

player_spells[# 286, 0] = "Hopeful Charge";
player_spells[# 286, 1] = spells.charge_attack;
player_spells[# 286, 2] = 1;
player_spells[# 286, 3] = spells.null;
player_spells[# 286, 4] = -1;
player_spells[# 286, 5] = element.light;
player_spells[# 286, 6] = false;
player_spells[# 286, 7] = 14;

player_spells[# 287, 0] = "Energy Trace";
player_spells[# 287, 1] = spells.attack;
player_spells[# 287, 2] = 0.8;
player_spells[# 287, 3] = spells.null;
player_spells[# 287, 4] = -1;
player_spells[# 287, 5] = element.magic;
player_spells[# 287, 6] = false;
player_spells[# 287, 7] = 8;




#endregion


// code name
#region

player_spells[# 288, 0] = "spell 001";
player_spells[# 288, 1] = spells.attack;
player_spells[# 288, 2] = 2;
player_spells[# 288, 3] = spells.null;
player_spells[# 288, 4] = -1;
player_spells[# 288, 5] = element.dark;
player_spells[# 288, 6] = false;
player_spells[# 288, 7] = 0;

player_spells[# 289, 0] = "spell 002";
player_spells[# 289, 1] = spells.heal;
player_spells[# 289, 2] = 0.4;
player_spells[# 289, 3] = spells.null;
player_spells[# 289, 4] = -1;
player_spells[# 289, 5] = element.dark;
player_spells[# 289, 6] = true;
player_spells[# 289, 7] = 0;

player_spells[# 290, 0] = "spell 003";
player_spells[# 290, 1] = spells.sheild;
player_spells[# 290, 2] = 1;
player_spells[# 290, 3] = spells.null;
player_spells[# 290, 4] = -1;
player_spells[# 290, 5] = element.dark;
player_spells[# 290, 6] = true;
player_spells[# 290, 7] = 0;

player_spells[# 291, 0] = "spell 004";
player_spells[# 291, 1] = spells.all_down;
player_spells[# 291, 2] = 4;
player_spells[# 291, 3] = spells.null;
player_spells[# 291, 4] = -1;
player_spells[# 291, 5] = element.dark;
player_spells[# 291, 6] = false;
player_spells[# 291, 7] = 0;

player_spells[# 292, 0] = "spell 005";
player_spells[# 292, 1] = spells.mag_up;
player_spells[# 292, 2] = 8;
player_spells[# 292, 3] = spells.null;
player_spells[# 292, 4] = -1;
player_spells[# 292, 5] = element.dark;
player_spells[# 292, 6] = true;
player_spells[# 292, 7] = 0;

player_spells[# 293, 0] = "spell 006";
player_spells[# 293, 1] = spells.attack;
player_spells[# 293, 2] = 1;
player_spells[# 293, 3] = spells.null;
player_spells[# 293, 4] = -1;
player_spells[# 293, 5] = element.fire;
player_spells[# 293, 6] = false;
player_spells[# 293, 7] = 0;


#endregion



