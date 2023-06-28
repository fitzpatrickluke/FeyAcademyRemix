winx = false; custom = false;
gender = 1;

student_name = "Chris";
transformation = "Magix";
level = 1;

power_name = "Prismatic Light";
power_element = "Light";
power_status = spells.blind;

student_element = element.light;
student_hair_num = 1;
student_bang_num = 0;
student_hair_col = 0;

spells_master = [137,215,149,153,121,138,141,48,216,128,89,217];
spells_level = [137,0,0,0,0,0,0,0,0,0,0,0];

// class
class_points = 5;

// sprites
spr = spr_chris;
spr_attack = spr_student_attack_light;
spr_heal = spr_atk_light;
spr_battle = spr_fairy_chris;
spr_reg = spr_chris_walk_left;
spr_reg_right = spr_chris_walk_right;
spr_wings = spr_fairy_chris_wings;

// stats
stat_magic = 16;
stat_defense = 8;
stat_speed = 12;
stat_skill = 10;
// start with 20 hp
stat_hp = 18;
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