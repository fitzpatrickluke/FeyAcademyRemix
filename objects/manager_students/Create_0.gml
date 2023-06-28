
if(file_exists("feyAcademy_master_save_2.ini"))
file_delete("feyAcademy_master_save_2.ini");
if(file_exists("feyAcademy_master_save.ini"))
file_delete("feyAcademy_master_save.ini");


master_scale = 4;

mon_on = true;

new_game_plus = false;

master_student_1 = student_hana;
master_student_2 = student_bridgit;
master_student_3 = student_chris;

spr_body_num = 0;
spr_hair_num = 0;
spr_bang_num = 0;
spr_hair_col_num = 6;
spr_eye_num = 0;
spr_top_num = 0;
spr_top_col_num = 0;
spr_bot_num = 0;
spr_bot_col_num = 0;
spr_shoe_num = 0;
spr_shoe_col_num = 0;
spr_acc_num = 0;
spr_acc_col_num = 0;

player_element = element.air;

// 0 = female
// 1 = male
player_gender = [0,0,0];

player_custom = [0,0,0];

player_weapon = [2,1,0];

enum classes
{
	none = 0,
	spells = 1,
	herbology = 2,
	astrology = 3,
	mythology = 4,
	elementology = 5
}

// 0 - spells		
// 1 - botony		
// 2 - mythology	
// 3 - astrology	
// 4 - elementology	

class_points_1 = [100,100,100,100,100];
class_points_2 = [0,0,0,0,0];
class_points_3 = [0,0,0,0,0];

enum wings
{
	magix = 0,
	charmix = 1,
	mythix = 2,
	lovix = 3,
	dreamix = 4,
	harmonix = 5,
	sophix = 6,
	cosmix = 7,
	onyrix = 8,
	bloomix = 9,
	sirenix = 10,
	crystalSirenix = 11,
	enchantix = 12,
	butterflix = 13,
	tynix = 14,
	believix = 15
}

student_1_wings = wings.believix;
student_2_wings = wings.tynix;
student_3_wings = wings.lovix;

stratum_curr = 1;

explore_start_x = 640/4;
explore_start_y = 640/4;

prev_room_adv = adventure_flowerFieldsf1;

explore_enmy_count = 1;

bosses = [false,false,false,false,false,false,false,false,false,false,false];
boss_battle = false;
boss_num = 0;

// phases
enum phase
{
	phase_start = 0,
	phase_ff = 1,
	phase_ww = 2,
	phase_af = 3,
	phase_sp = 4,
	phase_ss = 5,
	phase_ft = 6,
	phase_aa = 7,
	phase_aa2 = 8,
	phase_er = 9,
	phase_er2 = 10,
	phase_end = 11
}

curr_phase = phase.phase_start;
final_aa = false;
final_er = false;

battle_enemy_num = 0;
battle_boss_on = false;
battle_boss_side_on = false;

//room = startRoom;

//room = battleRoomRemix;
//room = castle_bed;
//px = 296;
//py = 624;
//px = 32;
//py = 88;
//room = castle_bridge;
//px = 168;
//py = 936;
//room = adventure_ancientAbyssf4;
//room = castle_entranceNew;
room = castle_library;
px = 160;
py = 208;
manager_students.explore_start_x = px;
manager_students.explore_start_y = py;
bosses = [false,false,false,false,false,false,false,false,false,false,false];

battle_items = ds_list_create();
drop_items = ds_list_create();
drop_items = ds_list_create();
drop_num_total = 141;
for(var i = 0; i < drop_num_total+1; i+=1)
	drop_items[| i] = 0;
equip_items = ds_list_create();
equip_item_total = 123;
for(var i = 1; i < equip_item_total; i+=1)
	equip_items[| i] = 1;
student_1_equip_1 = 0;
student_1_equip_2 = 0;
student_2_equip_1 = 0;
student_2_equip_2 = 0;
student_3_equip_1 = 0;
student_3_equip_2 = 0;

/*
//battle_items = [1,2,3,4,5,6,7,8,9,28,10,18];
battle_items = ds_list_create();
battle_items[| 0] = 1;
battle_items[| 1] = 2;
battle_items[| 2] = 3;
battle_items[| 3] = 4;
battle_items[| 4] = 5;
battle_items[| 5] = 6;
battle_items[| 6] = 7;
battle_items[| 7] = 8;
battle_items[| 8] = 9;
battle_items[| 9] = 28;
//battle_items[| 10] = 10;
//battle_items[| 11] = 18;

drop_items = ds_list_create();
for(var i = 0; i < 40; i+=1)
	drop_items[| i] = 0;
	
drop_items[| 1] = 10;
drop_items[| 2] = 10;

student_1_equip_1 = 0;
student_1_equip_2 = 0;
student_2_equip_1 = 0;
student_2_equip_2 = 0;
student_3_equip_1 = 0;
student_3_equip_2 = 0;

equip_items = ds_list_create();
for(var i = 1; i < 5; i+=1)
	equip_items[| i] = 1;


*/
