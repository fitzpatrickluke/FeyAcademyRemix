winx = false; custom = false;
gender = 1;

student_name = "Rocky";
transformation = "Magix";
level = 1;

power_name = "Shadows";
power_element = "Dark";
power_status = spells.blind;

student_element = element.dark;
student_hair_num = 3;
student_bang_num = 0;
student_hair_col = 0;

spells_master = [155,218,167,180,157,172,226,168,160,132,227,183];
spells_level = [155,0,0,0,0,0,0,0,0,0,0,0];

// class
class_points = 5;

// sprites
spr = spr_rocky;
spr_attack = spr_student_attack_dark;
spr_heal = spr_atk_dark;
spr_battle = spr_fairy_rocky;
spr_reg = spr_rocky_walk_left;
spr_reg_right = spr_rocky_walk_right;
spr_wings = spr_fairy_rocky_wings;

// stats
stat_magic = 6;
stat_defense = 6;
stat_speed = 4;
stat_skill = 14;
// start with 20 hp
stat_hp = 30;
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