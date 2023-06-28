winx = false; custom = false;
gender = 1;

student_name = "Basil";
transformation = "Magix";
level = 1;

power_name = "Poison";
power_element = "Nature";
power_status = spells.curse;

student_element = element.nature;
student_hair_num = 4;
student_bang_num = 0;
student_hair_col = 0;

spells_master = [93,223,116,113,94,164,101,117,98,224,135,225];
spells_level = [93,0,0,0,0,0,0,0,0,0,0,0];

// class
class_points = 5;

// sprites
spr = spr_basil;
spr_attack = spr_student_attack_nature;
spr_heal = spr_atk_nature;
spr_battle = spr_fairy_basil;
spr_reg = spr_basil_walk_left;
spr_reg_right = spr_basil_walk_right;
spr_wings = spr_fairy_basil_wings;

// stats
stat_magic = 8;
stat_defense = 14;
stat_speed = 6;
stat_skill = 16;
// start with 20 hp
stat_hp = 16;
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