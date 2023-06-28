winx = false; custom = false;
gender = 0;

student_name = "Tigris";
transformation = "Magix";
level = 1;

power_name = "Flowers";
power_element = "Nature";
power_status = spells.petrify;

student_element = element.nature;
student_hair_num = 0;
student_bang_num = 2;
student_hair_col = 3;

spells_master = [93,103,104,115,94,105,143,95,101,106,86,148];
spells_level = [93,0,0,0,0,0,0,0,0,0,0,0];

// class
class_points = 5;

// sprites
spr = spr_tigris_2;
spr_attack = spr_student_attack_nature;
spr_heal = spr_atk_nature;
spr_battle = spr_fairy_tigris;
spr_reg = spr_tigris_walk_left;
spr_reg_right = spr_tigris_walk_right;
spr_wings = spr_fairy_tigris_wings;

// stats
stat_magic = 14;
stat_defense = 10;
stat_speed = 5;
stat_skill = 5;
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