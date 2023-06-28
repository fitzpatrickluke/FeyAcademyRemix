winx = true; custom = false;
gender = 0;

student_name = "Tecna";
transformation = "Magix";
level = 1;

power_name = "Technology";
power_element = "Magic";
power_status = spells.petrify;

student_hair_num = 1;
student_bang_num = 1;
student_hair_col = 1;
spr_reg = spr_arianna_walk_left;

student_element = element.magic;

spells_master = [195,44,196,82,81,83,33,80,197,92,199,198];
spells_level = [195,0,0,0,0,0,0,0,0,0,0,0];

// class
class_points = 5;

// sprites
spr = spr_tecna_2;
spr_attack = spr_student_attack_magic;
spr_heal = spr_atk_magic;
spr_battle = spr_fairy_tecna;
spr_wings = spr_fairy_tecna_wings;
spr_reg = spr_tecna_walk_left;
spr_reg_right = spr_tecna_walk_right;

// stats
stat_magic = 14;
stat_defense = 16;
stat_speed = 6;
stat_skill = 12;
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