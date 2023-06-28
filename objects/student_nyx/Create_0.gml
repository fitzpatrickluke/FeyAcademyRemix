winx = false; custom = false;
gender = 0;

student_name = "Nyx";
transformation = "Magix";
level = 1;

power_name = "Mirrors";
power_element = "Magic";
power_status = spells.petrify;

student_element = element.magic;
student_hair_num = 11;
student_bang_num = 6;
student_hair_col = 10;

spells_master = [119,127,149,167,141,131,121,128,160,49,130,133];
spells_level = [119,0,0,0,0,0,0,0,0,0,0,0];

// class
class_points = 5;

// sprites
spr = spr_nyx_2;
spr_attack = spr_student_attack_magic;
spr_heal = spr_atk_magic;
spr_battle = spr_fairy_nyx;
spr_reg = spr_nyx_walk_left;
spr_reg_right = spr_nyx_walk_right;
spr_wings = spr_fairy_nyx_wings;

// stats
stat_magic = 8;
stat_defense = 10;
stat_speed = 8;
stat_skill = 6;
// start with 20 hp
stat_hp = 28;
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