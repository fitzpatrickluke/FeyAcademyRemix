winx = false; custom = false;
gender = 0;

student_name = "Hana";
transformation = "Magix";
level = 1;

power_name = "Ponds";
power_element = "Water";
power_status = spells.deaf;

student_element = element.water;
student_hair_num = 9;
student_bang_num = 0;
student_hair_col = 10;

spells_master = [1,16,104,48,3,84,14,20,6,117,17,89];
spells_level = [1,0,0,0,0,0,0,0,0,0,0,0];
// class
class_points = 5;

// sprites
spr = spr_hana_2;
spr_attack = spr_student_attack_water;
spr_heal = spr_atk_water;
spr_battle = spr_fairy_hana;
spr_reg = spr_hana_walk_left;
spr_reg_right = spr_hana_walk_right;
spr_wings = spr_fairy_hana_wings;

// stats
stat_magic = 10;
stat_defense = 10;
stat_speed = 8;
stat_skill = 6;
// start with 20 hp
stat_hp = 26;
stat_hp_curr = stat_hp;

stat_mp = 12; stat_mp_curr = 12;

// battle variable
defending = false;

// exp points
exp_curr = 0;
exp_next = 3;

// level up growths
magic_increase = 2;
defense_increase = 2;
speed_increase = 2;
skill_increase = 2;

//battle
defending = false;
sheild_on = false;
sheild_stat = 0;
reflect_on = false;
reflect_stat = 0;

blind_on = false;
deaf_on = false;
petrify_on = false;
curse_on = false;

mag_buff = 0;
def_buff = 0;
skl_buff = 0;
spd_buff = 0;