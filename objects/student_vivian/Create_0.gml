winx = false; custom = false;
gender = 0;

student_name = "Vivian";
transformation = "Magix";
level = 1;

power_name = "Alchemy";
power_element = "Magic";
power_status = spells.curse;

student_element = element.magic;
student_hair_num = 3;
student_bang_num = 0;
student_hair_col = 19;

spells_master = [119,134,120,151,121,136,135,130,122,128,72,129];
spells_level = [119,0,0,0,0,0,0,0,0,0,0,0];

// class
class_points = 5;

// sprites
spr = spr_vivian_2;
spr_attack = spr_student_attack_magic;
spr_heal = spr_atk_magic;
spr_battle = spr_fairy_vivian;
spr_reg = spr_vivian_walk_left;
spr_reg_right = spr_vivian_walk_right;
spr_wings = spr_fairy_vivian_wings;

// stats
stat_magic = 12;
stat_defense = 6;
stat_speed = 7;
stat_skill = 15;
// start with 20 hp
stat_hp = 20;
stat_hp_curr = 10;

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