// number of enemys
enemy_list_w = 103;
// information for each enemy
enemy_list_h = 16;

enemy_list = ds_grid_create(enemy_list_w,enemy_list_h);

codex_list = ds_list_create();
for(var i = 0; i < 95; i+=1)
{
	codex_list[|i] = false;
}

// Base 
#region
// name
enemy_list[# 0, 0] = "name"; 
// level
enemy_list[# 0, 1] = 1;
// Spells
enemy_list[# 0, 2] = [1];
// stats
enemy_list[# 0, 3] = 10; // magic
enemy_list[# 0, 4] = 10; // defense
enemy_list[# 0, 5] = 10; // speed
enemy_list[# 0, 6] = 10; // skill
enemy_list[# 0, 7] = 12; // hp
// sprites
enemy_list[# 0, 8] = spr_pixel_seedMon;
enemy_list[# 0, 9] = spr_enemy_attack_nature;
enemy_list[# 0, 10] = spr_student_heal_nature;
// Elements
enemy_list[# 0, 11] = element.nature;
enemy_list[# 0, 12] = element.null;
// location
enemy_list[# 0, 13] = "Flower Fields F1";
// itemDrop
enemy_list[# 0, 14] = drops.empty;
enemy_list[# 0, 15] = drops.empty;
#endregion

// Nature Mon 
#region
// name
enemy_list[# 1, 0] = "Nature Mon"; 
// level
enemy_list[# 1, 1] = 16;
// Spells
enemy_list[# 1, 2] = [94,97,105,116,114,96];
// stats
enemy_list[# 1, 3] = 24; // magic
enemy_list[# 1, 4] = 30; // defense
enemy_list[# 1, 5] = 10; // speed
enemy_list[# 1, 6] = 16; // skill
enemy_list[# 1, 7] = 80; // hp
// sprites
enemy_list[# 1, 8] = spr_pixel_natureMon;
enemy_list[# 1, 9] = spr_enemy_attack_nature;
enemy_list[# 1, 10] = spr_student_heal_nature;
// Elements
enemy_list[# 1, 11] = element.nature;
enemy_list[# 1, 12] = element.null;
// location
enemy_list[# 1, 13] = "Flower Fields F4";
// itemDrop
enemy_list[# 1, 14] = drops.ancientMoss;
enemy_list[# 1, 15] = drops.empty;
#endregion
// Spring Mon 
#region
// name
enemy_list[# 2, 0] = "Spring Mon"; 
// level
enemy_list[# 2, 1] = 40;
// Spells
enemy_list[# 2, 2] = [95,147,111,96];
// stats
enemy_list[# 2, 3] = 80; // magic
enemy_list[# 2, 4] = 88; // defense
enemy_list[# 2, 5] = 66; // speed
enemy_list[# 2, 6] = 64; // skill
enemy_list[# 2, 7] = 182; // hp
// sprites
enemy_list[# 2, 8] = spr_pixel_springMon;
enemy_list[# 2, 9] = spr_enemy_attack_nature;
enemy_list[# 2, 10] = spr_student_heal_nature;
// Elements
enemy_list[# 2, 11] = element.nature;
enemy_list[# 2, 12] = element.null;
// location
enemy_list[# 2, 13] = "Sakura Steps F1";
// itemDrop
enemy_list[# 2, 14] = drops.springPetal;
enemy_list[# 2, 15] = drops.empty;
#endregion
// Fall Mon
#region
// name
enemy_list[# 3, 0] = "Fall Mon"; 
// level
enemy_list[# 3, 1] = 24;
// Spells
enemy_list[# 3, 2] = [95,106,118,96];
// stats
enemy_list[# 3, 3] = 30; // magic
enemy_list[# 3, 4] = 38; // defense
enemy_list[# 3, 5] = 16; // speed
enemy_list[# 3, 6] = 24; // skill
enemy_list[# 3, 7] = 52; // hp
// sprites
enemy_list[# 3, 8] = spr_pixel_fallMon;
enemy_list[# 3, 9] = spr_enemy_attack_nature;
enemy_list[# 3, 10] = spr_student_heal_nature;
// Elements
enemy_list[# 3, 11] = element.nature;
enemy_list[# 3, 12] = element.null;
// location
enemy_list[# 3, 13] = "Autumn Falls F1";
// itemDrop
enemy_list[# 3, 14] = drops.mapleLeaf;
enemy_list[# 3, 15] = drops.empty;
#endregion
// Deer Mon 
#region
// name
enemy_list[# 4, 0] = "Deer Mon"; 
// level
enemy_list[# 4, 1] = 12;
// Spells
enemy_list[# 4, 2] = [94,87];
// stats
enemy_list[# 4, 3] = 16; // magic
enemy_list[# 4, 4] = 8; // defense
enemy_list[# 4, 5] = 20; // speed
enemy_list[# 4, 6] = 12; // skill
enemy_list[# 4, 7] = 28; // hp
// sprites
enemy_list[# 4, 8] = spr_pixel_deerMon;
enemy_list[# 4, 9] = spr_enemy_attack_nature;
enemy_list[# 4, 10] = spr_student_heal_nature;
// Elements
enemy_list[# 4, 11] = element.nature;
enemy_list[# 4, 12] = element.null;
// location
enemy_list[# 4, 13] = "Willow Woods F1";
// itemDrop
enemy_list[# 4, 14] = drops.forestFur;
enemy_list[# 4, 15] = drops.antler;
#endregion
// Flower Mon
#region
// name
enemy_list[# 5, 0] = "Flower Mon"; 
// level
enemy_list[# 5, 1] = 8;
// Spells
enemy_list[# 5, 2] = [93,115,113];
// stats
enemy_list[# 5, 3] = 12; // magic
enemy_list[# 5, 4] = 14; // defense
enemy_list[# 5, 5] = 18; // speed
enemy_list[# 5, 6] = 16; // skill
enemy_list[# 5, 7] = 32; // hp
// sprites
enemy_list[# 5, 8] = spr_pixel_flowerMon;
enemy_list[# 5, 9] = spr_enemy_attack_nature;
enemy_list[# 5, 10] = spr_student_heal_nature;
// Elements
enemy_list[# 5, 11] = element.nature;
enemy_list[# 5, 12] = element.null;
// location
enemy_list[# 5, 13] = "Flower Fields F3";
// itemDrop
enemy_list[# 5, 14] = drops.largePetal;
enemy_list[# 5, 15] = drops.leafyCloth;
#endregion
// Flytrap Mon
#region
// name
enemy_list[# 6, 0] = "Flytrap Mon"; 
// level
enemy_list[# 6, 1] = 16;
// Spells
enemy_list[# 6, 2] = [94,113,165];
// stats
enemy_list[# 6, 3] = 20; // magic
enemy_list[# 6, 4] = 16; // defense
enemy_list[# 6, 5] = 10; // speed
enemy_list[# 6, 6] = 16; // skill
enemy_list[# 6, 7] = 38; // hp
// sprites
enemy_list[# 6, 8] = spr_pixel_flytrapMon;
enemy_list[# 6, 9] = spr_enemy_attack_nature;
enemy_list[# 6, 10] = spr_student_heal_nature;
// Elements
enemy_list[# 6, 11] = element.nature;
enemy_list[# 6, 12] = element.null;
// location
enemy_list[# 6, 13] = "Willow Woods F3";
// itemDrop
enemy_list[# 6, 14] = drops.flytrapPlant;
enemy_list[# 6, 15] = drops.leafyCloth;
#endregion
// Rose Mon
#region
// name
enemy_list[# 7, 0] = "Rose Mon"; 
// level
enemy_list[# 7, 1] = 18;
// Spells
enemy_list[# 7, 2] = [95,113,117];
// stats
enemy_list[# 7, 3] = 18; // magic
enemy_list[# 7, 4] = 16; // defense
enemy_list[# 7, 5] = 10; // speed
enemy_list[# 7, 6] = 24; // skill
enemy_list[# 7, 7] = 46; // hp
// sprites
enemy_list[# 7, 8] = spr_pixel_roseMon;
enemy_list[# 7, 9] = spr_enemy_attack_nature;
enemy_list[# 7, 10] = spr_student_heal_nature;
// Elements
enemy_list[# 7, 11] = element.nature;
enemy_list[# 7, 12] = element.null;
// location
enemy_list[# 7, 13] = "Willow Woods F4";
// itemDrop
enemy_list[# 7, 14] = drops.rosePetal;
enemy_list[# 7, 15] = drops.leafyCloth;
#endregion
// Mushroom Mon
#region
// name
enemy_list[# 8, 0] = "Mushroom Mon"; 
// level
enemy_list[# 8, 1] = 10;
// Spells
enemy_list[# 8, 2] = [115,134,1,135];
// stats
enemy_list[# 8, 3] = 16; // magic
enemy_list[# 8, 4] = 12; // defense
enemy_list[# 8, 5] = 14; // speed
enemy_list[# 8, 6] = 22; // skill
enemy_list[# 8, 7] = 30; // hp
// sprites
enemy_list[# 8, 8] = spr_pixel_mushroomMon_baby;
enemy_list[# 8, 9] = spr_enemy_attack_nature;
enemy_list[# 8, 10] = spr_student_heal_nature;
// Elements
enemy_list[# 8, 11] = element.nature;
enemy_list[# 8, 12] = element.null;
// location
enemy_list[# 8, 13] = "Willow Woods F1";
// itemDrop
enemy_list[# 8, 14] = drops.colorfulMushroom;
enemy_list[# 8, 15] = drops.poisonPowder;
#endregion
// Fungi Mon
#region
// name
enemy_list[# 9, 0] = "Fungi Mon"; 
// level
enemy_list[# 9, 1] = 18;
// Spells
enemy_list[# 9, 2] = [115,117,155,135];
// stats
enemy_list[# 9, 3] = 24; // magic
enemy_list[# 9, 4] = 20; // defense
enemy_list[# 9, 5] = 16; // speed
enemy_list[# 9, 6] = 30; // skill
enemy_list[# 9, 7] = 44; // hp
// sprites
enemy_list[# 9, 8] = spr_pixel_fungiMon;
enemy_list[# 9, 9] = spr_enemy_attack_nature;
enemy_list[# 9, 10] = spr_student_heal_nature;
// Elements
enemy_list[# 9, 11] = element.nature;
enemy_list[# 9, 12] = element.null;
// location
enemy_list[# 9, 13] = "Autumn Falls F1";
// itemDrop
enemy_list[# 9, 14] = drops.colorfulMushroom;
enemy_list[# 9, 15] = drops.goldenPowder;
#endregion
// Seed Mon
#region
// name
enemy_list[# 10, 0] = "Seed Mon"; 
// level
enemy_list[# 10, 1] = 3;
// Spells
enemy_list[# 10, 2] = [93];
// stats
enemy_list[# 10, 3] = 8; // magic
enemy_list[# 10, 4] = 8; // defense
enemy_list[# 10, 5] = 12; // speed
enemy_list[# 10, 6] = 8; // skill
enemy_list[# 10, 7] = 16; // hp
// sprites
enemy_list[# 10, 8] = spr_pixel_seedMon;
enemy_list[# 10, 9] = spr_enemy_attack_nature;
enemy_list[# 10, 10] = spr_student_heal_nature;
// Elements
enemy_list[# 10, 11] = element.nature;
enemy_list[# 10, 12] = element.null;
// location
enemy_list[# 10, 13] = "Flower Fields F1";
// itemDrop
enemy_list[# 10, 14] = drops.magicSeed;
enemy_list[# 10, 15] = drops.empty;
#endregion
// Bud Mon
#region
// name
enemy_list[# 11, 0] = "Bud Mon"; 
// level
enemy_list[# 11, 1] = 5;
// Spells
enemy_list[# 11, 2] = [93,114,108];
// stats
enemy_list[# 11, 3] = 8; // magic
enemy_list[# 11, 4] = 16; // defense
enemy_list[# 11, 5] = 8; // speed
enemy_list[# 11, 6] = 8; // skill
enemy_list[# 11, 7] = 22; // hp
// sprites
enemy_list[# 11, 8] = spr_pixel_budMon;
enemy_list[# 11, 9] = spr_enemy_attack_nature;
enemy_list[# 11, 10] = spr_student_heal_nature;
// Elements
enemy_list[# 11, 11] = element.nature;
enemy_list[# 11, 12] = element.null;
// location
enemy_list[# 11, 13] = "Flower Fields F2";
// itemDrop
enemy_list[# 11, 14] = drops.clover;
enemy_list[# 11, 15] = drops.magicSeed;
#endregion
// Berry Mon
#region
// name
enemy_list[# 12, 0] = "Berry Mon"; 
// level
enemy_list[# 12, 1] = 6;
// Spells
enemy_list[# 12, 2] = [93,103];
// stats
enemy_list[# 12, 3] = 12; // magic
enemy_list[# 12, 4] = 10; // defense
enemy_list[# 12, 5] = 12; // speed
enemy_list[# 12, 6] = 8; // skill
enemy_list[# 12, 7] = 20; // hp
// sprites
enemy_list[# 12, 8] = spr_pixel_berryMon;
enemy_list[# 12, 9] = spr_enemy_attack_nature;
enemy_list[# 12, 10] = spr_student_heal_nature;
// Elements
enemy_list[# 12, 11] = element.nature;
enemy_list[# 12, 12] = element.null;
// location
enemy_list[# 12, 13] = "Flower Fields F2";
// itemDrop
enemy_list[# 12, 14] = drops.bitterBerry;
enemy_list[# 12, 15] = drops.magicSeed;
#endregion
// Garden Mon
#region
// name
enemy_list[# 13, 0] = "Garden Mon"; 
// level
enemy_list[# 13, 1] = 8;
// Spells
enemy_list[# 13, 2] = [93,42,108];
// stats
enemy_list[# 13, 3] = 6; // magic
enemy_list[# 13, 4] = 24; // defense
enemy_list[# 13, 5] = 6; // speed
enemy_list[# 13, 6] = 10; // skill
enemy_list[# 13, 7] = 36; // hp
// sprites
enemy_list[# 13, 8] = spr_pixel_gardenMon;
enemy_list[# 13, 9] = spr_enemy_attack_nature;
enemy_list[# 13, 10] = spr_student_heal_nature;
// Elements
enemy_list[# 13, 11] = element.nature;
enemy_list[# 13, 12] = element.null;
// location
enemy_list[# 13, 13] = "Flower Fields F3";
// itemDrop
enemy_list[# 13, 14] = drops.hydrangea;
enemy_list[# 13, 15] = drops.ironThorn;
#endregion
// Bee Mon
#region
// name
enemy_list[# 14, 0] = "Bee Mon"; 
// level
enemy_list[# 14, 1] = 49;
// Spells
enemy_list[# 14, 2] = [95,74,109,102];
// stats
enemy_list[# 14, 3] = 60; // magic
enemy_list[# 14, 4] = 54; // defense
enemy_list[# 14, 5] = 64; // speed
enemy_list[# 14, 6] = 58; // skill
enemy_list[# 14, 7] = 140; // hp
// sprites
enemy_list[# 14, 8] = spr_pixel_beeMon;
enemy_list[# 14, 9] = spr_enemy_attack_nature;
enemy_list[# 14, 10] = spr_student_heal_nature;
// Elements
enemy_list[# 14, 11] = element.nature;
enemy_list[# 14, 12] = element.air;
// location
enemy_list[# 14, 13] = "Sakura Steps F1";
// itemDrop
enemy_list[# 14, 14] = drops.sweetHoney;
enemy_list[# 14, 15] = drops.stinger;
#endregion
// Wasp Mon
#region
// name
enemy_list[# 15, 0] = "Wasp Mon"; 
// level
enemy_list[# 15, 1] = 52;
// Spells
enemy_list[# 15, 2] = [159,164,74,170];
// stats
enemy_list[# 15, 3] = 72; // magic
enemy_list[# 15, 4] = 66; // defense
enemy_list[# 15, 5] = 76; // speed
enemy_list[# 15, 6] = 70; // skill
enemy_list[# 15, 7] = 180; // hp
// sprites
enemy_list[# 15, 8] = spr_pixel_waspMon;
enemy_list[# 15, 9] = spr_enemy_attack_nature;
enemy_list[# 15, 10] = spr_student_heal_nature;
// Elements
enemy_list[# 15, 11] = element.nature;
enemy_list[# 15, 12] = element.air;
// location
enemy_list[# 15, 13] = "Fey Temple F1";
// itemDrop
enemy_list[# 15, 14] = drops.royalJelly;
enemy_list[# 15, 15] = drops.stinger;
#endregion
// Hunter Mon
#region
// name
enemy_list[# 16, 0] = "Hunter Mon"; 
// level
enemy_list[# 16, 1] = 10;
// Spells
enemy_list[# 16, 2] = [94,75,114,93];
// stats
enemy_list[# 16, 3] = 14; // magic
enemy_list[# 16, 4] = 10; // defense
enemy_list[# 16, 5] = 20; // speed
enemy_list[# 16, 6] = 14; // skill
enemy_list[# 16, 7] = 24; // hp
// sprites
enemy_list[# 16, 8] = spr_pixel_hunterMon;
enemy_list[# 16, 9] = spr_enemy_attack_nature;
enemy_list[# 16, 10] = spr_student_heal_nature;
// Elements
enemy_list[# 16, 11] = element.nature;
enemy_list[# 16, 12] = element.earth;
// location
enemy_list[# 16, 13] = "Flower Fields F4";
// itemDrop
enemy_list[# 16, 14] = drops.sheepFluff;
enemy_list[# 16, 15] = drops.arrowhead;
#endregion
// Leaf Mon
#region
// name
enemy_list[# 17, 0] = "Leaf Mon"; 
// level
enemy_list[# 17, 1] = 20;
// Spells
enemy_list[# 17, 2] = [94,105,111,132];
// stats
enemy_list[# 17, 3] = 26; // magic
enemy_list[# 17, 4] = 16; // defense
enemy_list[# 17, 5] = 22; // speed
enemy_list[# 17, 6] = 18; // skill
enemy_list[# 17, 7] = 48; // hp
// sprites
enemy_list[# 17, 8] = spr_pixel_leafMon;
enemy_list[# 17, 9] = spr_enemy_attack_nature;
enemy_list[# 17, 10] = spr_student_heal_nature;
// Elements
enemy_list[# 17, 11] = element.nature;
enemy_list[# 17, 12] = element.magic;
// location
enemy_list[# 17, 13] = "Willow Woods F3";
// itemDrop
enemy_list[# 17, 14] = drops.magicLeaf;
enemy_list[# 17, 15] = drops.empty;
#endregion
// Cherry Mon
#region
// name
enemy_list[# 18, 0] = "Cherry Mon"; 
// level
enemy_list[# 18, 1] = 46;
// Spells
enemy_list[# 18, 2] = [94,103,111,132];
// stats
enemy_list[# 18, 3] = 82; // magic
enemy_list[# 18, 4] = 80; // defense
enemy_list[# 18, 5] = 60; // speed
enemy_list[# 18, 6] = 54; // skill
enemy_list[# 18, 7] = 156; // hp
// sprites
enemy_list[# 18, 8] = spr_pixel_cherryMon;
enemy_list[# 18, 9] = spr_enemy_attack_nature;
enemy_list[# 18, 10] = spr_student_heal_nature;
// Elements
enemy_list[# 18, 11] = element.nature;
enemy_list[# 18, 12] = element.magic;
// location
enemy_list[# 18, 13] = "Sakura Steps F1";
// itemDrop
enemy_list[# 18, 14] = drops.sakuraPetal;
enemy_list[# 18, 15] = drops.cherryBlossomBranch;
#endregion
// Lily Mon 
#region
// name
enemy_list[# 19, 0] = "Lily Mon"; 
// level
enemy_list[# 19, 1] = 50;
// Spells
enemy_list[# 19, 2] = [94,17,111,132];
// stats
enemy_list[# 19, 3] = 80; // magic
enemy_list[# 19, 4] = 92; // defense
enemy_list[# 19, 5] = 78; // speed
enemy_list[# 19, 6] = 92; // skill
enemy_list[# 19, 7] = 182; // hp
// sprites
enemy_list[# 19, 8] = spr_pixel_lilyMon;
enemy_list[# 19, 9] = spr_enemy_attack_nature;
enemy_list[# 19, 10] = spr_student_heal_nature;
// Elements
enemy_list[# 19, 11] = element.nature;
enemy_list[# 19, 12] = element.water;
// location
enemy_list[# 19, 13] = "Fey Temple F1";
// itemDrop
enemy_list[# 19, 14] = drops.lilypad;
enemy_list[# 19, 15] = drops.lilyFlower;
#endregion
// Elf Mon
#region
// name
enemy_list[# 20, 0] = "Elf Mon"; 
// level
enemy_list[# 20, 1] = 32;
// Spells
enemy_list[# 20, 2] = [106,98,111,93,143,117];
// stats
enemy_list[# 20, 3] = 32; // magic
enemy_list[# 20, 4] = 28; // defense
enemy_list[# 20, 5] = 40; // speed
enemy_list[# 20, 6] = 26; // skill
enemy_list[# 20, 7] = 160; // hp
// sprites
enemy_list[# 20, 8] = spr_pixel_elfMon;
enemy_list[# 20, 9] = spr_enemy_attack_nature;
enemy_list[# 20, 10] = spr_student_heal_nature;
// Elements
enemy_list[# 20, 11] = element.nature;
enemy_list[# 20, 12] = element.light;
// location
enemy_list[# 20, 13] = "Willow Woods F4";
// itemDrop
enemy_list[# 20, 14] = drops.fairyFlower;
enemy_list[# 20, 15] = drops.empty;
#endregion
// Cloud Mon
#region
// name
enemy_list[# 21, 0] = "Cloud Mon"; 
// level
enemy_list[# 21, 1] = 12;
// Spells
enemy_list[# 21, 2] = [73,91,103];
// stats
enemy_list[# 21, 3] = 12; // magic
enemy_list[# 21, 4] = 12; // defense
enemy_list[# 21, 5] = 16; // speed
enemy_list[# 21, 6] = 10; // skill
enemy_list[# 21, 7] = 60; // hp
// sprites
enemy_list[# 21, 8] = spr_pixel_cloudMon;
enemy_list[# 21, 9] = spr_enemy_attack_air;
enemy_list[# 21, 10] = spr_student_heal_air;
// Elements
enemy_list[# 21, 11] = element.air;
enemy_list[# 21, 12] = element.null;
// location
enemy_list[# 21, 13] = "Willow Woods F2";
// itemDrop
enemy_list[# 21, 14] = drops.bottledCloud;
enemy_list[# 21, 15] = drops.empty;
#endregion
// Mist Mon
#region
// name
enemy_list[# 22, 0] = "Mist Mon"; 
// level
enemy_list[# 22, 1] = 44;
// Spells
enemy_list[# 22, 2] = [79,84,74];
// stats
enemy_list[# 22, 3] = 64; // magic
enemy_list[# 22, 4] = 62; // defense
enemy_list[# 22, 5] = 38; // speed
enemy_list[# 22, 6] = 50; // skill
enemy_list[# 22, 7] = 180; // hp
// sprites
enemy_list[# 22, 8] = spr_pixel_mistMon;
enemy_list[# 22, 9] = spr_enemy_attack_air;
enemy_list[# 22, 10] = spr_student_heal_air;
// Elements
enemy_list[# 22, 11] = element.air;
enemy_list[# 22, 12] = element.water;
// location
enemy_list[# 22, 13] = "Sakura Steps F1";
// itemDrop
enemy_list[# 22, 14] = drops.bottledCloud;
enemy_list[# 22, 15] = drops.empty;
#endregion
// Snow Mon
#region
// name
enemy_list[# 23, 0] = "Snow Mon"; 
// level
enemy_list[# 23, 1] = 32;
// Spells
enemy_list[# 23, 2] = [78,22,19];
// stats
enemy_list[# 23, 3] = 36; // magic
enemy_list[# 23, 4] = 36; // defense
enemy_list[# 23, 5] = 20; // speed
enemy_list[# 23, 6] = 24; // skill
enemy_list[# 23, 7] = 110; // hp
// sprites
enemy_list[# 23, 8] = spr_pixel_snowMon;
enemy_list[# 23, 9] = spr_enemy_attack_air;
enemy_list[# 23, 10] = spr_student_heal_air;
// Elements
enemy_list[# 23, 11] = element.air;
enemy_list[# 23, 12] = element.water;
// location
enemy_list[# 23, 13] = "Snowflake Point F1";
// itemDrop
enemy_list[# 23, 14] = drops.bottledCloud;
enemy_list[# 23, 15] = drops.empty;
#endregion
// Dust Mon 
#region
// name
enemy_list[# 24, 0] = "Dust Mon"; 
// level
enemy_list[# 24, 1] = 20;
// Spells
enemy_list[# 24, 2] = [77,38,168];
// stats
enemy_list[# 24, 3] = 22; // magic
enemy_list[# 24, 4] = 24; // defense
enemy_list[# 24, 5] = 20; // speed
enemy_list[# 24, 6] = 16; // skill
enemy_list[# 24, 7] = 80; // hp
// sprites
enemy_list[# 24, 8] = spr_pixel_dustMon;
enemy_list[# 24, 9] = spr_enemy_attack_air;
enemy_list[# 24, 10] = spr_student_heal_air;
// Elements
enemy_list[# 24, 11] = element.air;
enemy_list[# 24, 12] = element.earth;
// location
enemy_list[# 24, 13] = "Autumn Falls F1";
// itemDrop
enemy_list[# 24, 14] = drops.bottledCloud;
enemy_list[# 24, 15] = drops.empty;
#endregion
// Bird Mon
#region
// name
enemy_list[# 25, 0] = "Bird Mon"; 
// level
enemy_list[# 25, 1] = 15;
// Spells
enemy_list[# 25, 2] = [74,38,87];
// stats
enemy_list[# 25, 3] = 12; // magic
enemy_list[# 25, 4] = 16; // defense
enemy_list[# 25, 5] = 28; // speed
enemy_list[# 25, 6] = 24; // skill
enemy_list[# 25, 7] = 38; // hp
// sprites
enemy_list[# 25, 8] = spr_pixel_birdMon;
enemy_list[# 25, 9] = spr_enemy_attack_air;
enemy_list[# 25, 10] = spr_student_heal_air;
// Elements
enemy_list[# 25, 11] = element.air;
enemy_list[# 25, 12] = element.null;
// location
enemy_list[# 25, 13] = "Willow Woods F1";
// itemDrop
enemy_list[# 25, 14] = drops.skyFeather;
enemy_list[# 25, 15] = drops.sharpBeak;
#endregion
// Raven Mon 
#region
// name
enemy_list[# 26, 0] = "Raven Mon"; 
// level
enemy_list[# 26, 1] = 24;
// Spells
enemy_list[# 26, 2] = [158,132,90];
// stats
enemy_list[# 26, 3] = 20; // magic
enemy_list[# 26, 4] = 24; // defense
enemy_list[# 26, 5] = 40; // speed
enemy_list[# 26, 6] = 38; // skill
enemy_list[# 26, 7] = 52; // hp
// sprites
enemy_list[# 26, 8] = spr_pixel_ravenMon;
enemy_list[# 26, 9] = spr_enemy_attack_air;
enemy_list[# 26, 10] = spr_student_heal_air;
// Elements
enemy_list[# 26, 11] = element.air;
enemy_list[# 26, 12] = element.dark;
// location
enemy_list[# 26, 13] = "Autumn Falls F1";
// itemDrop
enemy_list[# 26, 14] = drops.hardBerry;
enemy_list[# 26, 15] = drops.darkFeather;
#endregion
// Swan Mon 
#region
// name
enemy_list[# 27, 0] = "Swan Mon"; 
// level
enemy_list[# 27, 1] = 30;
// Spells
enemy_list[# 27, 2] = [3,74,121];
// stats
enemy_list[# 27, 3] = 40; // magic
enemy_list[# 27, 4] = 36; // defense
enemy_list[# 27, 5] = 52; // speed
enemy_list[# 27, 6] = 36; // skill
enemy_list[# 27, 7] = 88; // hp
// sprites
enemy_list[# 27, 8] = spr_pixel_swanMon;
enemy_list[# 27, 9] = spr_enemy_attack_air;
enemy_list[# 27, 10] = spr_student_heal_nature;
// Elements
enemy_list[# 27, 11] = element.air;
enemy_list[# 27, 12] = element.water;
// location
enemy_list[# 27, 13] = "Snowflake Point F2";
// itemDrop
enemy_list[# 27, 14] = drops.whiteFeather;
enemy_list[# 27, 15] = drops.empty;
#endregion
// Ocean Mon 
#region
// name
enemy_list[# 28, 0] = "Ocean Mon"; 
// level
enemy_list[# 28, 1] = 36;
// Spells
enemy_list[# 28, 2] = [6,14,16,11];
// stats
enemy_list[# 28, 3] = 42; // magic
enemy_list[# 28, 4] = 28; // defense
enemy_list[# 28, 5] = 60; // speed
enemy_list[# 28, 6] = 28; // skill
enemy_list[# 28, 7] = 72; // hp
// sprites
enemy_list[# 28, 8] = spr_pixel_oceanMon;
enemy_list[# 28, 9] = spr_enemy_attack_water;
enemy_list[# 28, 10] = spr_student_heal_water;
// Elements
enemy_list[# 28, 11] = element.water;
enemy_list[# 28, 12] = element.null;
// location
enemy_list[# 28, 13] = "Snowflake Point F3";
// itemDrop
enemy_list[# 28, 14] = drops.saltWaterVial;
enemy_list[# 28, 15] = drops.mermaidScale;
#endregion
// Deep Sea Mon 
#region
// name
enemy_list[# 29, 0] = "Deep Sea Mon"; 
// level
enemy_list[# 29, 1] = 54;
// Spells
enemy_list[# 29, 2] = [7,15,84,12];
// stats
enemy_list[# 29, 3] = 82; // magic
enemy_list[# 29, 4] = 68; // defense
enemy_list[# 29, 5] = 100; // speed
enemy_list[# 29, 6] = 88; // skill
enemy_list[# 29, 7] = 182; // hp
// sprites
enemy_list[# 29, 8] = spr_pixel_deepSeaMon;
enemy_list[# 29, 9] = spr_enemy_attack_water;
enemy_list[# 29, 10] = spr_student_heal_water;
// Elements
enemy_list[# 29, 11] = element.water;
enemy_list[# 29, 12] = element.dark;
// location
enemy_list[# 29, 13] = "Fey Temple F1";
// itemDrop
enemy_list[# 29, 14] = drops.ancientWaterVial;
enemy_list[# 29, 15] = drops.deepSeaFin;
#endregion
// Goldfish Mon
#region
// name
enemy_list[# 30, 0] = "Goldfish Mon"; 
// level
enemy_list[# 30, 1] = 46;
// Spells
enemy_list[# 30, 2] = [8,4,17,11];
// stats
enemy_list[# 30, 3] = 68; // magic
enemy_list[# 30, 4] = 44; // defense
enemy_list[# 30, 5] = 96; // speed
enemy_list[# 30, 6] = 48; // skill
enemy_list[# 30, 7] = 140; // hp
// sprites
enemy_list[# 30, 8] = spr_pixel_goldFishMon;
enemy_list[# 30, 9] = spr_enemy_attack_water;
enemy_list[# 30, 10] = spr_student_heal_water;
// Elements
enemy_list[# 30, 11] = element.water;
enemy_list[# 30, 12] = element.null;
// location
enemy_list[# 30, 13] = "Sakura Steps F3";
// itemDrop
enemy_list[# 3, 14] = drops.freshWaterVial;
enemy_list[# 3, 15] = drops.goldenScale;
#endregion
// Shell Mon 
#region
// name
enemy_list[# 31, 0] = "Shell Mon"; 
// level
enemy_list[# 31, 1] = 56;
// Spells
enemy_list[# 31, 2] = [4,29,38,21];
// stats
enemy_list[# 31, 3] = 102; // magic
enemy_list[# 31, 4] = 120; // defense
enemy_list[# 31, 5] = 116; // speed
enemy_list[# 31, 6] = 90; // skill
enemy_list[# 31, 7] = 228; // hp
// sprites
enemy_list[# 31, 8] = spr_pixel_shellMon;
enemy_list[# 31, 9] = spr_enemy_attack_water;
enemy_list[# 31, 10] = spr_student_heal_water;
// Elements
enemy_list[# 31, 11] = element.water;
enemy_list[# 31, 12] = element.earth;
// location
enemy_list[# 31, 13] = "Fey Temple F1";
// itemDrop
enemy_list[# 31, 14] = drops.shell;
enemy_list[# 31, 15] = drops.coral;
#endregion
// Pearl Mon 
#region
// name
enemy_list[# 32, 0] = "Pearl Mon"; 
// level
enemy_list[# 32, 1] = 58;
// Spells
enemy_list[# 32, 2] = [6,153,135,129];
// stats
enemy_list[# 32, 3] = 84; // magic
enemy_list[# 32, 4] = 148; // defense
enemy_list[# 32, 5] = 120; // speed
enemy_list[# 32, 6] = 62; // skill
enemy_list[# 32, 7] = 240; // hp
// sprites
enemy_list[# 32, 8] = spr_pixel_pearlMon;
enemy_list[# 32, 9] = spr_enemy_attack_water;
enemy_list[# 32, 10] = spr_student_heal_water;
// Elements
enemy_list[# 32, 11] = element.water;
enemy_list[# 32, 12] = element.magic;
// location
enemy_list[# 32, 13] = "Fey Temple F3";
// itemDrop
enemy_list[# 32, 14] = drops.glowingPearl;
enemy_list[# 32, 15] = drops.luminousBead;
#endregion
// White Pearl Mon
#region
// name
enemy_list[# 33, 0] = "White Pearl Mon"; 
// level
enemy_list[# 33, 1] = 64;
// Spells
enemy_list[# 33, 2] = [7,154,135,129,149];
// stats
enemy_list[# 33, 3] = 120; // magic
enemy_list[# 33, 4] = 188; // defense
enemy_list[# 33, 5] = 150; // speed
enemy_list[# 33, 6] = 86; // skill
enemy_list[# 33, 7] = 300; // hp
// sprites
enemy_list[# 33, 8] = spr_pixel_whitePearlMon;
enemy_list[# 33, 9] = spr_enemy_attack_nature;
enemy_list[# 33, 10] = spr_student_heal_water;
// Elements
enemy_list[# 33, 11] = element.water;
enemy_list[# 33, 12] = element.light;
// location
enemy_list[# 33, 13] = "End of the Rainbow F1";
// itemDrop
enemy_list[# 33, 14] = drops.purePearl;
enemy_list[# 33, 15] = drops.seaFoam;
#endregion
// Glass Mon
#region
// name
enemy_list[# 34, 0] = "Glass Mon"; 
// level
enemy_list[# 34, 1] = 64;
// Spells
enemy_list[# 34, 2] = [31,154,135,129,167];
// stats
enemy_list[# 34, 3] = 120; // magic
enemy_list[# 34, 4] = 188; // defense
enemy_list[# 34, 5] = 150; // speed
enemy_list[# 34, 6] = 86; // skill
enemy_list[# 34, 7] = 300; // hp
// sprites
enemy_list[# 34, 8] = spr_pixel_glassMon;
enemy_list[# 34, 9] = spr_enemy_attack_water;
enemy_list[# 34, 10] = spr_student_heal_water;
// Elements
enemy_list[# 34, 11] = element.water;
enemy_list[# 34, 12] = element.magic;
// location
enemy_list[# 34, 13] = "Ancient Abyss F1";
// itemDrop
enemy_list[# 34, 14] = drops.glassPearl;
enemy_list[# 34, 15] = drops.crystalCore;
#endregion
// Rain Mon
#region
// name
enemy_list[# 35, 0] = "Rain Mon"; 
// level
enemy_list[# 35, 1] = 33;
// Spells
enemy_list[# 35, 2] = [84,77,14];
// stats
enemy_list[# 35, 3] = 54; // magic
enemy_list[# 35, 4] = 40; // defense
enemy_list[# 35, 5] = 48; // speed
enemy_list[# 35, 6] = 32; // skill
enemy_list[# 35, 7] = 116; // hp
// sprites
enemy_list[# 35, 8] = spr_pixel_rainMon;
enemy_list[# 35, 9] = spr_enemy_attack_water;
enemy_list[# 35, 10] = spr_student_heal_water;
// Elements
enemy_list[# 35, 11] = element.water;
enemy_list[# 35, 12] = element.air;
// location
enemy_list[# 35, 13] = "Snowflake Point F1";
// itemDrop
enemy_list[# 35, 14] = drops.frozenDroplet;
enemy_list[# 35, 15] = drops.rainMist;
#endregion
// Rainbow Mon
#region
// name
enemy_list[# 36, 0] = "Rainbow Mon"; 
// level
enemy_list[# 36, 1] = 60;
// Spells
enemy_list[# 36, 2] = [148,80,128,121];
// stats
enemy_list[# 36, 3] = 102; // magic
enemy_list[# 36, 4] = 84; // defense
enemy_list[# 36, 5] = 112; // speed
enemy_list[# 36, 6] = 68; // skill
enemy_list[# 36, 7] = 212; // hp
// sprites
enemy_list[# 36, 8] = spr_pixel_rainbowMon;
enemy_list[# 36, 9] = spr_enemy_attack_water;
enemy_list[# 36, 10] = spr_student_heal_water;
// Elements
enemy_list[# 36, 11] = element.water;
enemy_list[# 36, 12] = element.light;
// location
enemy_list[# 36, 13] = "End of the Rainbow F1";
// itemDrop
enemy_list[# 36, 14] = drops.rainbowMist;
enemy_list[# 36, 15] = drops.ambroisa;
#endregion
// Galaxy Mon 
#region
// name
enemy_list[# 37, 0] = "Galaxy Mon"; 
// level
enemy_list[# 37, 1] = 60;
// Spells
enemy_list[# 37, 2] = [148,12,157,47];
// stats
enemy_list[# 37, 3] = 102; // magic
enemy_list[# 37, 4] = 84; // defense
enemy_list[# 37, 5] = 112; // speed
enemy_list[# 37, 6] = 68; // skill
enemy_list[# 37, 7] = 212; // hp
// sprites
enemy_list[# 37, 8] = spr_pixel_galaxyMon;
enemy_list[# 37, 9] = spr_enemy_attack_dark;
enemy_list[# 37, 10] = spr_student_heal_dark;
// Elements
enemy_list[# 37, 11] = element.dark;
enemy_list[# 37, 12] = element.magic;
// location
enemy_list[# 37, 13] = "Ancient Abyss F1";
// itemDrop
enemy_list[# 37, 14] = drops.galaxyMist;
enemy_list[# 37, 15] = drops.starTear;
#endregion
// Saphire Mon
#region
// name
enemy_list[# 38, 0] = "Saphire Mon"; 
// level
enemy_list[# 38, 1] = 40;
// Spells
enemy_list[# 38, 2] = [55,141,5];
// stats
enemy_list[# 38, 3] = 40; // magic
enemy_list[# 38, 4] = 80; // defense
enemy_list[# 38, 5] = 32; // speed
enemy_list[# 38, 6] = 36; // skill
enemy_list[# 38, 7] = 152; // hp
// sprites
enemy_list[# 38, 8] = spr_pixel_sapphireMon;
enemy_list[# 38, 9] = spr_enemy_attack_water;
enemy_list[# 38, 10] = spr_student_heal_water;
// Elements
enemy_list[# 38, 11] = element.water;
enemy_list[# 38, 12] = element.earth;
// location
enemy_list[# 38, 13] = "Snowflake Point F4";
// itemDrop
enemy_list[# 38, 14] = drops.rockChunk;
enemy_list[# 38, 15] = drops.sapphire;
#endregion
// Ruby Mon
#region
// name
enemy_list[# 39, 0] = "Ruby Mon"; 
// level
enemy_list[# 39, 1] = 30;
// Spells
enemy_list[# 39, 2] = [56,141,151];
// stats
enemy_list[# 39, 3] = 32; // magic
enemy_list[# 39, 4] = 60; // defense
enemy_list[# 39, 5] = 24; // speed
enemy_list[# 39, 6] = 28; // skill
enemy_list[# 39, 7] = 100; // hp
// sprites
enemy_list[# 39, 8] = spr_pixel_rubyMon;
enemy_list[# 39, 9] = spr_enemy_attack_fire;
enemy_list[# 39, 10] = spr_student_heal_fire;
// Elements
enemy_list[# 39, 11] = element.fire;
enemy_list[# 39, 12] = element.earth;
// location
enemy_list[# 39, 13] = "Autumn Falls F4";
// itemDrop
enemy_list[# 39, 14] = drops.rockChunk;
enemy_list[# 39, 15] = drops.ruby;
#endregion
// Marble Mon
#region
// name
enemy_list[# 40, 0] = "Marble Mon"; 
// level
enemy_list[# 40, 1] = 72;
// Spells
enemy_list[# 40, 2] = [30,149,46];
// stats
enemy_list[# 40, 3] = 102; // magic
enemy_list[# 40, 4] = 380; // defense
enemy_list[# 40, 5] = 10; // speed
enemy_list[# 40, 6] = 88; // skill
enemy_list[# 40, 7] = 400; // hp
// sprites
enemy_list[# 40, 8] = spr_pixel_marbleMon;
enemy_list[# 40, 9] = spr_enemy_attack_earth;
enemy_list[# 40, 10] = spr_student_heal_earth;
// Elements
enemy_list[# 40, 11] = element.earth;
enemy_list[# 40, 12] = element.light;
// location
enemy_list[# 40, 13] = "End of the Rainbow F1";
// itemDrop
enemy_list[# 40, 14] = drops.marbleStone;
enemy_list[# 40, 15] = drops.empty;
#endregion
// Obsidion
#region
// name
enemy_list[# 41, 0] = "Obsidion Mon"; 
// level
enemy_list[# 41, 1] = 72;
// Spells
enemy_list[# 41, 2] = [34,167,47];
// stats
enemy_list[# 41, 3] = 102; // magic
enemy_list[# 41, 4] = 380; // defense
enemy_list[# 41, 5] = 10; // speed
enemy_list[# 41, 6] = 88; // skill
enemy_list[# 41, 7] = 400; // hp
// sprites
enemy_list[# 41, 8] = spr_pixel_obsidionMon;
enemy_list[# 41, 9] = spr_enemy_attack_earth;
enemy_list[# 41, 10] = spr_student_heal_earth;
// Elements
enemy_list[# 41, 11] = element.earth;
enemy_list[# 41, 12] = element.dark;
// location
enemy_list[# 41, 13] = "Ancient Abyss F1";
// itemDrop
enemy_list[# 41, 14] = drops.obsidionStone;
enemy_list[# 41, 15] = drops.empty;
#endregion
// Fountain Mon
#region
// name
enemy_list[# 42, 0] = "Fountain Mon"; 
// level
enemy_list[# 42, 1] = 56;
// Spells
enemy_list[# 42, 2] = [3,21,17,28];
// stats
enemy_list[# 42, 3] = 94; // magic
enemy_list[# 42, 4] = 280; // defense
enemy_list[# 42, 5] = 148; // speed
enemy_list[# 42, 6] = 150; // skill
enemy_list[# 42, 7] = 1280; // hp
// sprites
enemy_list[# 42, 8] = spr_pixel_fountainMon;
enemy_list[# 42, 9] = spr_enemy_attack_earth;
enemy_list[# 42, 10] = spr_student_heal_earth;
// Elements
enemy_list[# 42, 11] = element.earth;
enemy_list[# 42, 12] = element.water;
// location
enemy_list[# 42, 13] = "Fey Temple F2";
// itemDrop
enemy_list[# 42, 14] = drops.stoneChunk;
enemy_list[# 42, 15] = drops.crystalWater;
#endregion
// Queen Mon
#region
// name
enemy_list[# 43, 0] = "Queen Mon"; 
// level
enemy_list[# 43, 1] = 98;
// Spells
enemy_list[# 43, 2] = [128,28,36,46,65];
// stats
enemy_list[# 43, 3] = 162; // magic
enemy_list[# 43, 4] = 280; // defense
enemy_list[# 43, 5] = 148; // speed
enemy_list[# 43, 6] = 150; // skill
enemy_list[# 43, 7] = 800; // hp
// sprites
enemy_list[# 43, 8] = spr_pixel_queenMon;
enemy_list[# 43, 9] = spr_enemy_attack_earth;
enemy_list[# 43, 10] = spr_student_heal_earth;
// Elements
enemy_list[# 43, 11] = element.earth;
enemy_list[# 43, 12] = element.null;
// location
enemy_list[# 43, 13] = "Fey Temple F4";
// itemDrop
enemy_list[# 43, 14] = drops.diamond;
enemy_list[# 43, 15] = drops.empty;
#endregion
// Clay Mon 
#region
// name
enemy_list[# 44, 0] = "Clay Mon"; 
// level
enemy_list[# 44, 1] = 25;
// Spells
enemy_list[# 44, 2] = [29,42];
// stats
enemy_list[# 44, 3] = 20; // magic
enemy_list[# 44, 4] = 36; // defense
enemy_list[# 44, 5] = 26; // speed
enemy_list[# 44, 6] = 26; // skill
enemy_list[# 44, 7] = 68; // hp
// sprites
enemy_list[# 44, 8] = spr_pixel_clayMon;
enemy_list[# 44, 9] = spr_enemy_attack_earth;
enemy_list[# 44, 10] = spr_student_heal_earth;
// Elements
enemy_list[# 44, 11] = element.earth;
enemy_list[# 44, 12] = element.null;
// location
enemy_list[# 44, 13] = "Autumn Falls F2";
// itemDrop
enemy_list[# 44, 14] = drops.softClay;
enemy_list[# 44, 15] = drops.empty;
#endregion
// Porcalain Mon
#region
// name
enemy_list[# 45, 0] = "Porcalain Mon"; 
// level
enemy_list[# 45, 1] = 45;
// Spells
enemy_list[# 45, 2] = [30,44,149];
// stats
enemy_list[# 45, 3] = 48; // magic
enemy_list[# 45, 4] = 36; // defense
enemy_list[# 45, 5] = 48; // speed
enemy_list[# 45, 6] = 50; // skill
enemy_list[# 45, 7] = 168; // hp
// sprites
enemy_list[# 45, 8] = spr_pixel_porcalainMon;
enemy_list[# 45, 9] = spr_enemy_attack_earth;
enemy_list[# 45, 10] = spr_student_heal_earth;
// Elements
enemy_list[# 45, 11] = element.earth;
enemy_list[# 45, 12] = element.null;
// location
enemy_list[# 45, 13] = "Sakura Steps F3";
// itemDrop
enemy_list[# 45, 14] = drops.porcelainShard;
enemy_list[# 45, 15] = drops.paintedBowl;
#endregion
// Gear Mon
#region
// name
enemy_list[# 46, 0] = "Gear Mon"; 
// level
enemy_list[# 46, 1] = 56;
// Spells
enemy_list[# 46, 2] = [44,132,28];
// stats
enemy_list[# 46, 3] = 96; // magic
enemy_list[# 46, 4] = 116; // defense
enemy_list[# 46, 5] = 94; // speed
enemy_list[# 46, 6] = 82; // skill
enemy_list[# 46, 7] = 200; // hp
// sprites
enemy_list[# 46, 8] = spr_pixel_gearMon;
enemy_list[# 46, 9] = spr_enemy_attack_earth;
enemy_list[# 46, 10] = spr_student_heal_earth;
// Elements
enemy_list[# 46, 11] = element.earth;
enemy_list[# 46, 12] = element.null;
// location
enemy_list[# 46, 13] = "Fey Temple F2";
// itemDrop
enemy_list[# 46, 14] = drops.scrapMetal;
enemy_list[# 46, 15] = drops.oldCog;
#endregion
// Metal Mon
#region
// name
enemy_list[# 47, 0] = "Metal Mon"; 
// level
enemy_list[# 47, 1] = 60;
// Spells
enemy_list[# 47, 2] = [44,33];
// stats
enemy_list[# 47, 3] = 120; // magic
enemy_list[# 47, 4] = 134; // defense
enemy_list[# 47, 5] = 24; // speed
enemy_list[# 47, 6] = 80; // skill
enemy_list[# 47, 7] = 220; // hp
// sprites
enemy_list[# 47, 8] = spr_pixel_metalMon;
enemy_list[# 47, 9] = spr_enemy_attack_earth;
enemy_list[# 47, 10] = spr_student_heal_earth;
// Elements
enemy_list[# 47, 11] = element.earth;
enemy_list[# 47, 12] = element.null;
// location
enemy_list[# 47, 13] = "Fey Temple F4";
// itemDrop
enemy_list[# 47, 14] = drops.scrapMetal;
enemy_list[# 47, 15] = drops.prestineIron;
#endregion
// Snake Mon
#region
// name
enemy_list[# 48, 0] = "Snake Mon"; 
// level
enemy_list[# 48, 1] = 16;
// Spells
enemy_list[# 48, 2] = [39,42,127,117];
// stats
enemy_list[# 48, 3] = 22; // magic
enemy_list[# 48, 4] = 20; // defense
enemy_list[# 48, 5] = 26; // speed
enemy_list[# 48, 6] = 28; // skill
enemy_list[# 48, 7] = 42; // hp
// sprites
enemy_list[# 48, 8] = spr_pixel_snakeMon;
enemy_list[# 48, 9] = spr_enemy_attack_earth;
enemy_list[# 48, 10] = spr_student_heal_earth;
// Elements
enemy_list[# 48, 11] = element.earth;
enemy_list[# 48, 12] = element.null;
// location
enemy_list[# 48, 13] = "Willow Woods F3";
// itemDrop
enemy_list[# 48, 14] = drops.snakeVenom;
enemy_list[# 48, 15] = drops.emerald;
#endregion
// Serpent Mon
#region
// name
enemy_list[# 49, 0] = "Serpent Mon"; 
// level
enemy_list[# 49, 1] = 28;
// Spells
enemy_list[# 49, 2] = [39,45,23,117];
// stats
enemy_list[# 49, 3] = 26; // magic
enemy_list[# 49, 4] = 40; // defense
enemy_list[# 49, 5] = 34; // speed
enemy_list[# 49, 6] = 32; // skill
enemy_list[# 49, 7] = 82; // hp
// sprites
enemy_list[# 49, 8] = spr_pixel_serpentMon;
enemy_list[# 49, 9] = spr_enemy_attack_earth;
enemy_list[# 49, 10] = spr_student_heal_earth;
// Elements
enemy_list[# 49, 11] = element.earth;
enemy_list[# 49, 12] = element.dark;
// location
enemy_list[# 49, 13] = "Autumn Falls F3";
// itemDrop
enemy_list[# 49, 14] = drops.snakeVenom;
enemy_list[# 49, 15] = drops.shinyScale;
#endregion
// Mirror Mon 
#region
// name
enemy_list[# 50, 0] = "Mirror Mon"; 
// level
enemy_list[# 50, 1] = 56;
// Spells
enemy_list[# 50, 2] = [44,131,136,28];
// stats
enemy_list[# 50, 3] = 228; // magic
enemy_list[# 50, 4] = 160; // defense
enemy_list[# 50, 5] = 204; // speed
enemy_list[# 50, 6] = 200; // skill
enemy_list[# 50, 7] = 210; // hp
// sprites
enemy_list[# 50, 8] = spr_pixel_mirrorMon;
enemy_list[# 50, 9] = spr_enemy_attack_earth;
enemy_list[# 50, 10] = spr_student_heal_earth;
// Elements
enemy_list[# 50, 11] = element.earth;
enemy_list[# 50, 12] = element.magic;
// location
enemy_list[# 50, 13] = "End of the Rainbow F1";
// itemDrop
enemy_list[# 50, 14] = drops.mirrorShard;
enemy_list[# 50, 15] = drops.empty;
#endregion
// Gold Mon
#region
// name
enemy_list[# 51, 0] = "Gold Mon"; 
// level
enemy_list[# 51, 1] = 60;
// Spells
enemy_list[# 51, 2] = [45,151,136,139];
// stats
enemy_list[# 51, 3] = 268; // magic
enemy_list[# 51, 4] = 176; // defense
enemy_list[# 51, 5] = 214; // speed
enemy_list[# 51, 6] = 210; // skill
enemy_list[# 51, 7] = 248; // hp
// sprites
enemy_list[# 51, 8] = spr_pixel_goldMon;
enemy_list[# 51, 9] = spr_enemy_attack_earth;
enemy_list[# 51, 10] = spr_student_heal_earth;
// Elements
enemy_list[# 51, 11] = element.earth;
enemy_list[# 51, 12] = element.magic;
// location
enemy_list[# 51, 13] = "End of the Rainbow F3";
// itemDrop
enemy_list[# 51, 14] = drops.mirrorShard;
enemy_list[# 51, 15] = drops.goldenOrb;
#endregion
// Flame Mon
#region
// name
enemy_list[# 52, 0] = "Flame Mon"; 
// level
enemy_list[# 52, 1] = 30;
// Spells
enemy_list[# 52, 2] = [52,68,63];
// stats
enemy_list[# 52, 3] = 46; // magic
enemy_list[# 52, 4] = 40; // defense
enemy_list[# 52, 5] = 48; // speed
enemy_list[# 52, 6] = 80; // skill
enemy_list[# 52, 7] = 112; // hp
// sprites
enemy_list[# 52, 8] = spr_pixel_flameMon;
enemy_list[# 52, 9] = spr_enemy_attack_fire;
enemy_list[# 52, 10] = spr_student_heal_fire;
// Elements
enemy_list[# 52, 11] = element.fire;
enemy_list[# 52, 12] = element.null;
// location
enemy_list[# 52, 13] = "Snowflake Point F1";
// itemDrop
enemy_list[# 52, 14] = drops.flameOrb;
enemy_list[# 52, 15] = drops.redSash;
#endregion
// Blue Flame Mon
#region
// name
enemy_list[# 53, 0] = "Blue Flame Mon"; 
// level
enemy_list[# 53, 1] = 38;
// Spells
enemy_list[# 53, 2] = [52,22,83];
// stats
enemy_list[# 53, 3] = 54; // magic
enemy_list[# 53, 4] = 48; // defense
enemy_list[# 53, 5] = 56; // speed
enemy_list[# 53, 6] = 96; // skill
enemy_list[# 53, 7] = 138; // hp
// sprites
enemy_list[# 53, 8] = spr_pixel_blueFlameMon;
enemy_list[# 53, 9] = spr_enemy_attack_fire;
enemy_list[# 53, 10] = spr_student_heal_fire;
// Elements
enemy_list[# 53, 11] = element.fire;
enemy_list[# 53, 12] = element.null;
// location
enemy_list[# 53, 13] = "Snowflake Point F4";
// itemDrop
enemy_list[# 53, 14] = drops.coldOrb;
enemy_list[# 53, 15] = drops.blueSash;
#endregion
// Acid Mon
#region
// name
enemy_list[# 54, 0] = "Acid Mon"; 
// level
enemy_list[# 54, 1] = 62;
// Spells
enemy_list[# 54, 2] = [54,82];
// stats
enemy_list[# 54, 3] = 262; // magic
enemy_list[# 54, 4] = 224; // defense
enemy_list[# 54, 5] = 168; // speed
enemy_list[# 54, 6] = 262; // skill
enemy_list[# 54, 7] = 240; // hp
// sprites
enemy_list[# 54, 8] = spr_pixel_acidMon;
enemy_list[# 54, 9] = spr_enemy_attack_fire;
enemy_list[# 54, 10] = spr_student_heal_fire;
// Elements
enemy_list[# 54, 11] = element.fire;
enemy_list[# 54, 12] = element.null;
// location
enemy_list[# 54, 13] = "Ancient Abyss F2";
// itemDrop
enemy_list[# 54, 14] = drops.chemicalVial;
enemy_list[# 54, 15] = drops.empty;
#endregion
// Horror Mon
#region
// name
enemy_list[# 55, 0] = "Horror Mon"; 
// level
enemy_list[# 55, 1] = 66;
// Spells
enemy_list[# 55, 2] = [83,63,14,101];
// stats
enemy_list[# 55, 3] = 292; // magic
enemy_list[# 55, 4] = 254; // defense
enemy_list[# 55, 5] = 198; // speed
enemy_list[# 55, 6] = 292; // skill
enemy_list[# 55, 7] = 280; // hp
// sprites
enemy_list[# 55, 8] = spr_pixel_horroMon;
enemy_list[# 55, 9] = spr_enemy_attack_dark;
enemy_list[# 55, 10] = spr_student_heal_dark;
// Elements
enemy_list[# 55, 11] = element.dark;
enemy_list[# 55, 12] = element.null;
// location
enemy_list[# 55, 13] = "Ancient Abyss F4";
// itemDrop
enemy_list[# 55, 14] = drops.midnightCloth;
enemy_list[# 55, 15] = drops.warTech;
#endregion
// Bomb Mon
#region
// name
enemy_list[# 56, 0] = "Bomb Mon"; 
// level
enemy_list[# 56, 1] = 84;
// Spells
enemy_list[# 56, 2] = [61,69,54,59,136,72];
// stats
enemy_list[# 56, 3] = 102; // magic
enemy_list[# 56, 4] = 48; // defense
enemy_list[# 56, 5] = 112; // speed
enemy_list[# 56, 6] = 66; // skill
enemy_list[# 56, 7] = 600; // hp
// sprites
enemy_list[# 56, 8] = spr_pixel_bombMon;
enemy_list[# 56, 9] = spr_enemy_attack_fire;
enemy_list[# 56, 10] = spr_student_heal_fire;
// Elements
enemy_list[# 56, 11] = element.fire;
enemy_list[# 56, 12] = element.null;
// location
enemy_list[# 56, 13] = "Sakura Steps F4";
// itemDrop
enemy_list[# 56, 14] = drops.everBurningJewel;
enemy_list[# 56, 15] = drops.empty;
#endregion
// Moth Mon
#region
// name
enemy_list[# 57, 0] = "Moth Mon"; 
// level
enemy_list[# 57, 1] = 28;
// Spells
enemy_list[# 57, 2] = [51,53,69,87];
// stats
enemy_list[# 57, 3] = 30; // magic
enemy_list[# 57, 4] = 26; // defense
enemy_list[# 57, 5] = 38; // speed
enemy_list[# 57, 6] = 30; // skill
enemy_list[# 57, 7] = 110; // hp
// sprites
enemy_list[# 57, 8] = spr_pixel_mothMon;
enemy_list[# 57, 9] = spr_enemy_attack_fire;
enemy_list[# 57, 10] = spr_student_heal_fire;
// Elements
enemy_list[# 57, 11] = element.fire;
enemy_list[# 57, 12] = element.null;
// location
enemy_list[# 57, 13] = "Autumn Falls F4";
// itemDrop
enemy_list[# 57, 14] = drops.mothWing;
enemy_list[# 57, 15] = drops.torch;
#endregion
// Ice Moth Mon
#region
// name
enemy_list[# 58, 0] = "Ice Moth Mon"; 
// level
enemy_list[# 58, 1] = 36;
// Spells
enemy_list[# 58, 2] = [5,74,22,87];
// stats
enemy_list[# 58, 3] = 42; // magic
enemy_list[# 58, 4] = 38; // defense
enemy_list[# 58, 5] = 52; // speed
enemy_list[# 58, 6] = 42; // skill
enemy_list[# 58, 7] = 132; // hp
// sprites
enemy_list[# 58, 8] = spr_pixel_iceMothMon;
enemy_list[# 58, 9] = spr_enemy_attack_air;
enemy_list[# 58, 10] = spr_student_heal_air;
// Elements
enemy_list[# 58, 11] = element.air;
enemy_list[# 58, 12] = element.null;
// location
enemy_list[# 58, 13] = "Snowflake Point F1";
// itemDrop
enemy_list[# 58, 14] = drops.mothWing;
enemy_list[# 58, 15] = drops.snowflake;
#endregion
// Wisp Mon
#region
// name
enemy_list[# 59, 0] = "Wisp Mon"; 
// level
enemy_list[# 59, 1] = 20;
// Spells
enemy_list[# 59, 2] = [70,55,118];
// stats
enemy_list[# 59, 3] = 38; // magic
enemy_list[# 59, 4] = 4; // defense
enemy_list[# 59, 5] = 32; // speed
enemy_list[# 59, 6] = 24; // skill
enemy_list[# 59, 7] = 32; // hp
// sprites
enemy_list[# 59, 8] = spr_pixel_wispMon;
enemy_list[# 59, 9] = spr_enemy_attack_fire;
enemy_list[# 59, 10] = spr_student_heal_fire;
// Elements
enemy_list[# 59, 11] = element.fire;
enemy_list[# 59, 12] = element.magic;
// location
enemy_list[# 59, 13] = "Willow Woods F4";
// itemDrop
enemy_list[# 59, 14] = drops.wisp;
enemy_list[# 59, 15] = drops.empty;
#endregion
// Candle Mon 
#region
// name
enemy_list[# 60, 0] = "Candle Mon"; 
// level
enemy_list[# 60, 1] = 58;
// Spells
enemy_list[# 60, 2] = [70,71,53,64];
// stats
enemy_list[# 60, 3] = 210; // magic
enemy_list[# 60, 4] = 266; // defense
enemy_list[# 60, 5] = 218; // speed
enemy_list[# 60, 6] = 244; // skill
enemy_list[# 60, 7] = 320; // hp
// sprites
enemy_list[# 60, 8] = spr_pixel_candleMon;
enemy_list[# 60, 9] = spr_enemy_attack_fire;
enemy_list[# 60, 10] = spr_student_heal_fire;
// Elements
enemy_list[# 60, 11] = element.fire;
enemy_list[# 60, 12] = element.light;
// location
enemy_list[# 60, 13] = "End of the Rainbow F2";
// itemDrop
enemy_list[# 60, 14] = drops.marigold;
enemy_list[# 60, 15] = drops.paintedSkull;
#endregion
// Muerto Mon
#region
// name
enemy_list[# 61, 0] = "Muerto Mon"; 
// level
enemy_list[# 61, 1] = 58;
// Spells
enemy_list[# 61, 2] = [70,71,53,160];
// stats
enemy_list[# 61, 3] = 246; // magic
enemy_list[# 61, 4] = 266; // defense
enemy_list[# 61, 5] = 218; // speed
enemy_list[# 61, 6] = 244; // skill
enemy_list[# 61, 7] = 280; // hp
// sprites
enemy_list[# 61, 8] = spr_pixel_muertoMon;
enemy_list[# 61, 9] = spr_enemy_attack_fire;
enemy_list[# 61, 10] = spr_student_heal_fire;
// Elements
enemy_list[# 61, 11] = element.fire;
enemy_list[# 61, 12] = element.dark;
// location
enemy_list[# 61, 13] = "Ancient Abyss F2";
// itemDrop
enemy_list[# 61, 14] = drops.candleWax;
enemy_list[# 61, 15] = drops.unwaveringFlame;
#endregion
// Face Mon
#region
// name
enemy_list[# 62, 0] = "Face Mon"; 
// level
enemy_list[# 62, 1] = 60;
// Spells
enemy_list[# 62, 2] = [169,158];
// stats
enemy_list[# 62, 3] = 260; // magic
enemy_list[# 62, 4] = 260; // defense
enemy_list[# 62, 5] = 260; // speed
enemy_list[# 62, 6] = 260; // skill
enemy_list[# 62, 7] = 260; // hp
// sprites
enemy_list[# 62, 8] = spr_pixel_faceMon;
enemy_list[# 62, 9] = spr_enemy_attack_magic;
enemy_list[# 62, 10] = spr_student_heal_magic;
// Elements
enemy_list[# 62, 11] = element.magic;
enemy_list[# 62, 12] = element.null;
// location
enemy_list[# 62, 13] = "Ancient Abyss F3";
// itemDrop
enemy_list[# 62, 14] = drops.tornWing;
enemy_list[# 62, 15] = drops.humanoidMask;
#endregion
// Alien Mon
#region
// name
enemy_list[# 63, 0] = "Alien Mon"; 
// level
enemy_list[# 63, 1] = 62;
// Spells
enemy_list[# 63, 2] = [144,119];
// stats
enemy_list[# 63, 3] = 160; // magic
enemy_list[# 63, 4] = 80; // defense
enemy_list[# 63, 5] = 82; // speed
enemy_list[# 63, 6] = 120; // skill
enemy_list[# 63, 7] = 162; // hp
// sprites
enemy_list[# 63, 8] = spr_pixel_alienMon;
enemy_list[# 63, 9] = spr_enemy_attack_magic;
enemy_list[# 63, 10] = spr_student_heal_magic;
// Elements
enemy_list[# 63, 11] = element.magic;
enemy_list[# 63, 12] = element.null;
// location
enemy_list[# 63, 13] = "Fey Temple F3";
// itemDrop
enemy_list[# 63, 14] = drops.spaceRock;
enemy_list[# 63, 15] = drops.techyBox;
#endregion
// Kitsune Mon
#region
// name
enemy_list[# 64, 0] = "Kitsune Mon"; 
// level
enemy_list[# 64, 1] = 40;
// Spells
enemy_list[# 64, 2] = [121,165,48];
// stats
enemy_list[# 64, 3] = 48; // magic
enemy_list[# 64, 4] = 42; // defense
enemy_list[# 64, 5] = 52; // speed
enemy_list[# 64, 6] = 70; // skill
enemy_list[# 64, 7] = 130; // hp
// sprites
enemy_list[# 64, 8] = spr_pixel_kitsuneMon;
enemy_list[# 64, 9] = spr_enemy_attack_magic;
enemy_list[# 64, 10] = spr_student_heal_magic;
// Elements
enemy_list[# 64, 11] = element.magic;
enemy_list[# 64, 12] = element.null;
// location
enemy_list[# 64, 13] = "Sakura Steps F1";
// itemDrop
enemy_list[# 64, 14] = drops.bell;
enemy_list[# 64, 15] = drops.foxTail;
#endregion
// Ice Kitsune Mon
#region
// name
enemy_list[# 65, 0] = "Ice Kitsune Mon"; 
// level
enemy_list[# 65, 1] = 38;
// Spells
enemy_list[# 65, 2] = [5,165,48];
// stats
enemy_list[# 65, 3] = 5; // magic
enemy_list[# 65, 4] = 165; // defense
enemy_list[# 65, 5] = 48; // speed
enemy_list[# 65, 6] = 66; // skill
enemy_list[# 65, 7] = 120; // hp
// sprites
enemy_list[# 65, 8] = spr_pixel_iceKitsuneMon;
enemy_list[# 65, 9] = spr_enemy_attack_magic;
enemy_list[# 65, 10] = spr_student_heal_magic;
// Elements
enemy_list[# 65, 11] = element.magic;
enemy_list[# 65, 12] = element.air;
// location
enemy_list[# 65, 13] = "Snowflake Point F1";
// itemDrop
enemy_list[# 65, 14] = drops.bell;
enemy_list[# 65, 15] = drops.arcticTail;
#endregion
// Flame Kitsune Mon 
#region
// name
enemy_list[# 66, 0] = "Flame Kitsune Mon"; 
// level
enemy_list[# 66, 1] = 42;
// Spells
enemy_list[# 66, 2] = [53,165,48];
// stats
enemy_list[# 66, 3] = 52; // magic
enemy_list[# 66, 4] = 46; // defense
enemy_list[# 66, 5] = 56; // speed
enemy_list[# 66, 6] = 74; // skill
enemy_list[# 66, 7] = 140; // hp
// sprites
enemy_list[# 66, 8] = spr_pixel_fireKitsuneMon;
enemy_list[# 66, 9] = spr_enemy_attack_magic;
enemy_list[# 66, 10] = spr_student_heal_magic;
// Elements
enemy_list[# 66, 11] = element.magic;
enemy_list[# 66, 12] = element.fire;
// location
enemy_list[# 66, 13] = "Sakura Steps F3";
// itemDrop
enemy_list[# 66, 14] = drops.bell;
enemy_list[# 66, 15] = drops.desertTail;
#endregion
// Mask Mon
#region
// name
enemy_list[# 67, 0] = "Mask Mon"; 
// level
enemy_list[# 67, 1] = 38;
// Spells
enemy_list[# 67, 2] = [170,75,90];
// stats
enemy_list[# 67, 3] = 52; // magic
enemy_list[# 67, 4] = 52; // defense
enemy_list[# 67, 5] = 64; // speed
enemy_list[# 67, 6] = 44; // skill
enemy_list[# 67, 7] = 152; // hp
// sprites
enemy_list[# 67, 8] = spr_pixel_maskMon;
enemy_list[# 67, 9] = spr_enemy_attack_magic;
enemy_list[# 67, 10] = spr_student_heal_magic;
// Elements
enemy_list[# 67, 11] = element.magic;
enemy_list[# 67, 12] = element.null;
// location
enemy_list[# 67, 13] = "Snowflake Point F2";
// itemDrop
enemy_list[# 67, 14] = drops.mask;
enemy_list[# 67, 15] = drops.blackInk;
#endregion
// Oni Mon
#region
// name
enemy_list[# 68, 0] = "Oni Mon"; 
// level
enemy_list[# 68, 1] = 52;
// Spells
enemy_list[# 68, 2] = [170,53,69];
// stats
enemy_list[# 68, 3] = 64; // magic
enemy_list[# 68, 4] = 64; // defense
enemy_list[# 68, 5] = 76; // speed
enemy_list[# 68, 6] = 76; // skill
enemy_list[# 68, 7] = 180; // hp
// sprites
enemy_list[# 68, 8] = spr_pixel_oniMon;
enemy_list[# 68, 9] = spr_enemy_attack_magic;
enemy_list[# 68, 10] = spr_student_heal_magic;
// Elements
enemy_list[# 68, 11] = element.fire;
enemy_list[# 68, 12] = element.null;
// location
enemy_list[# 68, 13] = "Sakura Steps F4";
// itemDrop
enemy_list[# 68, 14] = drops.mask;
enemy_list[# 68, 15] = drops.oniTooth;
#endregion
// Kabuki Mon
#region
// name
enemy_list[# 69, 0] = "Kabuki Mon"; 
// level
enemy_list[# 69, 1] = 50;
// Spells
enemy_list[# 69, 2] = [170,160,167];
// stats
enemy_list[# 69, 3] = 60; // magic
enemy_list[# 69, 4] = 60; // defense
enemy_list[# 69, 5] = 72; // speed
enemy_list[# 69, 6] = 52; // skill
enemy_list[# 69, 7] = 172; // hp
// sprites
enemy_list[# 69, 8] = spr_pixel_kabukiMon;
enemy_list[# 69, 9] = spr_enemy_attack_magic;
enemy_list[# 69, 10] = spr_student_heal_magic;
// Elements
enemy_list[# 69, 11] = element.dark;
enemy_list[# 69, 12] = element.null;
// location
enemy_list[# 69, 13] = "Sakura Steps F3";
// itemDrop
enemy_list[# 69, 14] = drops.mask;
enemy_list[# 69, 15] = drops.oldScroll;
#endregion
// Dawn Mon
#region
// name
enemy_list[# 70, 0] = "Dawn Mon"; 
// level
enemy_list[# 70, 1] = 62;
// Spells
enemy_list[# 70, 2] = [140,151,153,148];
// stats
enemy_list[# 70, 3] = 220; // magic
enemy_list[# 70, 4] = 224; // defense
enemy_list[# 70, 5] = 168; // speed
enemy_list[# 70, 6] = 262; // skill
enemy_list[# 70, 7] = 340; // hp
// sprites
enemy_list[# 70, 8] = spr_pixel_dawnMon;
enemy_list[# 70, 9] = spr_enemy_attack_light;
enemy_list[# 70, 10] = spr_student_heal_light;
// Elements
enemy_list[# 70, 11] = element.light;
enemy_list[# 70, 12] = element.null;
// location
enemy_list[# 70, 13] = "End of the Rainbow F2";
// itemDrop
enemy_list[# 70, 14] = drops.stardust;
enemy_list[# 70, 15] = drops.empty;
#endregion
// Enlightened Mon 
#region
// name
enemy_list[# 71, 0] = "Enlightened Mon"; 
// level
enemy_list[# 71, 1] = 68;
// Spells
enemy_list[# 71, 2] = [142,150,128];
// stats
enemy_list[# 71, 3] = 260; // magic
enemy_list[# 71, 4] = 254; // defense
enemy_list[# 71, 5] = 198; // speed
enemy_list[# 71, 6] = 292; // skill
enemy_list[# 71, 7] = 380; // hp
// sprites
enemy_list[# 71, 8] = spr_pixel_enlightenedMon;
enemy_list[# 71, 9] = spr_enemy_attack_light;
enemy_list[# 71, 10] = spr_student_heal_light;
// Elements
enemy_list[# 71, 11] = element.light;
enemy_list[# 71, 12] = element.null;
// location
enemy_list[# 71, 13] = "End of the Rainbow F4";
// itemDrop
enemy_list[# 71, 14] = drops.cloudSilk;
enemy_list[# 71, 15] = drops.prismaticScale;
#endregion
// Lighthouse Mon
#region
// name
enemy_list[# 72, 0] = "Lighthouse Mon"; 
// level
enemy_list[# 72, 1] = 60;
// Spells
enemy_list[# 72, 2] = [138,150];
// stats
enemy_list[# 72, 3] = 260; // magic
enemy_list[# 72, 4] = 260; // defense
enemy_list[# 72, 5] = 260; // speed
enemy_list[# 72, 6] = 260; // skill
enemy_list[# 72, 7] = 260; // hp
// sprites
enemy_list[# 72, 8] = spr_pixel_lighthouseMon;
enemy_list[# 72, 9] = spr_enemy_attack_light;
enemy_list[# 72, 10] = spr_student_heal_light;
// Elements
enemy_list[# 72, 11] = element.light;
enemy_list[# 72, 12] = element.null;
// location
enemy_list[# 72, 13] = "End of the Rainbow F3";
// itemDrop
enemy_list[# 72, 14] = drops.crystalizedLight;
enemy_list[# 72, 15] = drops.lantern;
#endregion
// Aurora Mon
#region
// name
enemy_list[# 73, 0] = "Aurora Mon"; 
// level
enemy_list[# 73, 1] = 62;
// Spells
enemy_list[# 73, 2] = [19,5,153,84,82,55];
// stats
enemy_list[# 73, 3] = 72; // magic
enemy_list[# 73, 4] = 58; // defense
enemy_list[# 73, 5] = 64; // speed
enemy_list[# 73, 6] = 80; // skill
enemy_list[# 73, 7] = 320; // hp
// sprites
enemy_list[# 73, 8] = spr_pixel_auroraMon;
enemy_list[# 73, 9] = spr_enemy_attack_light;
enemy_list[# 73, 10] = spr_student_heal_light;
// Elements
enemy_list[# 73, 11] = element.light;
enemy_list[# 73, 12] = element.air;
// location
enemy_list[# 73, 13] = "Snowflake Point F4";
// itemDrop
enemy_list[# 73, 14] = drops.auroraCloth;
enemy_list[# 73, 15] = drops.empty;
#endregion
// Moon Mon
#region
// name
enemy_list[# 74, 0] = "Moon Mon"; 
// level
enemy_list[# 74, 1] = 56;
// Spells
enemy_list[# 74, 2] = [156,161,144,21];
// stats
enemy_list[# 74, 3] = 286; // magic
enemy_list[# 74, 4] = 244; // defense
enemy_list[# 74, 5] = 238; // speed
enemy_list[# 74, 6] = 256; // skill
enemy_list[# 74, 7] = 296; // hp
// sprites
enemy_list[# 74, 8] = spr_pixel_moonMon;
enemy_list[# 74, 9] = spr_enemy_attack_light;
enemy_list[# 74, 10] = spr_student_heal_light;
// Elements
enemy_list[# 74, 11] = element.light;
enemy_list[# 74, 12] = element.null;
// location
enemy_list[# 74, 13] = "Ancient Abyss F1";
// itemDrop
enemy_list[# 74, 14] = drops.moonDrop;
enemy_list[# 74, 15] = drops.silverThread;
#endregion
// Sun Mon 
#region
// name
enemy_list[# 75, 0] = "Sun Mon"; 
// level
enemy_list[# 75, 1] = 56;
// Spells
enemy_list[# 75, 2] = [137,140,144,152];
// stats
enemy_list[# 75, 3] = 286; // magic
enemy_list[# 75, 4] = 244; // defense
enemy_list[# 75, 5] = 238; // speed
enemy_list[# 75, 6] = 256; // skill
enemy_list[# 75, 7] = 296; // hp
// sprites
enemy_list[# 75, 8] = spr_pixel_sunMoon;
enemy_list[# 75, 9] = spr_enemy_attack_light;
enemy_list[# 75, 10] = spr_student_heal_light;
// Elements
enemy_list[# 75, 11] = element.light;
enemy_list[# 75, 12] = element.null;
// location
enemy_list[# 75, 13] = "End of the Rainbow F1";
// itemDrop
enemy_list[# 75, 14] = drops.sunDrop;
enemy_list[# 75, 15] = drops.platinumThread;
#endregion
// Angel Mon 
#region
// name
enemy_list[# 76, 0] = "Angel Mon"; 
// level
enemy_list[# 76, 1] = 72;
// Spells
enemy_list[# 76, 2] = [88,85,139,142];
// stats
enemy_list[# 76, 3] = 322; // magic
enemy_list[# 76, 4] = 224; // defense
enemy_list[# 76, 5] = 316; // speed
enemy_list[# 76, 6] = 294; // skill
enemy_list[# 76, 7] = 600; // hp
// sprites
enemy_list[# 76, 8] = spr_pixel_angelMon;
enemy_list[# 76, 9] = spr_enemy_attack_light;
enemy_list[# 76, 10] = spr_student_heal_light;
// Elements
enemy_list[# 76, 11] = element.light;
enemy_list[# 76, 12] = element.null;
// location
enemy_list[# 76, 13] = "End of the Rainbow F4";
// itemDrop
enemy_list[# 76, 14] = drops.halo;
enemy_list[# 76, 15] = drops.empty;
#endregion
// Fallen Angel Mon
#region
// name
enemy_list[# 77, 0] = "Fallen Angel Mon"; 
// level
enemy_list[# 77, 1] = 72;
// Spells
enemy_list[# 77, 2] = [88,168,163];
// stats
enemy_list[# 77, 3] = 322; // magic
enemy_list[# 77, 4] = 224; // defense
enemy_list[# 77, 5] = 316; // speed
enemy_list[# 77, 6] = 294; // skill
enemy_list[# 77, 7] = 600; // hp
// sprites
enemy_list[# 77, 8] = spr_pixel_fallenAngelMon;
enemy_list[# 77, 9] = spr_enemy_attack_dark;
enemy_list[# 77, 10] = spr_student_heal_dark;
// Elements
enemy_list[# 77, 11] = element.dark;
enemy_list[# 77, 12] = element.null;
// location
enemy_list[# 77, 13] = "Ancient Abyss F4";
// itemDrop
enemy_list[# 77, 14] = drops.demonWing;
enemy_list[# 77, 15] = drops.empty;
#endregion
// Death Mon
#region
// name
enemy_list[# 78, 0] = "Death Mon"; 
// level
enemy_list[# 78, 1] = 56;
// Spells
enemy_list[# 78, 2] = [159,171,135];
// stats
enemy_list[# 78, 3] = 228; // magic
enemy_list[# 78, 4] = 160; // defense
enemy_list[# 78, 5] = 204; // speed
enemy_list[# 78, 6] = 200; // skill
enemy_list[# 78, 7] = 210; // hp
// sprites
enemy_list[# 78, 8] = spr_pixel_deathMon;
enemy_list[# 78, 9] = spr_enemy_attack_dark;
enemy_list[# 78, 10] = spr_student_heal_dark;
// Elements
enemy_list[# 78, 11] = element.dark;
enemy_list[# 78, 12] = element.null;
// location
enemy_list[# 78, 13] = "Ancient Abyss F1";
// itemDrop
enemy_list[# 78, 14] = drops.skull;
enemy_list[# 78, 15] = drops.empty;
#endregion
// Blood Mon
#region
// name
enemy_list[# 79, 0] = "Blood Mon"; 
// level
enemy_list[# 79, 1] = 60;
// Spells
enemy_list[# 79, 2] = [160,172,63,135];
// stats
enemy_list[# 79, 3] = 268; // magic
enemy_list[# 79, 4] = 176; // defense
enemy_list[# 79, 5] = 214; // speed
enemy_list[# 79, 6] = 210; // skill
enemy_list[# 79, 7] = 248; // hp
// sprites
enemy_list[# 79, 8] = spr_pixel_bloodMon;
enemy_list[# 79, 9] = spr_enemy_attack_dark;
enemy_list[# 79, 10] = spr_student_heal_dark;
// Elements
enemy_list[# 79, 11] = element.dark;
enemy_list[# 79, 12] = element.null;
// location
enemy_list[# 79, 13] = "Ancient Abyss F3";
// itemDrop
enemy_list[# 79, 14] = drops.skull;
enemy_list[# 79, 15] = drops.scarletVial;
#endregion
// Knight Mon
#region
// name
enemy_list[# 80, 0] = "Knight Mon"; 
// level
enemy_list[# 80, 1] = 68;
// Spells
enemy_list[# 80, 2] = [27,138,49];
// stats
enemy_list[# 80, 3] = 248; // magic
enemy_list[# 80, 4] = 290; // defense
enemy_list[# 80, 5] = 210; // speed
enemy_list[# 80, 6] = 280; // skill
enemy_list[# 80, 7] = 420; // hp
// sprites
enemy_list[# 80, 8] = spr_pixel_knightMon;
enemy_list[# 80, 9] = spr_enemy_attack_light;
enemy_list[# 80, 10] = spr_student_heal_light;
// Elements
enemy_list[# 80, 11] = element.dark;
enemy_list[# 80, 12] = element.light;
// location
enemy_list[# 80, 13] = "End of the Rainbow F1";
// itemDrop
enemy_list[# 80, 14] = drops.angelFeather;
enemy_list[# 80, 15] = drops.celesticMetal;
#endregion
// Spider Mon
#region
// name
enemy_list[# 81, 0] = "Spider Mon"; 
// level
enemy_list[# 81, 1] = 21;
// Spells
enemy_list[# 81, 2] = [165,170,155];
// stats
enemy_list[# 81, 3] = 30; // magic
enemy_list[# 81, 4] = 32; // defense
enemy_list[# 81, 5] = 44; // speed
enemy_list[# 81, 6] = 50; // skill
enemy_list[# 81, 7] = 68; // hp
// sprites
enemy_list[# 81, 8] = spr_pixel_spiderMon;
enemy_list[# 81, 9] = spr_enemy_attack_dark;
enemy_list[# 81, 10] = spr_student_heal_dark;
// Elements
enemy_list[# 81, 11] = element.dark;
enemy_list[# 81, 12] = element.nature;
// location
enemy_list[# 81, 13] = "Autumn Falls F1";
// itemDrop
enemy_list[# 81, 14] = drops.spiderSilk;
enemy_list[# 81, 15] = drops.insectLeg;
#endregion
// Tarantula Mon
#region
// name
enemy_list[# 82, 0] = "Tarantula Mon"; 
// level
enemy_list[# 82, 1] = 26;
// Spells
enemy_list[# 82, 2] = [165,170,26,159];
// stats
enemy_list[# 82, 3] = 42; // magic
enemy_list[# 82, 4] = 46; // defense
enemy_list[# 82, 5] = 58; // speed
enemy_list[# 82, 6] = 50; // skill
enemy_list[# 82, 7] = 92; // hp
// sprites
enemy_list[# 82, 8] = spr_pixel_tarantulaMon;
enemy_list[# 82, 9] = spr_enemy_attack_dark;
enemy_list[# 82, 10] = spr_student_heal_dark;
// Elements
enemy_list[# 82, 11] = element.dark;
enemy_list[# 82, 12] = element.nature;
// location
enemy_list[# 82, 13] = "Autumn Falls F3";
// itemDrop
enemy_list[# 82, 14] = drops.spiderSilk;
enemy_list[# 82, 15] = drops.bloodGem;
#endregion
// Witch Mon 
#region
// name
enemy_list[# 83, 0] = "Witch Mon"; 
// level
enemy_list[# 83, 1] = 44;
// Spells
enemy_list[# 83, 2] = [118,134,157,106,129];
// stats
enemy_list[# 83, 3] = 78; // magic
enemy_list[# 83, 4] = 56; // defense
enemy_list[# 83, 5] = 20; // speed
enemy_list[# 83, 6] = 88; // skill
enemy_list[# 83, 7] = 240; // hp
// sprites
enemy_list[# 83, 8] = spr_pixel_witchMon;
enemy_list[# 83, 9] = spr_enemy_attack_dark;
enemy_list[# 83, 10] = spr_student_heal_dark;
// Elements
enemy_list[# 83, 11] = element.dark;
enemy_list[# 83, 12] = element.magic;
// location
enemy_list[# 83, 13] = "Autumn Falls F4";
// itemDrop
enemy_list[# 83, 14] = drops.bewitchedButton;
enemy_list[# 83, 15] = drops.empty;
#endregion
// Demon Mon 
#region
// name
enemy_list[# 84, 0] = "Demon Mon"; 
// level
enemy_list[# 84, 1] = 68;
// Spells
enemy_list[# 84, 2] = [159,52,67,68];
// stats
enemy_list[# 84, 3] = 248; // magic
enemy_list[# 84, 4] = 290; // defense
enemy_list[# 84, 5] = 210; // speed
enemy_list[# 84, 6] = 280; // skill
enemy_list[# 84, 7] = 420; // hp
// sprites
enemy_list[# 84, 8] = spr_pixel_demonMon;
enemy_list[# 84, 9] = spr_enemy_attack_dark;
enemy_list[# 84, 10] = spr_student_heal_dark;
// Elements
enemy_list[# 84, 11] = element.dark;
enemy_list[# 84, 12] = element.fire;
// location
enemy_list[# 84, 13] = "Ancient Abyss F1";
// itemDrop
enemy_list[# 84, 14] = drops.demonHorn;
enemy_list[# 84, 15] = drops.hellFire;
#endregion
// Toxic Mon
#region
// name
enemy_list[# 85, 0] = "Toxic Mon"; 
// level
enemy_list[# 85, 1] = 120;
// Spells
enemy_list[# 85, 2] = [118,72,135,98,110,113];
// stats
enemy_list[# 85, 3] = 360; // magic
enemy_list[# 85, 4] = 320; // defense
enemy_list[# 85, 5] = 350; // speed
enemy_list[# 85, 6] = 420; // skill
enemy_list[# 85, 7] = 520; // hp
// sprites
enemy_list[# 85, 8] = spr_pixel_toxicMon;
enemy_list[# 85, 9] = spr_enemy_attack_nature;
enemy_list[# 85, 10] = spr_student_heal_nature;
// Elements
enemy_list[# 85, 11] = element.dark;
enemy_list[# 85, 12] = element.null;
// location
enemy_list[# 85, 13] = "Anicent Abyss F4";
// itemDrop
enemy_list[# 85, 14] = drops.neonFlower;
enemy_list[# 85, 15] = drops.butterflixCore;
#endregion
// Vent Mon
#region
// name
enemy_list[# 86, 0] = "Vent Mon"; 
// level
enemy_list[# 86, 1] = 120;
// Spells
enemy_list[# 86, 2] = [92,13,7,12,36,68,67];
// stats
enemy_list[# 86, 3] = 420; // magic
enemy_list[# 86, 4] = 350; // defense
enemy_list[# 86, 5] = 360; // speed
enemy_list[# 86, 6] = 320; // skill
enemy_list[# 86, 7] = 800; // hp
// sprites
enemy_list[# 86, 8] = spr_pixel_ventMon;
enemy_list[# 86, 9] = spr_enemy_attack_nature;
enemy_list[# 86, 10] = spr_student_heal_nature;
// Elements
enemy_list[# 86, 11] = element.dark;
enemy_list[# 86, 12] = element.null;
// location
enemy_list[# 86, 13] = "Ancient Abyss F4";
// itemDrop
enemy_list[# 86, 14] = drops.monsterTooth;
enemy_list[# 86, 15] = drops.sirenixCore;
#endregion
// Bone Mon
#region
// name
enemy_list[# 87, 0] = "Bone Mon"; 
// level
enemy_list[# 87, 1] = 120;
// Spells
enemy_list[# 87, 2] = [169,165,30,46,49];
// stats
enemy_list[# 87, 3] = 320; // magic
enemy_list[# 87, 4] = 420; // defense
enemy_list[# 87, 5] = 320; // speed
enemy_list[# 87, 6] = 360; // skill
enemy_list[# 87, 7] = 800; // hp
// sprites
enemy_list[# 87, 8] = spr_pixel_boneMon;
enemy_list[# 87, 9] = spr_enemy_attack_nature;
enemy_list[# 87, 10] = spr_student_heal_nature;
// Elements
enemy_list[# 87, 11] = element.dark;
enemy_list[# 87, 12] = element.null;
// location
enemy_list[# 87, 13] = "Ancient Abyss F4";
// itemDrop
enemy_list[# 87, 14] = drops.skeletalBone;
enemy_list[# 87, 15] = drops.tynixCore;
#endregion
// Midnight Mon
#region
// name
enemy_list[# 88, 0] = "Midnight Mon"; 
// level
enemy_list[# 88, 1] = 120;
// Spells
enemy_list[# 88, 2] = [71,129,130,149,167,151,88];
// stats
enemy_list[# 88, 3] = 350; // magic
enemy_list[# 88, 4] = 360; // defense
enemy_list[# 88, 5] = 420; // speed
enemy_list[# 88, 6] = 320; // skill
enemy_list[# 88, 7] = 800; // hp
// sprites
enemy_list[# 88, 8] = spr_pixel_midnightMon;
enemy_list[# 88, 9] = spr_enemy_attack_nature;
enemy_list[# 88, 10] = spr_student_heal_nature;
// Elements
enemy_list[# 88, 11] = element.dark;
enemy_list[# 88, 12] = element.null;
// location
enemy_list[# 88, 13] = "Ancient Abyss F4";
// itemDrop
enemy_list[# 88, 14] = drops.bottledBlackHole;
enemy_list[# 88, 15] = drops.onyrixCore;
#endregion
// Hydra Mon
#region
// name
enemy_list[# 89, 0] = "Hydra Mon"; 
// level
enemy_list[# 89, 1] = 160;
// Spells
enemy_list[# 89, 2] = [163,168,160,66,65,60,132,21];
// stats
enemy_list[# 89, 3] = 520; // magic
enemy_list[# 89, 4] = 480; // defense
enemy_list[# 89, 5] = 460; // speed
enemy_list[# 89, 6] = 460; // skill
enemy_list[# 89, 7] = 1200; // hp
// sprites
enemy_list[# 89, 8] = spr_pixel_hydraMon;
enemy_list[# 89, 9] = spr_enemy_attack_nature;
enemy_list[# 89, 10] = spr_student_heal_nature;
// Elements
enemy_list[# 89, 11] = element.dark;
enemy_list[# 89, 12] = element.null;
// location
enemy_list[# 89, 13] = "Ancient Abyss F4";
// itemDrop
enemy_list[# 89, 14] = drops.dragonSkull;
enemy_list[# 89, 15] = drops.empty;
#endregion
// Hydraula
#region
// name
enemy_list[# 90, 0] = "Hydraula"; 
// level
enemy_list[# 90, 1] = 120;
// Spells
enemy_list[# 90, 2] = [14,85,142,128,13];
// stats
enemy_list[# 90, 3] = 420; // magic
enemy_list[# 90, 4] = 340; // defense
enemy_list[# 90, 5] = 340; // speed
enemy_list[# 90, 6] = 340; // skill
enemy_list[# 90, 7] = 800; // hp
// sprites
enemy_list[# 90, 8] = spr_pixel_angelWaterMon;
enemy_list[# 90, 9] = spr_enemy_attack_nature;
enemy_list[# 90, 10] = spr_student_heal_nature;
// Elements
enemy_list[# 90, 11] = element.light;
enemy_list[# 90, 12] = element.water;
// location
enemy_list[# 90, 13] = "End of the Rainbow F4";
// itemDrop
enemy_list[# 90, 14] = drops.lazuli;
enemy_list[# 90, 15] = drops.cSirenixCore;
#endregion
// Terraunda 
#region
// name
enemy_list[# 91, 0] = "Terraunda"; 
// level
enemy_list[# 91, 1] = 120;
// Spells
enemy_list[# 91, 2] = [101,85,142,128,35];
// stats
enemy_list[# 91, 3] = 340; // magic
enemy_list[# 91, 4] = 420; // defense
enemy_list[# 91, 5] = 340; // speed
enemy_list[# 91, 6] = 340; // skill
enemy_list[# 91, 7] = 800; // hp
// sprites
enemy_list[# 91, 8] = spr_pixel_angelEarthMon;
enemy_list[# 91, 9] = spr_enemy_attack_nature;
enemy_list[# 91, 10] = spr_student_heal_nature;
// Elements
enemy_list[# 91, 11] = element.light;
enemy_list[# 91, 12] = element.earth;
// location
enemy_list[# 91, 13] = "End of the Rainbow F4";
// itemDrop
enemy_list[# 91, 14] = drops.prehistoricStone;
enemy_list[# 91, 15] = drops.believixCore;
#endregion
// Pyra 
#region
// name
enemy_list[# 92, 0] = "Pyra"; 
// level
enemy_list[# 92, 1] = 120;
// Spells
enemy_list[# 92, 2] = [63,85,142,128,59];
// stats
enemy_list[# 92, 3] = 420; // magic
enemy_list[# 92, 4] = 340; // defense
enemy_list[# 92, 5] = 340; // speed
enemy_list[# 92, 6] = 340; // skill
enemy_list[# 92, 7] = 800; // hp
// sprites
enemy_list[# 92, 8] = spr_pixel_angelFlameMon;
enemy_list[# 92, 9] = spr_enemy_attack_nature;
enemy_list[# 92, 10] = spr_student_heal_nature;
// Elements
enemy_list[# 92, 11] = element.light;
enemy_list[# 92, 12] = element.fire;
// location
enemy_list[# 92, 13] = "End of the Rainbow F4";
// itemDrop
enemy_list[# 92, 14] = drops.amberFlame;
enemy_list[# 92, 15] = drops.bloomixCore;
#endregion
// Areola 
#region
// name
enemy_list[# 93, 0] = "Areola"; 
// level
enemy_list[# 93, 1] = 120;
// Spells
enemy_list[# 93, 2] = [83,85,142,128,75];
// stats
enemy_list[# 93, 3] = 340; // magic
enemy_list[# 93, 4] = 340; // defense
enemy_list[# 93, 5] = 420; // speed
enemy_list[# 93, 6] = 340; // skill
enemy_list[# 93, 7] = 800; // hp
// sprites
enemy_list[# 93, 8] = spr_pixel_angelAirMon;
enemy_list[# 93, 9] = spr_enemy_attack_nature;
enemy_list[# 93, 10] = spr_student_heal_nature;
// Elements
enemy_list[# 93, 11] = element.light;
enemy_list[# 93, 12] = element.air;
// location
enemy_list[# 93, 13] = "End of the Rainbow F4";
// itemDrop
enemy_list[# 93, 14] = drops.bottledHurricane;
enemy_list[# 93, 15] = drops.enchantixCore;
#endregion
// the Fey Queen 
#region
// name
enemy_list[# 94, 0] = "the Fey Queen"; 
// level
enemy_list[# 94, 1] = 160;
// Spells
enemy_list[# 94, 2] = [142,89,140,28,148,46,47,177];
// stats
enemy_list[# 94, 3] = 480; // magic
enemy_list[# 94, 4] = 520; // defense
enemy_list[# 94, 5] = 460; // speed
enemy_list[# 94, 6] = 460; // skill
enemy_list[# 94, 7] = 1200; // hp
// sprites
enemy_list[# 94, 8] = spr_pixel_feyMon;
enemy_list[# 94, 9] = spr_enemy_attack_nature;
enemy_list[# 94, 10] = spr_student_heal_nature;
// Elements
enemy_list[# 94, 11] = element.light;
enemy_list[# 94, 12] = element.null;
// location
enemy_list[# 94, 13] = "End of the Rainbow F1";
// itemDrop
enemy_list[# 94, 14] = drops.feyArtifact;
enemy_list[# 94, 15] = drops.empty;
#endregion

// Cactus Mon 
#region
// name
enemy_list[# 95, 0] = "Cactus Mon"; 
// level
enemy_list[# 95, 1] = 140;
// Spells
enemy_list[# 95, 2] = [117, 93, 29, 164, 159];
// stats
enemy_list[# 95, 3] = 400; // magic
enemy_list[# 95, 4] = 280; // defense
enemy_list[# 95, 5] = 400; // speed
enemy_list[# 95, 6] = 420; // skill
enemy_list[# 95, 7] = 1000; // hp
// sprites
enemy_list[# 95, 8] = spr_pixel_cactusMon;
enemy_list[# 95, 9] = spr_enemy_attack_nature;
enemy_list[# 95, 10] = spr_student_heal_nature;
// Elements
enemy_list[# 95, 11] = element.nature;
enemy_list[# 95, 12] = element.earth;
// location
enemy_list[# 95, 13] = "Flower Fields F3";
// itemDrop
enemy_list[# 95, 14] = drops.desertFlower;
enemy_list[# 95, 15] = drops.empty;
#endregion

// Dream Mon 
#region
// name
enemy_list[# 96, 0] = "Dream Mon"; 
// level
enemy_list[# 96, 1] = 140;
// Spells
enemy_list[# 96, 2] = [187, 210, 226, 160];
// stats
enemy_list[# 96, 3] = 300; // magic
enemy_list[# 96, 4] = 400; // defense
enemy_list[# 96, 5] = 500; // speed
enemy_list[# 96, 6] = 300; // skill
enemy_list[# 96, 7] = 1000; // hp
// sprites
enemy_list[# 96, 8] = spr_pixel_dreamMon;
enemy_list[# 96, 9] = spr_enemy_attack_magic;
enemy_list[# 96, 10] = spr_student_heal_magic;
// Elements
enemy_list[# 96, 11] = element.magic;
enemy_list[# 96, 12] = element.null;
// location
enemy_list[# 96, 13] = "Willow Woods F4";
// itemDrop
enemy_list[# 96, 14] = drops.dreamCloud;
enemy_list[# 96, 15] = drops.empty;
#endregion

// Star Mon 
#region
// name
enemy_list[# 97, 0] = "Star Mon"; 
// level
enemy_list[# 97, 1] = 140;
// Spells
enemy_list[# 97, 2] = [214, 120, 221, 68, 144];
// stats
enemy_list[# 97, 3] = 300; // magic
enemy_list[# 97, 4] = 600; // defense
enemy_list[# 97, 5] = 400; // speed
enemy_list[# 97, 6] = 200; // skill
enemy_list[# 97, 7] = 1000; // hp
// sprites
enemy_list[# 97, 8] = spr_pixel_starMon;
enemy_list[# 97, 9] = spr_enemy_attack_magic;
enemy_list[# 97, 10] = spr_student_heal_magic;
// Elements
enemy_list[# 97, 11] = element.magic;
enemy_list[# 97, 12] = element.earth;
// location
enemy_list[# 97, 13] = "Autumn Falls F3";
// itemDrop
enemy_list[# 97, 14] = drops.spaceDust;
enemy_list[# 97, 15] = drops.empty;
#endregion

// Trench Mon 
#region
// name
enemy_list[# 98, 0] = "Trench Mon"; 
// level
enemy_list[# 98, 1] = 140;
// Spells
enemy_list[# 98, 2] = [180, 169, 160, 12, 23];
// stats
enemy_list[# 98, 3] = 400; // magic
enemy_list[# 98, 4] = 200; // defense
enemy_list[# 98, 5] = 600; // speed
enemy_list[# 98, 6] = 300; // skill
enemy_list[# 98, 7] = 1000; // hp
// sprites
enemy_list[# 98, 8] = spr_pixel_trenchMon;
enemy_list[# 98, 9] = spr_enemy_attack_water;
enemy_list[# 98, 10] = spr_student_heal_water;
// Elements
enemy_list[# 98, 11] = element.water;
enemy_list[# 98, 12] = element.dark;
// location
enemy_list[# 98, 13] = "Snowflake Point F3";
// itemDrop
enemy_list[# 98, 14] = drops.abyssalWater;
enemy_list[# 98, 15] = drops.empty;
#endregion

// Thorn Mon 
#region
// name
enemy_list[# 99, 0] = "Thorn Mon"; 
// level
enemy_list[# 99, 1] = 140;
// Spells
enemy_list[# 99, 2] = [101, 224, 225, 117, 98];
// stats
enemy_list[# 99, 3] = 400; // magic
enemy_list[# 99, 4] = 300; // defense
enemy_list[# 99, 5] = 380; // speed
enemy_list[# 99, 6] = 420; // skill
enemy_list[# 99, 7] = 1000; // hp
// sprites
enemy_list[# 99, 8] = spr_pixel_thornMon;
enemy_list[# 99, 9] = spr_enemy_attack_nature;
enemy_list[# 99, 10] = spr_student_heal_nature;
// Elements
enemy_list[# 99, 11] = element.nature;
enemy_list[# 99, 12] = element.null;
// location
enemy_list[# 99, 13] = "Sakura Steps F1";
// itemDrop
enemy_list[# 99, 14] = drops.lethalVial;
enemy_list[# 99, 15] = drops.empty;
#endregion

// Ruins Mon 
#region
// name
enemy_list[# 100, 0] = "Ruins Mon"; 
// level
enemy_list[# 100, 1] = 140;
// Spells
enemy_list[# 100, 2] = [176, 150, 45, 35, 203];
// stats
enemy_list[# 100, 3] = 400; // magic
enemy_list[# 100, 4] = 800; // defense
enemy_list[# 100, 5] = 200; // speed
enemy_list[# 100, 6] = 100; // skill
enemy_list[# 100, 7] = 1000; // hp
// sprites
enemy_list[# 100, 8] = spr_pixel_runisMon;
enemy_list[# 100, 9] = spr_enemy_attack_earth;
enemy_list[# 100, 10] = spr_student_heal_earth;
// Elements
enemy_list[# 100, 11] = element.earth;
enemy_list[# 100, 12] = element.null;
// location
enemy_list[# 100, 13] = "Fey Temple F2";
// itemDrop
enemy_list[# 100, 14] = drops.ancientEye;
enemy_list[# 100, 15] = drops.empty;
#endregion

// Prism Mon 
#region
// name
enemy_list[# 101, 0] = "Prism Mon"; 
// level
enemy_list[# 101, 1] = 140;
// Spells
enemy_list[# 101, 2] = [212, 49, 17, 141, 121];
// stats
enemy_list[# 101, 3] = 400; // magic
enemy_list[# 101, 4] = 400; // defense
enemy_list[# 101, 5] = 400; // speed
enemy_list[# 101, 6] = 300; // skill
enemy_list[# 101, 7] = 1000; // hp
// sprites
enemy_list[# 101, 8] = spr_pixel_prismMon;
enemy_list[# 101, 9] = spr_enemy_attack_light;
enemy_list[# 101, 10] = spr_student_heal_light;
// Elements
enemy_list[# 101, 11] = element.light;
enemy_list[# 101, 12] = element.earth;
// location
enemy_list[# 101, 13] = "End of the Rainbow F2";
// itemDrop
enemy_list[# 101, 14] = drops.prismOrb;
enemy_list[# 101, 15] = drops.empty;
#endregion

// Codename 
#region
// name
enemy_list[# 102, 0] = "codename: 008"; 
// level
enemy_list[# 102, 1] = 200;
// Spells
//enemy_list[# 102, 2] = [288, 289, 290, 291, 292
enemy_list[# 102, 2] = [288, 292];
// stats
enemy_list[# 102, 3] = 600; // magic
enemy_list[# 102, 4] = 600; // defense
enemy_list[# 102, 5] = 600; // speed
enemy_list[# 102, 6] = 600; // skill
enemy_list[# 102, 7] = 4000; // hp
// sprites
enemy_list[# 102, 8] = spr_pixel_codeName;
enemy_list[# 102, 9] = spr_attack_codename;
enemy_list[# 102, 10] = spr_attack_codename;
// Elements
enemy_list[# 102, 11] = element.dark;
enemy_list[# 102, 12] = element.null;
// location
enemy_list[# 102, 13] = "Reflection Rift";
// itemDrop
enemy_list[# 102, 14] = drops.arcaneShard;
enemy_list[# 102, 15] = drops.empty;
#endregion