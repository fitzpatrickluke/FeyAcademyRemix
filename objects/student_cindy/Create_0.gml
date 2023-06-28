winx = false; custom = false;
gender = 0;

student_name = "Cindy";
transformation = "Magix";
level = 1;

power_name = "Bees";
power_element = "Air";
power_status = spells.petrify;

student_element = element.air;
student_hair_num = 1;
student_bang_num = 5;
student_hair_col = 0;

spells_master = [73,115,102,109,95,170,164,147,75,110,139,174];
spells_level =  [73,115,102,109,95,170,164,147,75,110,139,174];//[73,0,0,0,0,0,0,0,0,0,0,0];

// class
class_points = 5;

// sprites
spr = spr_cindy_2;
spr_attack = spr_student_attack_air;
spr_heal = spr_atk_air;
spr_battle = spr_fairy_cindy;
spr_reg = spr_cindy_walk_left;
spr_reg_right = spr_cindy_walk_right;
spr_wings = spr_fairy_cindy_wings;

// stats
stat_magic = 12;
stat_defense = 6;
stat_speed = 12;
stat_skill = 18;
// start with 20 hp
stat_hp = 20;
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