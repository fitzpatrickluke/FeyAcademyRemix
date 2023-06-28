enum battle_phase
{
	chooseP1,
	chooseP2,
	chooseP3,
	setE,
	setTurn,
	setAtk,
	display1,
	display2,
	display3,
	display4,
	endTurn,
	flee,
	lose,
	win,
	levelUp,
	startBattle
}

curr_battle_phase = battle_phase.chooseP1;

/*

1 -- Player 1
2 -- Player 2
3 -- Player 3
4 -- Enemy

*/

boolStatus = [false,false,false,false];
boolPetrify = [false,false,false,false];
boolPetrifyOn = [false, false, false, false];
boolCurse = [false,false,false,false];
boolCurseMult = [1, 1, 1, 1];
boolBlind = [false,false,false,false];
boolBlindOn = [false,false,false,false];
boolDeaf = [false,false,false,false];
boolDeafOn = [false,false,false,false];

boolAttack = [false,false,false];
boolDefend = [false,false,false];
boolFlee = [false,false,false];
boolSpecial = [false,false,false];
boolStrike = [false,false,false];
boolItem = [false,false,false];
boolItemUse = [-1,-1,-1];
boolItemBag = [-1,-1,-1];

boolSpecialTimer = [0,0,0];

boolInstaDeath = [false,false,false,false];

boolDead = [false,false,false];
boolShield = [false,false,false,false];
boolReflect = [false,false,false,false];
shieldStat = [0,0,0,0];
reflectStat = [0,0,0,0];


statMagUp = [0,0,0,0];
statDefUp = [0,0,0,0];
statSpdUp = [0,0,0,0];
statSklUp = [0,0,0,0];

statMagDown = [0,0,0,0];
statDefDown = [0,0,0,0];
statSpdDown = [0,0,0,0];
statSklDown = [0,0,0,0];

menuMain = true;
menuSpells = false;

battleSpells = [0,0,0,0];
battleOrder = [1,0,2,3];
battleDamage = [0,0,0,0];

//randomize();
//enemy_num = irandom(94)
enemy_num = manager_students.battle_enemy_num;


