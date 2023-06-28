winx = false; custom = false;
gender = 0;

student_name = "Maria";
transformation = "Magix";
level = 1;

power_name = "Starlight";
power_element = "Light";
power_status = spells.blind;

student_element = element.light;
student_hair_num = 0;
student_bang_num = 5;
student_hair_col = 2;

spells_master = [137,150,146,42,138,48,121,154,139,45,86,175];
spells_level = [137,0,0,0,0,0,0,0,0,0,0,0];

// class
class_points = 5;

// sprites
spr = spr_maria_2;
spr_attack = spr_student_attack_light;
spr_heal = spr_atk_light;
spr_battle = spr_fairy_maria;
spr_reg = spr_maria_walk_left;
spr_reg_right = spr_maria_walk_right;
spr_wings = spr_fairy_maria_wings;

// stats
stat_magic = 14;
stat_defense = 10;
stat_speed = 8;
stat_skill = 4;
// start with 20 hp
stat_hp = 24;
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