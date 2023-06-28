winx = false; custom = false;
gender = 0;

student_name = "Tasha";
transformation = "Magix";
level = 1;

power_name = "Ghost";
power_element = "Dark";
power_status = spells.curse;

student_element = element.dark;
student_hair_num = 6;
student_bang_num = 1;
student_hair_col = 7;

spells_master = [155,171,156,23,158,162,170,168,160,118,169,163];
spells_level = [155,0,0,0,0,0,0,0,0,0,0,0];

// class
class_points = 5;

// sprites
spr = spr_tasha_2;
spr_attack = spr_student_attack_dark;
spr_heal = spr_atk_dark;
spr_battle = spr_fairy_tasha;
spr_reg = spr_tasha_walk_left;
spr_reg_right = spr_tasha_walk_right;
spr_wings = spr_fairy_tasha_wings;

// stats
stat_magic = 10;
stat_defense = 8;
stat_speed = 4;
stat_skill = 18;
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