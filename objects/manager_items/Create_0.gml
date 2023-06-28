item_list_w = 29;
item_list_h = 8;
item_list = ds_grid_create(item_list_w,item_list_h);

equip_list_w = 123;
equip_list_h = 6;
equip_list = ds_grid_create(equip_list_w,equip_list_h);

enum equip
{
	null,		// --
	mag_up,		// done
	def_up,		// done
	skl_up,		// done
	spd_up,		// done
	mag_spd_up,	// done
	def_spd_up,	// done
	mag_def_up,	// done	
	hp_up,		// done
	mp_up,		// done
	attack_up,	// done
	res_water,	// done
	res_earth,	// done
	res_fire,	// done
	res_air,	// done
	res_nature,	// done
	res_magic,	// done
	res_light,	// done
	res_dark,	// done
	buff_water,	// done
	buff_earth,	// done
	buff_fire,	// done
	buff_air,	// done
	buff_nature,// done
	buff_magic,	// done
	buff_light,	// done
	buff_dark,	// done
	res_petrify,// done
	res_curse,	// done
	res_blind,	// done
	res_deaf,	// done
	buff_heal,	// done
	buff_shield,// done
	special_flee,			// to do (later)
	special_heal,			// done
	special_sklToMag,		// done
	special_encounterOff,	// to do (later)
	special_instaKill,		// done
	ultimate_heal,			// done
	ultimate_sklToMag,		// done
	ultimate_fey,			// done
	ultimate_dragon,		// done
	ultimate_immune,		// done
	ultimate_absorb,		// done
	ultimate_heal_spd,		// done
	ultimate_stat,			// done	
	ultimate_reflect,		// to do
	ultimate_heal_mag,		// done
}

