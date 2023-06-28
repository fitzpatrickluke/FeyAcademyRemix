winx = false; custom = false;
gender = 1;

student_name = "Fernando";
transformation = "Magix";
level = 1;

power_name = "Pearls";
power_element = "Water";
power_status = spells.petrify;

student_element = element.water;
student_hair_num = 6;
student_bang_num = 0;
student_hair_col = 0;

spells_master = [3,200,23,149,4,15,141,44,201,129,21,202];
spells_level = [3,0,0,0,0,0,0,0,0,0,0,0];

// class
class_points = 5;

// sprites
spr = spr_fernando;
spr_attack = spr_student_attack_water;
spr_heal = spr_atk_water;
spr_battle = spr_fairy_fernando;
spr_reg = spr_fernando_walk_left;
spr_reg_right = spr_fernando_walk_right;
spr_wings = spr_fairy_fernando_wings;

// stats
stat_magic = 8;
stat_defense = 10;
stat_speed = 14;
stat_skill = 8;
// start with 20 hp
stat_hp = 20;
stat_hp_curr = 0;//stat_hp;

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