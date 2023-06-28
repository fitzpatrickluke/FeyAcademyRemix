winx = true; custom = false;
gender = 0;

student_name = "Flora";
transformation = "Magix";
level = 1;

power_name = "Nature";
power_element = "Nature";
power_status = spells.petrify;

student_hair_num = 1;
student_bang_num = 1;
student_hair_col = 1;
spr_reg = spr_arianna_walk_left;

student_element = element.nature;

spells_master = [94,105,111,106,98,101,147,45,97,118,186,185];
spells_level = [94,0,0,0,0,0,0,0,0,0,0,0];

// class
class_points = 5;

// sprites
spr = spr_flora_2;
spr_attack = spr_student_attack_nature;
spr_heal = spr_atk_nature;
spr_battle = spr_fairy_flora;
spr_wings = spr_fairy_flora_wings;
spr_reg = spr_flora_walk_left;
spr_reg_right = spr_flora_walk_right;

// stats
stat_magic = 16;
stat_defense = 16;
stat_speed = 6;
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