unitMag[0] = manager_students.master_student_1.stat_magic;
unitMag[1] = manager_students.master_student_2.stat_magic;
unitMag[2] = manager_students.master_student_3.stat_magic;
unitMag[3] = manager_enemy.enemy_list[# enemy_num, 3];


unitDef[0] = manager_students.master_student_1.stat_defense;
unitDef[1] = manager_students.master_student_2.stat_defense;
unitDef[2] = manager_students.master_student_3.stat_defense;
unitDef[3] = manager_enemy.enemy_list[# enemy_num, 4];

unitSpd[0] = manager_students.master_student_1.stat_speed;
unitSpd[1] = manager_students.master_student_2.stat_speed;
unitSpd[2] = manager_students.master_student_3.stat_speed;
unitSpd[3] = manager_enemy.enemy_list[# enemy_num, 5];

unitSkl[0] = manager_students.master_student_1.stat_skill;
unitSkl[1] = manager_students.master_student_2.stat_skill;
unitSkl[2] = manager_students.master_student_3.stat_skill;
unitSkl[3] = manager_enemy.enemy_list[# enemy_num, 6];



unitHp[0] = manager_students.master_student_1.stat_hp;
unitHp[1] = manager_students.master_student_2.stat_hp;
unitHp[2] = manager_students.master_student_3.stat_hp;
unitHp[3] = manager_enemy.enemy_list[# enemy_num, 7];

unitHp_curr[0] = manager_students.master_student_1.stat_hp_curr;
unitHp_curr[1] = manager_students.master_student_2.stat_hp_curr;
unitHp_curr[2] = manager_students.master_student_3.stat_hp_curr;
unitHp_curr[3] = unitHp[3];

unitMp[0] = manager_students.master_student_1.stat_mp;
unitMp[1] = manager_students.master_student_2.stat_mp;
unitMp[2] = manager_students.master_student_3.stat_mp;

unitMp_curr[0] =  manager_students.master_student_1.stat_mp_curr;
unitMp_curr[1] =  manager_students.master_student_2.stat_mp_curr;
unitMp_curr[2] =  manager_students.master_student_3.stat_mp_curr;

unitLevel[0] = manager_students.master_student_1.level;
unitLevel[1] = manager_students.master_student_2.level;
unitLevel[2] = manager_students.master_student_3.level;
unitLevel[3] = manager_enemy.enemy_list[# enemy_num, 1];

unitWings[0] = manager_students.student_1_wings;
unitWings[1] = manager_students.student_2_wings;
unitWings[2] = manager_students.student_3_wings;

unitType1[0] = manager_students.master_student_1.student_element;
unitType1[1] = manager_students.master_student_2.student_element;
unitType1[2] = manager_students.master_student_3.student_element;
unitType1[3] = manager_enemy.enemy_list[# enemy_num, 11];

unitType2[0] = element.null;
unitType2[1] = element.null;
unitType2[2] = element.null;
unitType2[3] = manager_enemy.enemy_list[# enemy_num, 12];

attack_strong = [false,false,false,false];
attack_weak = [false,false,false,false];

curr_unit_item_num = -1;
curr_unit_set_item = false;
curr_unit_set_spell = false;
reset_item_num = -1;

unitEquip = 
[manager_students.student_1_equip_1,
manager_students.student_2_equip_1,
manager_students.student_3_equip_1,
manager_students.student_1_equip_2,
manager_students.student_2_equip_2,
manager_students.student_3_equip_2];
unit_equip_aug = 3;

if(manager_items.equip_list[# unitEquip[0], 1] == equip.special_sklToMag 
|| manager_items.equip_list[# unitEquip[3], 1] == equip.special_sklToMag)
	unitMag[0] = unitSkl[0];
if(manager_items.equip_list[# unitEquip[1], 1] == equip.special_sklToMag 
|| manager_items.equip_list[# unitEquip[4], 1] == equip.special_sklToMag)
	unitMag[1] = unitSkl[1];
if(manager_items.equip_list[# unitEquip[2], 1] == equip.special_sklToMag 
|| manager_items.equip_list[# unitEquip[5], 1] == equip.special_sklToMag)
	unitMag[2] = unitSkl[2];
	
if(manager_items.equip_list[# unitEquip[0], 1] == equip.ultimate_sklToMag 
|| manager_items.equip_list[# unitEquip[3], 1] == equip.ultimate_sklToMag)
	unitMag[0] = unitSkl[0];
if(manager_items.equip_list[# unitEquip[1], 1] == equip.ultimate_sklToMag 
|| manager_items.equip_list[# unitEquip[4], 1] == equip.ultimate_sklToMag)
	unitMag[1] = unitSkl[1];
if(manager_items.equip_list[# unitEquip[2], 1] == equip.ultimate_sklToMag 
|| manager_items.equip_list[# unitEquip[5], 1] == equip.ultimate_sklToMag)
	unitMag[2] = unitSkl[2];
	
if(manager_items.equip_list[# unitEquip[0], 1] == equip.ultimate_fey 
|| manager_items.equip_list[# unitEquip[3], 1] == equip.ultimate_fey)
	unitType2[0] = element.light;
if(manager_items.equip_list[# unitEquip[1], 1] == equip.ultimate_fey 
|| manager_items.equip_list[# unitEquip[4], 1] == equip.ultimate_fey)
	unitType2[1] = element.light;
if(manager_items.equip_list[# unitEquip[2], 1] == equip.ultimate_fey 
|| manager_items.equip_list[# unitEquip[5], 1] == equip.ultimate_fey)
	unitType2[2] = element.light;
	
if(manager_items.equip_list[# unitEquip[0], 1] == equip.ultimate_dragon 
|| manager_items.equip_list[# unitEquip[3], 1] == equip.ultimate_dragon)
	unitType2[0] = element.dark;
if(manager_items.equip_list[# unitEquip[1], 1] == equip.ultimate_dragon 
|| manager_items.equip_list[# unitEquip[4], 1] == equip.ultimate_dragon)
	unitType2[1] = element.dark;
if(manager_items.equip_list[# unitEquip[2], 1] == equip.ultimate_dragon 
|| manager_items.equip_list[# unitEquip[5], 1] == equip.ultimate_dragon)
	unitType2[2] = element.dark;
	
boolHealEndTurn = [false, false, false];

if(manager_items.equip_list[# unitEquip[0], 1] == equip.special_heal 
|| manager_items.equip_list[# unitEquip[3], 1] == equip.special_heal)
	boolHealEndTurn[0] = true;
if(manager_items.equip_list[# unitEquip[1], 1] == equip.special_heal 
|| manager_items.equip_list[# unitEquip[4], 1] == equip.special_heal)
	boolHealEndTurn[1] = true;
if(manager_items.equip_list[# unitEquip[2], 1] == equip.special_heal 
|| manager_items.equip_list[# unitEquip[5], 1] == equip.special_heal)
	boolHealEndTurn[2] = true;

boolHealEndTurnAmount = [round(unitHp[0]*0.1), round(unitHp[1]*0.1), round(unitHp[2]*0.1)];
if(manager_items.equip_list[# unitEquip[0], 2] == 2 
|| manager_items.equip_list[# unitEquip[3], 2] == 2)
	boolHealEndTurnAmount[0] = round(unitHp[0]*0.2);
if(manager_items.equip_list[# unitEquip[1], 2] == 2 
|| manager_items.equip_list[# unitEquip[4], 2] == 2)
	boolHealEndTurnAmount[1] = round(unitHp[0]*0.2);
if(manager_items.equip_list[# unitEquip[2], 2] == 2 
|| manager_items.equip_list[# unitEquip[5], 2] == 2)
	boolHealEndTurnAmount[2] = round(unitHp[0]*0.2);
	

/*
student_1_equip_1 = manager_students.student_1_equip_1;
student_1_equip_2 = manager_students.student_2_equip_1;
student_2_equip_1 = manager_students.student_3_equip_1;
student_2_equip_2 = manager_students.student_1_equip_2;
student_3_equip_1 = manager_students.student_2_equip_2;
student_3_equip_2 = manager_students.student_3_equip_2;
*/

unitTarget = [0,0,0,0];

// used for loops
enemyChooseSpellCheck = 0;




