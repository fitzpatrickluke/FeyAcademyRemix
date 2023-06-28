winx = false; custom = false;
gender = 1;

student_name = "Gunter";
transformation = "Magix";
level = 1;

power_name = "Snow";
power_element = "Air";
power_status = spells.deaf;

student_element = element.air;
student_hair_num = 7;
student_bang_num = 0;
student_hair_col = 0;

spells_master = [73,18,90,5,9,207,78,19,208,44,209,210];
spells_level = [73,0,0,0,0,0,0,0,0,0,0,0];

// class
class_points = 5;

// sprites
spr = spr_gunter;
spr_attack = spr_student_attack_air;
spr_heal = spr_atk_air;
spr_battle = spr_fairy_gunter;
spr_reg = spr_gunter_walk_left;
spr_reg_right = spr_gunter_walk_right;
spr_wings = spr_fairy_gunter_wings;

// stats
stat_magic = 16;
stat_defense = 8;
stat_speed = 8;
stat_skill = 4;
// start with 20 hp
stat_hp = 24;
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