winx = true; custom = false;
gender = 0;

student_name = "Aisha";
transformation = "Magix";
level = 1;

power_name = "Waves";
power_element = "Water";
power_status = spells.blind;

student_hair_num = 1;
student_bang_num = 1;
student_hair_col = 1;
spr_reg = spr_arianna_walk_left;

student_element = element.water;

spells_master = [3,8,19,21,6,15,20,9,12,10,188,189];
spells_level = [3,0,0,0,0,0,0,0,0,0,0,0];

// class
class_points = 5;

// sprites
spr = spr_aisha_2;
spr_attack = spr_student_attack_water;
spr_heal = spr_atk_water;
spr_battle = spr_fairy_aisha;
spr_wings = spr_fairy_aisha_wings;
spr_reg = spr_aisha_walk_left;
spr_reg_right = spr_aisha_walk_right;

// stats
stat_magic = 14;
stat_defense = 12;
stat_speed = 12;
stat_skill = 10;
// start with 20 hp
stat_hp = 22;
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