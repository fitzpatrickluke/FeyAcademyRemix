winx = false; custom = true;
gender = 0;

student_name = "Player";
transformation = "Magix";
level = 1;

power_name = "Air";
power_element = "Air";
power_status = spells.petrify;

//spells_master = [1,0,0,0,0,0,0,0,0,0,0,0];
spells_master = [73,87,90,74,91,79,78,77,88,75,80,92];
spells_level = [1,0,0,0,0,0,0,0,0,0,0,0];

// class
class_points = 5;

// sprites
spr = spr_empty;
spr_attack = spr_student_attack_air;
spr_heal = spr_atk_air;
spr_battle = spr_fairy_arianna;

// stats
stat_magic = 12;
stat_defense = 12;
stat_speed = 12;
stat_skill = 12;
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