// base items (1 - 88)
#region
equip_list[# 0, 0] = "--";
equip_list[# 0, 1] = equip.null;
equip_list[# 0, 2] = 0;
equip_list[# 0, 3] = drops.empty;
equip_list[# 0, 4] = drops.empty;
equip_list[# 0, 5] = drops.empty;

equip_list[# 1, 0] = "Wooden Sword";
equip_list[# 1, 1] = equip.attack_up;
equip_list[# 1, 2] = 2;
equip_list[# 1, 3] = drops.magicSeed;
equip_list[# 1, 4] = drops.ironThorn;
equip_list[# 1, 5] = drops.empty;

equip_list[# 2, 0] = "Wooden Wand"
equip_list[# 2, 1] = equip.mag_up;
equip_list[# 2, 2] = 2;
equip_list[# 2, 3] = drops.magicSeed;
equip_list[# 2, 4] = drops.ironThorn;
equip_list[# 2, 5] = drops.empty;

equip_list[# 3, 0] = "Wooden Pin"
equip_list[# 3, 1] = equip.skl_up;
equip_list[# 3, 2] = 2;
equip_list[# 3, 3] = drops.magicSeed;
equip_list[# 3, 4] = drops.ironThorn;
equip_list[# 3, 5] = drops.empty;

equip_list[# 4, 0] = "Leaf Armor";
equip_list[# 4, 1] = equip.def_up;
equip_list[# 4, 2] = 2;
equip_list[# 4, 3] = drops.leafyCloth;
equip_list[# 4, 4] = drops.clover;
equip_list[# 4, 5] = drops.empty;

equip_list[# 5, 0] = "Leaf Boots";
equip_list[# 5, 1] = equip.spd_up;
equip_list[# 5, 2] = 2;
equip_list[# 5, 3] = drops.leafyCloth;
equip_list[# 5, 4] = drops.sheepFluff;
equip_list[# 5, 5] = drops.empty;

equip_list[# 6, 0] = "Sharp Sword";
equip_list[# 6, 1] = equip.attack_up;
equip_list[# 6, 2] = 6;
equip_list[# 6, 3] = drops.antler;
equip_list[# 6, 4] = drops.sharpBeak;
equip_list[# 6, 5] = drops.empty;

equip_list[# 7, 0] = "Lantern Staff";
equip_list[# 7, 1] = equip.mag_up;
equip_list[# 7, 2] = 6;
equip_list[# 7, 3] = drops.antler;
equip_list[# 7, 4] = drops.wisp;
equip_list[# 7, 5] = drops.empty;

equip_list[# 8, 0] = "Venom Dagger"
equip_list[# 8, 1] = equip.skl_up;
equip_list[# 8, 2] = 6;
equip_list[# 8, 3] = drops.poisonPowder;
equip_list[# 8, 4] = drops.flytrapPlant;
equip_list[# 8, 5] = drops.empty;

equip_list[# 9, 0] = "Forest Armor";
equip_list[# 9, 1] = equip.def_up;
equip_list[# 9, 2] = 6;
equip_list[# 9, 3] = drops.forestFur;
equip_list[# 9, 4] = drops.magicLeaf;
equip_list[# 9, 5] = drops.empty;

equip_list[# 10, 0] = "Forest Boots";
equip_list[# 10, 1] = equip.spd_up;
equip_list[# 10, 2] = 6;
equip_list[# 10, 3] = drops.forestFur;
equip_list[# 10, 4] = drops.skyFeather;
equip_list[# 10, 5] = drops.empty;

equip_list[# 11, 0] = "Ceramic Sword";
equip_list[# 11, 1] = equip.attack_up;
equip_list[# 11, 2] = 10;
equip_list[# 11, 3] = drops.torch;
equip_list[# 11, 4] = drops.softClay;
equip_list[# 11, 5] = drops.empty;

equip_list[# 12, 0] = "Magic Torch";
equip_list[# 12, 1] = equip.mag_up;
equip_list[# 12, 2] = 10;
equip_list[# 12, 3] = drops.torch;
equip_list[# 12, 4] = drops.mapleLeaf;
equip_list[# 12, 5] = drops.empty;

equip_list[# 13, 0] = "Butterfly Pin"
equip_list[# 13, 1] = equip.skl_up;
equip_list[# 13, 2] = 10;
equip_list[# 13, 3] = drops.insectLeg;
equip_list[# 13, 4] = drops.mothWing;
equip_list[# 13, 5] = drops.empty;

equip_list[# 14, 0] = "Silk Armor";
equip_list[# 14, 1] = equip.def_up;
equip_list[# 14, 2] = 10;
equip_list[# 14, 3] = drops.spiderSilk;
equip_list[# 14, 4] = drops.shinyScale;
equip_list[# 14, 5] = drops.empty;

equip_list[# 15, 0] = "Silk Boots";
equip_list[# 15, 1] = equip.spd_up;
equip_list[# 15, 2] = 10;
equip_list[# 15, 3] = drops.spiderSilk;
equip_list[# 15, 4] = drops.darkFeather;
equip_list[# 15, 5] = drops.empty;

equip_list[# 16, 0] = "Night Sword";
equip_list[# 16, 1] = equip.attack_up;
equip_list[# 16, 2] = 20;
equip_list[# 16, 3] = drops.frozenDroplet;
equip_list[# 16, 4] = drops.blackInk;
equip_list[# 16, 5] = drops.empty;

equip_list[# 17, 0] = "Storm Wand";
equip_list[# 17, 1] = equip.mag_up;
equip_list[# 17, 2] = 20;
equip_list[# 17, 3] = drops.mermaidScale;
equip_list[# 17, 4] = drops.rainMist;
equip_list[# 17, 5] = drops.empty;

equip_list[# 18, 0] = "Snow Bell"
equip_list[# 18, 1] = equip.skl_up;
equip_list[# 18, 2] = 20;
equip_list[# 18, 3] = drops.bell;
equip_list[# 18, 4] = drops.snowflake;
equip_list[# 18, 5] = drops.empty;

equip_list[# 19, 0] = "Winter Parka";
equip_list[# 19, 1] = equip.def_up;
equip_list[# 19, 2] = 20;
equip_list[# 19, 3] = drops.arcticTail;
equip_list[# 19, 4] = drops.redSash;
equip_list[# 19, 5] = drops.empty;

equip_list[# 20, 0] = "Winter Boots";
equip_list[# 20, 1] = equip.spd_up;
equip_list[# 20, 2] = 20;
equip_list[# 20, 3] = drops.arcticTail;
equip_list[# 20, 4] = drops.whiteFeather;
equip_list[# 20, 5] = drops.empty;

equip_list[# 21, 0] = "Golden Knife";
equip_list[# 21, 1] = equip.attack_up;
equip_list[# 21, 2] = 28;
equip_list[# 21, 3] = drops.stinger;
equip_list[# 21, 4] = drops.goldenScale;
equip_list[# 21, 5] = drops.empty;

equip_list[# 22, 0] = "Sakura Staff";
equip_list[# 22, 1] = equip.mag_up;
equip_list[# 22, 2] = 28;
equip_list[# 22, 3] = drops.cherryBlossomBranch;
equip_list[# 22, 4] = drops.sweetHoney;
equip_list[# 22, 5] = drops.empty;

equip_list[# 23, 0] = "Fox Charm"
equip_list[# 23, 1] = equip.skl_up;
equip_list[# 23, 2] = 28;
equip_list[# 23, 3] = drops.foxTail;
equip_list[# 23, 4] = drops.desertTail;
equip_list[# 23, 5] = drops.empty;

equip_list[# 24, 0] = "Spring Armor";
equip_list[# 24, 1] = equip.def_up;
equip_list[# 24, 2] = 28;
equip_list[# 24, 3] = drops.springPetal;
equip_list[# 24, 4] = drops.porcelainShard;
equip_list[# 24, 5] = drops.empty;

equip_list[# 25, 0] = "Spring Sandals";
equip_list[# 25, 1] = equip.spd_up;
equip_list[# 25, 2] = 28;
equip_list[# 25, 3] = drops.springPetal;
equip_list[# 25, 4] = drops.desertTail;
equip_list[# 25, 5] = drops.empty;

equip_list[# 26, 0] = "Oceanic Sword";
equip_list[# 26, 1] = equip.attack_up;
equip_list[# 26, 2] = 36;
equip_list[# 26, 3] = drops.shell;
equip_list[# 26, 4] = drops.deepSeaFin;
equip_list[# 26, 5] = drops.empty;

equip_list[# 27, 0] = "Shell Staff";
equip_list[# 27, 1] = equip.mag_up;
equip_list[# 27, 2] = 36;
equip_list[# 27, 3] = drops.shell;
equip_list[# 27, 4] = drops.lilyFlower;
equip_list[# 27, 5] = drops.empty;

equip_list[# 28, 0] = "Magical Watch"
equip_list[# 28, 1] = equip.skl_up;
equip_list[# 28, 2] = 36;
equip_list[# 28, 3] = drops.luminousBead;
equip_list[# 28, 4] = drops.oldCog;
equip_list[# 28, 5] = drops.empty;

equip_list[# 29, 0] = "Steel Armor";
equip_list[# 29, 1] = equip.def_up;
equip_list[# 29, 2] = 36;
equip_list[# 29, 3] = drops.stoneChunk;
equip_list[# 29, 4] = drops.prestineIron;
equip_list[# 29, 5] = drops.empty;

equip_list[# 30, 0] = "Coral Sandals";
equip_list[# 30, 1] = equip.spd_up;
equip_list[# 30, 2] = 36;
equip_list[# 30, 3] = drops.stoneChunk;
equip_list[# 30, 4] = drops.coral;
equip_list[# 30, 5] = drops.empty;

equip_list[# 31, 0] = "Crystal Sword";
equip_list[# 31, 1] = equip.attack_up;
equip_list[# 31, 2] = 48;
equip_list[# 31, 3] = drops.crystalCore;
equip_list[# 31, 4] = drops.hellFire;
equip_list[# 31, 5] = drops.empty;

equip_list[# 32, 0] = "Crystal Staff"
equip_list[# 32, 1] = equip.mag_up;
equip_list[# 32, 2] = 48;
equip_list[# 32, 3] = drops.crystalCore;
equip_list[# 32, 4] = drops.starTear;
equip_list[# 32, 5] = drops.empty;

equip_list[# 33, 0] = "Toxic Bloom"
equip_list[# 33, 1] = equip.skl_up;
equip_list[# 33, 2] = 48;
equip_list[# 33, 3] = drops.chemicalVial;
equip_list[# 33, 4] = drops.marigold;
equip_list[# 33, 5] = drops.empty;

equip_list[# 34, 0] = "Bone Armor";
equip_list[# 34, 1] = equip.def_up;
equip_list[# 34, 2] = 48;
equip_list[# 34, 3] = drops.skull;
equip_list[# 34, 4] = drops.paintedSkull;
equip_list[# 34, 5] = drops.empty;

equip_list[# 35, 0] = "Bone Sandals";
equip_list[# 35, 1] = equip.spd_up;
equip_list[# 35, 2] = 48;
equip_list[# 35, 3] = drops.skull;
equip_list[# 35, 4] = drops.silverThread;
equip_list[# 35, 5] = drops.empty;

equip_list[# 36, 0] = "Celestial Sword";
equip_list[# 36, 1] = equip.attack_up;
equip_list[# 36, 2] = 48;
equip_list[# 36, 3] = drops.ambroisa;
equip_list[# 36, 4] = drops.celesticMetal;
equip_list[# 36, 5] = drops.empty;

equip_list[# 37, 0] = "Celestial Wand"
equip_list[# 37, 1] = equip.skl_up;
equip_list[# 37, 2] = 48;
equip_list[# 37, 3] = drops.ambroisa;
equip_list[# 37, 4] = drops.candleWax;
equip_list[# 37, 5] = drops.empty;

equip_list[# 38, 0] = "Heaven Mirror"
equip_list[# 38, 1] = equip.skl_up;
equip_list[# 38, 2] = 48;
equip_list[# 38, 3] = drops.mirrorShard;
equip_list[# 38, 4] = drops.stardust;
equip_list[# 38, 5] = drops.empty;

equip_list[# 39, 0] = "Shining Armor";
equip_list[# 39, 1] = equip.def_up;
equip_list[# 39, 2] = 48;
equip_list[# 39, 3] = drops.mirrorShard;
equip_list[# 39, 4] = drops.crystalizedLight;
equip_list[# 39, 5] = drops.empty;

equip_list[# 40, 0] = "Shining Boots";
equip_list[# 40, 1] = equip.spd_up;
equip_list[# 40, 2] = 48;
equip_list[# 40, 3] = drops.mirrorShard;
equip_list[# 40, 4] = drops.platinumThread;
equip_list[# 40, 5] = drops.empty;

equip_list[# 41, 0] = "Sapphire Ring";
equip_list[# 41, 1] = equip.buff_water;
equip_list[# 41, 2] = 1;
equip_list[# 41, 3] = drops.sapphire;
equip_list[# 41, 4] = drops.mermaidScale;
equip_list[# 41, 5] = drops.blueSash;

equip_list[# 42, 0] = "Shell Ring";
equip_list[# 42, 1] = equip.buff_earth;
equip_list[# 42, 2] = 1;
equip_list[# 42, 3] = drops.shell;
equip_list[# 42, 4] = drops.stoneChunk;
equip_list[# 42, 5] = drops.scrapMetal;

equip_list[# 43, 0] = "Ruby Ring";
equip_list[# 43, 1] = equip.buff_fire;
equip_list[# 43, 2] = 1;
equip_list[# 43, 3] = drops.ruby;
equip_list[# 43, 4] = drops.goldenPowder;
equip_list[# 43, 5] = drops.softClay;

equip_list[# 44, 0] = "Painted Ring";
equip_list[# 44, 1] = equip.buff_air;
equip_list[# 44, 2] = 1;
equip_list[# 44, 3] = drops.paintedBowl;
equip_list[# 44, 4] = drops.freshWaterVial;
equip_list[# 44, 5] = drops.sakuraPetal;

equip_list[# 45, 0] = "Emerald Ring";
equip_list[# 45, 1] = equip.buff_nature;
equip_list[# 45, 2] = 1;
equip_list[# 45, 3] = drops.emerald;
equip_list[# 45, 4] = drops.antler;
equip_list[# 45, 5] = drops.arrowhead;

equip_list[# 46, 0] = "Space Ring";
equip_list[# 46, 1] = equip.buff_magic;
equip_list[# 46, 2] = 1;
equip_list[# 46, 3] = drops.spaceRock;
equip_list[# 46, 4] = drops.luminousBead;
equip_list[# 46, 5] = drops.prestineIron;

equip_list[# 47, 0] = "Golden Ring";
equip_list[# 47, 1] = equip.buff_light;
equip_list[# 47, 2] = 1;
equip_list[# 47, 3] = drops.goldenScale;
equip_list[# 47, 4] = drops.bell;
equip_list[# 47, 5] = drops.oniTooth;

equip_list[# 48, 0] = "Black Ring";
equip_list[# 48, 1] = equip.buff_dark;
equip_list[# 48, 2] = 1;
equip_list[# 48, 3] = drops.blackInk;
equip_list[# 48, 4] = drops.coldOrb;
equip_list[# 48, 5] = drops.rockChunk;

equip_list[# 49, 0] = "Sapphire Necklace";
equip_list[# 49, 1] = equip.buff_water;
equip_list[# 49, 2] = 2;
equip_list[# 49, 3] = drops.sapphire;
equip_list[# 49, 4] = drops.crystalCore;
equip_list[# 49, 5] = drops.silverThread;

equip_list[# 50, 0] = "Shell Necklace";
equip_list[# 50, 1] = equip.buff_earth;
equip_list[# 50, 2] = 2;
equip_list[# 50, 3] = drops.shell;
equip_list[# 50, 4] = drops.celesticMetal;
equip_list[# 50, 5] = drops.platinumThread;

equip_list[# 51, 0] = "Ruby Necklace";
equip_list[# 51, 1] = equip.buff_fire;
equip_list[# 51, 2] = 2;
equip_list[# 51, 3] = drops.ruby;
equip_list[# 51, 4] = drops.celesticMetal;
equip_list[# 51, 5] = drops.platinumThread;

equip_list[# 52, 0] = "Painted Necklace";
equip_list[# 52, 1] = equip.buff_air;
equip_list[# 52, 2] = 2;
equip_list[# 52, 3] = drops.paintedBowl;
equip_list[# 52, 4] = drops.crystalCore;
equip_list[# 52, 5] = drops.silverThread;

equip_list[# 53, 0] = "Emerald Necklace";
equip_list[# 53, 1] = equip.buff_nature;
equip_list[# 53, 2] = 2;
equip_list[# 53, 3] = drops.emerald;
equip_list[# 53, 4] = drops.crystalCore;
equip_list[# 53, 5] = drops.silverThread;

equip_list[# 54, 0] = "Space Necklace";
equip_list[# 54, 1] = equip.buff_magic;
equip_list[# 54, 2] = 2;
equip_list[# 54, 3] = drops.spaceRock;
equip_list[# 54, 4] = drops.celesticMetal;
equip_list[# 54, 5] = drops.platinumThread;

equip_list[# 55, 0] = "Golden Necklace";
equip_list[# 55, 1] = equip.buff_light;
equip_list[# 55, 2] = 2;
equip_list[# 55, 3] = drops.goldenScale;
equip_list[# 55, 4] = drops.crystalCore;
equip_list[# 55, 5] = drops.silverThread;

equip_list[# 56, 0] = "Black Necklace";
equip_list[# 56, 1] = equip.buff_dark;
equip_list[# 56, 2] = 2;
equip_list[# 56, 3] = drops.blackInk;
equip_list[# 56, 4] = drops.celesticMetal;
equip_list[# 56, 5] = drops.platinumThread;

equip_list[# 57, 0] = "Petrify Earring";
equip_list[# 57, 1] = equip.res_petrify;
equip_list[# 57, 2] = 1;
equip_list[# 57, 3] = drops.snakeVenom;
equip_list[# 57, 4] = drops.mapleLeaf;
equip_list[# 57, 5] = drops.softClay;

equip_list[# 58, 0] = "Witch Docter's Mask";
equip_list[# 58, 1] = equip.res_curse;
equip_list[# 58, 2] = 1;
equip_list[# 58, 3] = drops.sharpBeak;
equip_list[# 58, 4] = drops.colorfulMushroom;
equip_list[# 58, 5] = drops.bitterBerry;

equip_list[# 59, 0] = "Shine Goggles";
equip_list[# 59, 1] = equip.res_blind;
equip_list[# 59, 2] = 1;
equip_list[# 59, 3] = drops.shinyScale;
equip_list[# 59, 4] = drops.flameOrb;
equip_list[# 59, 5] = drops.rainMist;

equip_list[# 60, 0] = "Rustic Bell";
equip_list[# 60, 1] = equip.res_deaf;
equip_list[# 60, 2] = 1;
equip_list[# 60, 3] = drops.bell;
equip_list[# 60, 4] = drops.oldScroll;
equip_list[# 60, 5] = drops.desertTail;

equip_list[# 61, 0] = "Prism Lantern";
equip_list[# 61, 1] = equip.res_petrify;
equip_list[# 61, 2] = 2;
equip_list[# 61, 3] = drops.lantern;
equip_list[# 61, 4] = drops.purePearl;
equip_list[# 61, 5] = drops.prismaticScale;

equip_list[# 62, 0] = "Spirit Sceptor";
equip_list[# 62, 1] = equip.res_curse;
equip_list[# 62, 2] = 2;
equip_list[# 62, 3] = drops.skull;
equip_list[# 62, 4] = drops.demonHorn;
equip_list[# 62, 5] = drops.midnightCloth;

equip_list[# 63, 0] = "Neon Mask";
equip_list[# 63, 1] = equip.res_blind;
equip_list[# 63, 2] = 2;
equip_list[# 63, 3] = drops.chemicalVial;
equip_list[# 63, 4] = drops.paintedSkull;
equip_list[# 63, 5] = drops.tornWing;

equip_list[# 64, 0] = "Mermaidic Gong";
equip_list[# 64, 1] = equip.res_deaf;
equip_list[# 64, 2] = 2;
equip_list[# 64, 3] = drops.bell;
equip_list[# 64, 4] = drops.mermaidScale;
equip_list[# 64, 5] = drops.celesticMetal;

equip_list[# 65, 0] = "Round Shield";
equip_list[# 65, 1] = equip.hp_up;
equip_list[# 65, 2] = 10;
equip_list[# 65, 3] = drops.magicSeed;
equip_list[# 65, 4] = drops.arrowhead;
equip_list[# 65, 5] = drops.antler;

equip_list[# 66, 0] = "Butterfly Shield";
equip_list[# 66, 1] = equip.hp_up;
equip_list[# 66, 2] = 50;
equip_list[# 66, 3] = drops.mothWing;
equip_list[# 66, 4] = drops.springPetal;
equip_list[# 66, 5] = drops.cherryBlossomBranch;

equip_list[# 67, 0] = "Demon Shield";
equip_list[# 67, 1] = equip.hp_up;
equip_list[# 67, 2] = 100;
equip_list[# 67, 3] = drops.demonWing;
equip_list[# 67, 4] = drops.oniTooth;
equip_list[# 67, 5] = drops.prestineIron;

equip_list[# 68, 0] = "Angelic Halo";
equip_list[# 68, 1] = equip.hp_up;
equip_list[# 68, 2] = 100;
equip_list[# 68, 3] = drops.halo;
equip_list[# 68, 4] = drops.angelFeather;
equip_list[# 68, 5] = drops.prestineIron;

equip_list[# 69, 0] = "Floral Purse";
equip_list[# 69, 1] = equip.mp_up;
equip_list[# 69, 2] = 10;
equip_list[# 69, 3] = drops.flytrapPlant;
equip_list[# 69, 4] = drops.hydrangea;
equip_list[# 69, 5] = drops.leafyCloth;

equip_list[# 70, 0] = "Spirit Talisman";
equip_list[# 70, 1] = equip.mp_up;
equip_list[# 70, 2] = 50;
equip_list[# 70, 3] = drops.oldScroll;
equip_list[# 70, 4] = drops.blackInk;
equip_list[# 70, 5] = drops.wisp;

equip_list[# 71, 0] = "Red Moon Purse";
equip_list[# 71, 1] = equip.mp_up;
equip_list[# 71, 2] = 100;
equip_list[# 71, 3] = drops.midnightCloth;
equip_list[# 71, 4] = drops.scarletVial;
equip_list[# 71, 5] = drops.redSash;

equip_list[# 72, 0] = "Cloud Puff Purse";
equip_list[# 72, 1] = equip.mp_up;
equip_list[# 72, 2] = 100;
equip_list[# 72, 3] = drops.cloudSilk;
equip_list[# 72, 4] = drops.unwaveringFlame;
equip_list[# 72, 5] = drops.blueSash;

equip_list[# 73, 0] = "Large Shield";
equip_list[# 73, 1] = equip.buff_shield;
equip_list[# 73, 2] = 1;
equip_list[# 73, 3] = drops.largePetal;
equip_list[# 73, 4] = drops.magicLeaf;
equip_list[# 73, 5] = drops.emerald;

equip_list[# 74, 0] = "Stone Shield";
equip_list[# 74, 1] = equip.buff_shield;
equip_list[# 74, 2] = 2;
equip_list[# 74, 3] = drops.rockChunk;
equip_list[# 74, 4] = drops.stoneChunk;
equip_list[# 74, 5] = drops.coral;

equip_list[# 75, 0] = "Fairy Dust Pouch";
equip_list[# 75, 1] = equip.buff_heal;
equip_list[# 75, 2] = 1;
equip_list[# 75, 3] = drops.colorfulMushroom;
equip_list[# 75, 4] = drops.wisp;
equip_list[# 75, 5] = drops.rosePetal;

equip_list[# 76, 0] = "Infinity Vial";
equip_list[# 76, 1] = equip.buff_heal;
equip_list[# 76, 2] = 2;
equip_list[# 76, 3] = drops.saltWaterVial;
equip_list[# 76, 4] = drops.freshWaterVial;
equip_list[# 76, 5] = drops.ancientWaterVial;

equip_list[# 77, 0] = "Waves Cape";
equip_list[# 77, 1] = equip.res_water;
equip_list[# 77, 2] = 1;
equip_list[# 77, 3] = drops.saltWaterVial;
equip_list[# 77, 4] = drops.whiteFeather;
equip_list[# 77, 5] = drops.blueSash;

equip_list[# 78, 0] = "Rocky Helment";
equip_list[# 78, 1] = equip.res_earth;
equip_list[# 78, 2] = 1;
equip_list[# 78, 3] = drops.softClay;
equip_list[# 78, 4] = drops.rockChunk;
equip_list[# 78, 5] = drops.shinyScale;

equip_list[# 79, 0] = "Magma Cape";
equip_list[# 79, 1] = equip.res_fire;
equip_list[# 79, 2] = 1;
equip_list[# 79, 3] = drops.flameOrb;
equip_list[# 79, 4] = drops.darkFeather;
equip_list[# 79, 5] = drops.redSash;

equip_list[# 80, 0] = "Snow Cloud Hat";
equip_list[# 80, 1] = equip.res_air;
equip_list[# 80, 2] = 1;
equip_list[# 80, 3] = drops.bottledCloud;
equip_list[# 80, 4] = drops.rainMist;
equip_list[# 80, 5] = drops.snowflake;

equip_list[# 81, 0] = "Flower Fairy Mask";
equip_list[# 81, 1] = equip.res_nature;
equip_list[# 81, 2] = 1;
equip_list[# 81, 3] = drops.largePetal;
equip_list[# 81, 4] = drops.magicLeaf;
equip_list[# 81, 5] = drops.empty;

equip_list[# 82, 0] = "Violet Cape";
equip_list[# 82, 1] = equip.res_magic;
equip_list[# 82, 2] = 1;
equip_list[# 82, 3] = drops.wisp;
equip_list[# 82, 4] = drops.sheepFluff;
equip_list[# 82, 5] = drops.snakeVenom;

equip_list[# 83, 0] = "Golden Bracelets";
equip_list[# 83, 1] = equip.res_light;
equip_list[# 83, 2] = 1;
equip_list[# 83, 3] = drops.sweetHoney;
equip_list[# 83, 4] = drops.goldenScale;
equip_list[# 83, 5] = drops.goldenPowder;

equip_list[# 84, 0] = "Witch Hat";
equip_list[# 84, 1] = equip.res_dark;
equip_list[# 84, 2] = 1;
equip_list[# 84, 3] = drops.spiderSilk;
equip_list[# 84, 4] = drops.darkFeather;
equip_list[# 84, 5] = drops.bloodGem;


equip_list[# 85, 0] = "Mermaid Crown";
equip_list[# 85, 1] = equip.res_water;
equip_list[# 85, 2] = 2;
equip_list[# 85, 3] = drops.mermaidScale;
equip_list[# 85, 4] = drops.coral;
equip_list[# 85, 5] = drops.seaFoam;

equip_list[# 86, 0] = "Glass Tiara";
equip_list[# 86, 1] = equip.res_earth;
equip_list[# 86, 2] = 2;
equip_list[# 86, 3] = drops.glassPearl;
equip_list[# 86, 4] = drops.prestineIron;
equip_list[# 86, 5] = drops.porcelainShard;

equip_list[# 87, 0] = "Flame Horns";
equip_list[# 87, 1] = equip.res_fire;
equip_list[# 87, 2] = 2;
equip_list[# 87, 3] = drops.demonHorn;
equip_list[# 87, 4] = drops.marigold;
equip_list[# 87, 5] = drops.ruby;

equip_list[# 88, 0] = "Feather Headdress";
equip_list[# 88, 1] = equip.res_air;
equip_list[# 88, 2] = 2;
equip_list[# 88, 3] = drops.skyFeather;
equip_list[# 88, 4] = drops.angelFeather;
equip_list[# 88, 5] = drops.purePearl;

equip_list[# 89, 0] = "Fairy Tiara";
equip_list[# 89, 1] = equip.res_nature;
equip_list[# 89, 2] = 2;
equip_list[# 89, 3] = drops.rainbowMist;
equip_list[# 89, 4] = drops.springPetal;
equip_list[# 89, 5] = drops.cherryBlossomBranch;

equip_list[# 90, 0] = "Numerology Watch";
equip_list[# 90, 1] = equip.res_magic;
equip_list[# 90, 2] = 2;
equip_list[# 90, 3] = drops.oldCog;
equip_list[# 90, 4] = drops.galaxyMist;
equip_list[# 90, 5] = drops.glowingPearl;

equip_list[# 91, 0] = "Heaven Song Silk Cape";
equip_list[# 91, 1] = equip.res_light;
equip_list[# 91, 2] = 2;
equip_list[# 91, 3] = drops.cloudSilk;
equip_list[# 91, 4] = drops.crystalizedLight;
equip_list[# 91, 5] = drops.oldScroll;

equip_list[# 92, 0] = "Terrifying Armor";
equip_list[# 92, 1] = equip.res_dark;
equip_list[# 92, 2] = 2;
equip_list[# 92, 3] = drops.warTech;
equip_list[# 92, 4] = drops.humanoidMask;
equip_list[# 92, 5] = drops.hellFire;

equip_list[# 93, 0] = "Labrynth Map";
equip_list[# 93, 1] = equip.special_flee;
equip_list[# 93, 2] = 1;
equip_list[# 93, 3] = drops.oldScroll;
equip_list[# 93, 4] = drops.arrowhead;
equip_list[# 93, 5] = drops.blackInk;

equip_list[# 94, 0] = "Invisibility Cloak";
equip_list[# 94, 1] = equip.special_encounterOff;
equip_list[# 94, 2] = 1;
equip_list[# 94, 3] = drops.scrapMetal;
equip_list[# 94, 4] = drops.crystalWater;
equip_list[# 94, 5] = drops.wisp;

equip_list[# 95, 0] = "Time Traveler Whip";
equip_list[# 95, 1] = equip.special_sklToMag;
equip_list[# 95, 2] = 1;
equip_list[# 95, 3] = drops.techyBox;
equip_list[# 95, 4] = drops.glowingPearl;
equip_list[# 95, 5] = drops.spiderSilk;

equip_list[# 96, 0] = "Flower Crown";
equip_list[# 96, 1] = equip.buff_heal;
equip_list[# 96, 2] = 1;
equip_list[# 96, 3] = drops.largePetal;
equip_list[# 96, 4] = drops.rosePetal;
equip_list[# 96, 5] = drops.mapleLeaf;

equip_list[# 97, 0] = "Pixie Dust Crown";
equip_list[# 97, 1] = equip.special_heal;
equip_list[# 97, 2] = 1;
equip_list[# 97, 3] = drops.lilyFlower;
equip_list[# 97, 4] = drops.goldenPowder;
equip_list[# 97, 5] = drops.bell;

equip_list[# 98, 0] = "Forbidden Book";
equip_list[# 98, 1] = equip.special_instaKill;
equip_list[# 98, 2] = 1;
equip_list[# 98, 3] = drops.oldScroll;
equip_list[# 98, 4] = drops.ancientWaterVial;
equip_list[# 98, 5] = drops.bloodGem;

#endregion

// ultimate items
#region
equip_list[# 99, 0] = "Lilly Ribbon";
equip_list[# 99, 1] = equip.ultimate_heal;
equip_list[# 99, 2] = 1;
equip_list[# 99, 3] = drops.desertFlower;
equip_list[# 99, 4] = drops.cloudSilk;
equip_list[# 99, 5] = drops.lilyFlower;

equip_list[# 100, 0] = "Lazuli Tiara";
equip_list[# 100, 1] = equip.mag_up;
equip_list[# 100, 2] = 100;
equip_list[# 100, 3] = drops.lazuli;
equip_list[# 100, 4] = drops.coral;
equip_list[# 100, 5] = drops.saltWaterVial;

equip_list[# 101, 0] = "Pearl Chain";
equip_list[# 101, 1] = equip.ultimate_sklToMag;
equip_list[# 101, 2] = 60;
equip_list[# 101, 3] = drops.abyssalWater;
equip_list[# 101, 4] = drops.crystalWater;
equip_list[# 101, 5] = drops.purePearl;

equip_list[# 102, 0] = "Fey Crown";
equip_list[# 102, 1] = equip.ultimate_fey;
equip_list[# 102, 2] = 120;
equip_list[# 102, 3] = drops.feyArtifact;
equip_list[# 102, 4] = drops.celesticMetal;
equip_list[# 102, 5] = drops.halo;

equip_list[# 103, 0] = "Moonlight Purse";
equip_list[# 103, 1] = equip.ultimate_immune;
equip_list[# 103, 2] = 1;
equip_list[# 103, 3] = drops.bewitchedButton;
equip_list[# 103, 4] = drops.moonDrop;
equip_list[# 103, 5] = drops.silverThread;

equip_list[# 104, 0] = "Neon Case";
equip_list[# 104, 1] = equip.ultimate_immune;
equip_list[# 104, 2] = 1;
equip_list[# 104, 3] = drops.neonFlower;
equip_list[# 104, 4] = drops.prestineIron;
equip_list[# 104, 5] = drops.chemicalVial;

equip_list[# 105, 0] = "Amber Necklace";
equip_list[# 105, 1] = equip.ultimate_dragon;
equip_list[# 105, 2] = 120;
equip_list[# 105, 3] = drops.dragonSkull;
equip_list[# 105, 4] = drops.goldenScale;
equip_list[# 105, 5] = drops.flameOrb;

equip_list[# 106, 0] = "Shimmering Belt";
equip_list[# 106, 1] = equip.mag_def_up;
equip_list[# 106, 2] = 60;
equip_list[# 106, 3] = drops.auroraCloth;
equip_list[# 106, 4] = drops.crystalizedLight;
equip_list[# 106, 5] = drops.platinumThread;

equip_list[# 107, 0] = "Golden Cape";
equip_list[# 107, 1] = equip.ultimate_absorb;
equip_list[# 107, 2] = 80;
equip_list[# 107, 3] = drops.amberFlame;
equip_list[# 107, 4] = drops.platinumThread;
equip_list[# 107, 5] = drops.goldenPowder;

equip_list[# 108, 0] = "Cloud Hair Bow";
equip_list[# 108, 1] = equip.spd_up;
equip_list[# 108, 2] = 120;
equip_list[# 108, 3] = drops.bottledHurricane;
equip_list[# 108, 4] = drops.bottledCloud;
equip_list[# 108, 5] = drops.blueSash;

equip_list[# 109, 0] = "Honey Comb Headband";
equip_list[# 109, 1] = equip.def_spd_up;
equip_list[# 109, 2] = 60;
equip_list[# 109, 3] = drops.monsterTooth;
equip_list[# 109, 4] = drops.royalJelly;
equip_list[# 109, 5] = drops.blackInk;

equip_list[# 110, 0] = "Sword of the Gods";
equip_list[# 110, 1] = equip.attack_up;
equip_list[# 110, 2] = 200;
equip_list[# 110, 3] = drops.arcaneShard;
equip_list[# 110, 4] = drops.celesticMetal;
equip_list[# 110, 5] = drops.bottledCloud;

equip_list[# 111, 0] = "Ancient Earrings";
equip_list[# 111, 1] = equip.mag_def_up;
equip_list[# 111, 2] = 60;
equip_list[# 111, 3] = drops.ancientMoss;
equip_list[# 111, 4] = drops.marigold;
equip_list[# 111, 5] = drops.emerald;

equip_list[# 112, 0] = "Butterfly Brush";
equip_list[# 112, 1] = equip.ultimate_heal_spd;
equip_list[# 112, 2] = 80;
equip_list[# 112, 3] = drops.fairyFlower;
equip_list[# 112, 4] = drops.angelFeather;
equip_list[# 112, 5] = drops.mothWing;

equip_list[# 113, 0] = "Thorn Crown";
equip_list[# 113, 1] = equip.skl_up;
equip_list[# 113, 2] = 100;
equip_list[# 113, 3] = drops.lethalVial;
equip_list[# 113, 4] = drops.ironThorn;
equip_list[# 113, 5] = drops.demonHorn;

equip_list[# 114, 0] = "Rose Staff";
equip_list[# 114, 1] = equip.ultimate_stat;
equip_list[# 114, 2] = 1;
equip_list[# 114, 3] = drops.diamond;
equip_list[# 114, 4] = drops.rosePetal;
equip_list[# 114, 5] = drops.celesticMetal;

equip_list[# 115, 0] = "Galaxy Mirror";
equip_list[# 115, 1] = equip.ultimate_reflect;
equip_list[# 115, 2] = 1;
equip_list[# 115, 3] = drops.ancientEye;
equip_list[# 115, 4] = drops.starTear;
equip_list[# 115, 5] = drops.frozenDroplet;

equip_list[# 116, 0] = "Star Sword";
equip_list[# 116, 1] = equip.mag_up;
equip_list[# 116, 2] = 100;
equip_list[# 116, 3] = drops.spaceDust;
equip_list[# 116, 4] = drops.spaceRock;
equip_list[# 116, 5] = drops.prestineIron;

equip_list[# 117, 0] = "Solar Ring";
equip_list[# 117, 1] = equip.mag_spd_up;
equip_list[# 117, 2] = 60;
equip_list[# 117, 3] = drops.everBurningJewel;
equip_list[# 117, 4] = drops.sunDrop;
equip_list[# 117, 5] = drops.goldenOrb;

equip_list[# 118, 0] = "Prismatic Halo";
equip_list[# 118, 1] = equip.ultimate_heal_mag;
equip_list[# 118, 2] = 60;
equip_list[# 118, 3] = drops.prismOrb;
equip_list[# 118, 4] = drops.crystalizedLight;
equip_list[# 118, 5] = drops.halo;

equip_list[# 119, 0] = "God Armor";
equip_list[# 119, 1] = equip.def_up;
equip_list[# 119, 2] = 100;
equip_list[# 119, 3] = drops.dreamCloud;
equip_list[# 119, 4] = drops.cloudSilk;
equip_list[# 119, 5] = drops.prestineIron;

equip_list[# 120, 0] = "Ultra Violet Dagger Earrings";
equip_list[# 120, 1] = equip.mag_up;
equip_list[# 120, 2] = 100;
equip_list[# 120, 3] = drops.bottledBlackHole;
equip_list[# 120, 4] = drops.chemicalVial;
equip_list[# 120, 5] = drops.ironThorn;

equip_list[# 121, 0] = "Serpent Crown";
equip_list[# 121, 1] = equip.skl_up;
equip_list[# 121, 2] = 100;
equip_list[# 121, 3] = drops.prehistoricStone;
equip_list[# 121, 4] = drops.scarletVial;
equip_list[# 121, 5] = drops.paintedSkull;

equip_list[# 122, 0] = "White Hot Cannon";
equip_list[# 122, 1] = equip.mag_up;
equip_list[# 122, 2] = 100;
equip_list[# 122, 3] = drops.skeletalBone;
equip_list[# 122, 4] = drops.warTech;
equip_list[# 122, 5] = drops.flameOrb;
#endregion



enum drops
{	
	empty,
	magicSeed,
	clover,
	bitterBerry,
	largePetal,
	leafyCloth,
	ironThorn,
	hydrangea,
	sheepFluff,
	arrowhead,
	forestFur,
	antler,
	skyFeather,
	sharpBeak,
	colorfulMushroom,
	poisonPowder,
	bottledCloud,
	magicLeaf,
	flytrapPlant,
	snakeVenom,
	emerald,
	rosePetal,
	wisp,
	spiderSilk,
	insectLeg,
	darkFeather,
	hardBerry,
	mapleLeaf,
	goldenPowder,
	softClay,
	bloodGem,
	shinyScale,
	mothWing,
	torch,
	ruby,
	rockChunk,
	flameOrb,
	redSash,
	bell,
	arcticTail,
	frozenDroplet,
	rainMist,
	snowflake,
	mask,
	blackInk,
	whiteFeather,
	mermaidScale,
	saltWaterVial,
	coldOrb,
	blueSash,
	sapphire,
	springPetal,
	sweetHoney,
	stinger,
	sakuraPetal,
	cherryBlossomBranch,
	foxTail,
	freshWaterVial,
	goldenScale,
	desertTail,
	oldScroll,
	paintedBowl,
	porcelainShard,
	oniTooth,
	royalJelly,
	lilypad,
	lilyFlower,
	ancientWaterVial,
	deepSeaFin,
	shell,
	coral,
	glowingPearl,
	luminousBead,
	stoneChunk,
	crystalWater,
	scrapMetal,
	oldCog,
	spaceRock,
	techyBox,
	prestineIron,
	glassPearl,
	crystalCore,
	galaxyMist,
	starTear,
	obsidionStone,
	moonDrop,
	silverThread,
	skull,
	demonHorn,
	hellFire,
	chemicalVial,
	marigold,
	paintedSkull,
	humanoidMask,
	tornWing,
	scarletVial,
	warTech,
	midnightCloth,
	demonWing,
	purePearl,
	seaFoam,
	rainbowMist,
	ambroisa,
	marbleStone,
	mirrorShard,
	goldenOrb,
	sunDrop,
	platinumThread,
	candleWax,
	unwaveringFlame,
	angelFeather,
	celesticMetal,
	stardust,
	crystalizedLight,
	lantern,
	prismaticScale,
	cloudSilk,
	halo,
	ancientMoss,
	fairyFlower,
	bewitchedButton,
	auroraCloth,
	everBurningJewel,
	diamond,
	dragonSkull,
	feyArtifact,
	monsterTooth,
	neonFlower,
	bottledBlackHole,
	skeletalBone,
	lazuli,
	bottledHurricane,
	prehistoricStone,
	amberFlame,
	onyrixCore,
	bloomixCore,
	sirenixCore,
	cSirenixCore,
	butterflixCore,
	enchantixCore,
	tynixCore,
	believixCore,
	desertFlower,
	abyssalWater,
	ancientEye,
	dreamCloud,
	spaceDust,
	lethalVial,
	prismOrb,
	arcaneShard
	
	
	
}

enum items
{
	empty = 0,
	medicine = 1,
	antidote = 2,
	pure = 3,
	orb = 4,
	chime = 5,
	dust = 6,
	warp = 7,
	decr = 8,
	void = 9,
	nectar = 10
}
	
#region

item_list[# 0, 0] = "";


item_list[# 1, 0] = "Medicine";
item_list[# 1, 1] = items.medicine;
item_list[# 1, 2] = 0.2;
item_list[# 1, 3] = "Heal a small amount of HP.";
item_list[# 1, 4] = true;
item_list[# 1, 5] = drops.magicSeed; 
item_list[# 1, 6] = drops.bitterBerry; 
item_list[# 1, 7] = -1;
item_list[# 2, 0] = "Strong Medicine";
item_list[# 2, 1] = items.medicine;
item_list[# 2, 2] = 0.5;
item_list[# 2, 3] = "Heal a moderate amount of HP.";
item_list[# 2, 4] = true;
item_list[# 2, 5] = drops.magicSeed; 
item_list[# 2, 6] = drops.hardBerry; 
item_list[# 2, 7] = -1;
item_list[# 3, 0] = "Super Medicine";
item_list[# 3, 1] = items.medicine;
item_list[# 3, 2] = 0.8;
item_list[# 3, 3] = "Heal a large amount of HP.";
item_list[# 3, 4] = true;
item_list[# 3, 5] = drops.magicSeed; 
item_list[# 3, 6] = drops.sweetHoney; 
item_list[# 3, 7] = -1;

item_list[# 4, 0] = "Antidote";
item_list[# 4, 1] = items.antidote;
item_list[# 4, 2] = -1;
item_list[# 4, 3] = "Heal a PETRIFY status effect.";
item_list[# 4, 4] = true;
item_list[# 4, 5] = drops.stinger; 
item_list[# 4, 6] = drops.bitterBerry; 
item_list[# 4, 7] = -1;
item_list[# 5, 0] = "Pure Water";
item_list[# 5, 1] = items.pure;
item_list[# 5, 2] = -1;
item_list[# 5, 3] = "Heal a CURSE status effect.";
item_list[# 5, 4] = true;
item_list[# 5, 5] = drops.snakeVenom; 
item_list[# 5, 6] = drops.darkFeather; 
item_list[# 5, 7] = -1;
item_list[# 6, 0] = "Light Orb";
item_list[# 6, 1] = items.orb;
item_list[# 6, 2] = -1;
item_list[# 6, 3] = "Heal a BLIND status effect.";
item_list[# 6, 4] = true;
item_list[# 6, 5] = drops.flameOrb; 
item_list[# 6, 6] = drops.mask; 
item_list[# 6, 7] = -1;
item_list[# 7, 0] = "Chime";
item_list[# 7, 1] = items.chime;
item_list[# 7, 2] = -1;
item_list[# 7, 3] = "Heal a DEAF status effect.";
item_list[# 7, 4] = true;
item_list[# 7, 5] = drops.shell; 
item_list[# 7, 6] = drops.bell; 
item_list[# 7, 7] = -1;

item_list[# 8, 0] = "Fairy Dust";
item_list[# 8, 1] = items.dust;
item_list[# 8, 2] = -1;
item_list[# 8, 3] = "Revive a fallen ally.";
item_list[# 8, 4] = true;
item_list[# 8, 5] = drops.colorfulMushroom; 
item_list[# 8, 6] = drops.wisp; 
item_list[# 8, 7] = -1;

item_list[# 9, 0] = "Warp Powder";
item_list[# 9, 1] = items.warp;
item_list[# 9, 2] = -1;
item_list[# 9, 3] = "Instantly return to the castle";
item_list[# 9, 4] = false;
item_list[# 9, 5] = drops.bottledCloud; 
item_list[# 9, 6] = -1; 
item_list[# 9, 7] = -1;


item_list[# 10, 0] = "Water Flower";
item_list[# 10, 1] = items.decr;
item_list[# 10, 2] = element.water;
item_list[# 10, 3] = "Reduce party damage from a WATER type ATTACK.";
item_list[# 10, 4] = false;
item_list[# 10, 5] = drops.largePetal; 
item_list[# 10, 6] = drops.frozenDroplet; 
item_list[# 10, 7] = -1;
item_list[# 11, 0] = "Earth Flower";
item_list[# 11, 1] = items.decr;
item_list[# 11, 2] = element.earth;
item_list[# 11, 3] = "Reduce party damage from a EARTH type ATTACK.";
item_list[# 11, 4] = false;
item_list[# 11, 5] = drops.largePetal; 
item_list[# 11, 6] = drops.scrapMetal; 
item_list[# 11, 7] = -1;
item_list[# 12, 0] = "Fire Flower";
item_list[# 12, 1] = items.decr;
item_list[# 12, 2] = element.fire;
item_list[# 12, 3] = "Reduce party damage from a FIRE type ATTACK.";
item_list[# 12, 4] = false;
item_list[# 12, 5] = drops.largePetal; 
item_list[# 12, 6] = drops.oniTooth; 
item_list[# 12, 7] = -1;
item_list[# 13, 0] = "Air Flower";
item_list[# 13, 1] = items.decr;
item_list[# 13, 2] = element.air;
item_list[# 13, 3] = "Reduce party damage from a AIR type ATTACK.";
item_list[# 13, 4] = false;
item_list[# 13, 5] = drops.largePetal; 
item_list[# 13, 6] = drops.mothWing; 
item_list[# 13, 7] = -1;
item_list[# 14, 0] = "Nature Flower";
item_list[# 14, 1] = items.decr;
item_list[# 14, 2] = element.nature;
item_list[# 14, 3] = "Reduce party damage from a NATURE type ATTACK.";
item_list[# 14, 4] = false;
item_list[# 14, 5] = drops.largePetal; 
item_list[# 14, 6] = drops.hydrangea; 
item_list[# 14, 7] = -1;
item_list[# 15, 0] = "Magic Flower";
item_list[# 15, 1] = items.decr;
item_list[# 15, 2] = element.magic;
item_list[# 15, 3] = "Reduce party damage from a MAGIC type ATTACK.";
item_list[# 15, 4] = false;
item_list[# 15, 5] = drops.largePetal; 
item_list[# 15, 6] = drops.glowingPearl; 
item_list[# 15, 7] = -1;
item_list[# 16, 0] = "Light Flower";
item_list[# 16, 1] = items.decr;
item_list[# 16, 2] = element.light;
item_list[# 16, 3] = "Reduce party damage from a LIGHT type ATTACK.";
item_list[# 16, 4] = false;
item_list[# 16, 5] = drops.largePetal; 
item_list[# 16, 6] = drops.rosePetal; 
item_list[# 16, 7] = -1;
item_list[# 17, 0] = "Dark Flower";
item_list[# 17, 1] = items.decr;
item_list[# 17, 2] = element.dark;
item_list[# 17, 3] = "Reduce party damage from a DARK type ATTACK.";
item_list[# 17, 4] = false;
item_list[# 17, 5] = drops.largePetal; 
item_list[# 17, 6] = drops.bloodGem; 
item_list[# 17, 7] = -1;

item_list[# 18, 0] = "Water Star";
item_list[# 18, 1] = items.void;
item_list[# 18, 2] = element.water;
item_list[# 18, 3] = "Prevnt all party damage from a WATER type ATTACK.";
item_list[# 18, 4] = false;
item_list[# 18, 5] = drops.marbleStone; 
item_list[# 18, 6] = drops.purePearl; 
item_list[# 18, 7] = -1;
item_list[# 19, 0] = "Earth Star";
item_list[# 19, 1] = items.void;
item_list[# 19, 2] = element.earth;
item_list[# 19, 3] = "Prevnt all party damage from a EARTH type ATTACK.";
item_list[# 19, 4] = false;
item_list[# 19, 5] = drops.obsidionStone; 
item_list[# 19, 6] = drops.glassPearl; 
item_list[# 19, 7] = -1;
item_list[# 20, 0] = "Fire Star";
item_list[# 20, 1] = items.void;
item_list[# 20, 2] = element.fire;
item_list[# 20, 3] = "Prevnt all party damage from a FIRE type ATTACK.";
item_list[# 20, 4] = false;
item_list[# 20, 5] = drops.obsidionStone; 
item_list[# 20, 6] = drops.demonHorn; 
item_list[# 20, 7] = -1;
item_list[# 21, 0] = "Air Star";
item_list[# 21, 1] = items.void;
item_list[# 21, 2] = element.air;
item_list[# 21, 3] = "Prevnt all party damage from a AIR type ATTACK.";
item_list[# 21, 4] = false;
item_list[# 21, 5] = drops.marbleStone; 
item_list[# 21, 6] = drops.angelFeather; 
item_list[# 21, 7] = -1;
item_list[# 22, 0] = "Nature Star";
item_list[# 22, 1] = items.void;
item_list[# 22, 2] = element.nature;
item_list[# 22, 3] = "Prevnt all party damage from a NATURE type ATTACK.";
item_list[# 22, 4] = false;
item_list[# 22, 5] = drops.marbleStone; 
item_list[# 22, 6] = drops.rainbowMist; 
item_list[# 22, 7] = -1;
item_list[# 23, 0] = "Magic Star";
item_list[# 23, 1] = items.void;
item_list[# 23, 2] = element.magic;
item_list[# 23, 3] = "Prevnt all party damage from a MAGIC type ATTACK.";
item_list[# 23, 4] = false;
item_list[# 23, 5] = drops.obsidionStone; 
item_list[# 23, 6] = drops.galaxyMist; 
item_list[# 23, 7] = -1;
item_list[# 24, 0] = "Light Star";
item_list[# 24, 1] = items.void;
item_list[# 24, 2] = element.light;
item_list[# 24, 3] = "Prevnt all party damage from a LIGHT type ATTACK.";
item_list[# 24, 4] = false;
item_list[# 24, 5] = drops.marbleStone; 
item_list[# 24, 6] = drops.sunDrop; 
item_list[# 24, 7] = -1;
item_list[# 25, 0] = "Dark Star";
item_list[# 25, 1] = items.void;
item_list[# 25, 2] = element.dark;
item_list[# 25, 3] = "Prevnt all party damage from a DARK type ATTACK.";
item_list[# 25, 4] = false;
item_list[# 25, 5] = drops.obsidionStone; 
item_list[# 25, 6] = drops.moonDrop; 
item_list[# 25, 7] = -1;

item_list[# 26, 0] = "Nectar";
item_list[# 26, 1] = items.nectar;
item_list[# 26, 2] = 0.2;
item_list[# 26, 3] = "Heal a small amount of MP.";
item_list[# 26, 4] = true;
item_list[# 26, 5] = drops.magicLeaf; 
item_list[# 26, 6] = -1; 
item_list[# 26, 7] = -1;
item_list[# 27, 0] = "Strong Nectar";
item_list[# 27, 1] = items.nectar;
item_list[# 27, 2] = 0.5;
item_list[# 27, 3] = "Heal a moderate amount of MP.";
item_list[# 27, 4] = true;
item_list[# 27, 5] = drops.sakuraPetal; 
item_list[# 27, 6] = drops.sweetHoney; 
item_list[# 27, 7] = -1;
item_list[# 28, 0] = "Super Nectar";
item_list[# 28, 1] = items.nectar;
item_list[# 28, 2] = 0.8;
item_list[# 28, 3] = "Heal a large amount of MP.";
item_list[# 28, 4] = true;
item_list[# 28, 5] = drops.lilypad; 
item_list[# 28, 6] = drops.royalJelly; 
item_list[# 28, 7] = -1;

#endregion
