winx = false; custom = false;
gender = 0;

student_name = "Blanche";
transformation = "Magix";
level = 1;

power_name = "Silver";
power_element = "Earth";
power_status = spells.blind;

student_element = element.earth;
student_hair_num = 4;
student_bang_num = 3;
student_hair_col = 12;

spells_master = [26,37,32,146,161,38,33,44,30,39,148,177];
spells_level = [26,0,0,0,0,0,0,0,0,0,0,0];

// class
class_points = 5;

// sprites
spr = spr_blanche_2;
spr_attack = spr_student_attack_earth;
spr_heal = spr_atk_earth;
spr_battle = spr_fairy_blanche;
spr_reg = spr_blanch_walk_left;
spr_reg_right = spr_blanch_walk_right;
spr_wings = spr_fairy_blanche_wings;

// stats
stat_magic = 12;
stat_defense = 10;
stat_speed = 6;
stat_skill = 10;
// start with 20 hp
stat_hp = 22;
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