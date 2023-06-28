winx = false; custom = false;
gender = 1;

student_name = "Glenn";
transformation = "Magix";
level = 1;

power_name = "Amber Flames";
power_element = "Fire";
power_status = spells.deaf;

student_element = element.fire;
student_hair_num = 2;
student_bang_num = 0;
student_hair_col = 0;

spells_master = [51,203,42,102,56,204,63,64,53,45,205,206];
spells_level = [51,0,0,0,0,0,0,0,0,0,0,0];

// class
class_points = 5;

// sprites
spr = spr_glenn;
spr_attack = spr_student_attack_fire;
spr_heal = spr_atk_fire;
spr_battle = spr_fairy_glenn;
spr_reg = spr_glenn_walk_left;
spr_reg_right = spr_glenn_walk_right;
spr_wings = spr_fairy_glenn_wings;

// stats
stat_magic = 12;
stat_defense = 6;
stat_speed = 12;
stat_skill = 8;
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