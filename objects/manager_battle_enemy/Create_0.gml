var grid = manager_enemy.enemy_list;
enemy_num = 2;

enemy_spr = grid[# enemy_num, 8];
enemy_spr_atk = grid[# enemy_num, 9];
enemy_spr_hel = grid[# enemy_num, 10];

enemy_name = grid[# enemy_num, 0];
level =  grid[# enemy_num, 1];

enemy_spells =  grid[# enemy_num, 2];

turn_num = 0;

// battle stats
stat_magic = grid[# enemy_num, 3];
stat_defense = grid[# enemy_num, 4];
stat_speed = grid[# enemy_num, 5];
stat_skill = grid[# enemy_num, 6];

stat_hp = grid[# enemy_num, 7];
stat_hp_curr = stat_hp;

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
