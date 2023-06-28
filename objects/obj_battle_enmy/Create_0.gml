spr_num = 0;
alarm[0] = 15; 

student_up_y = 0;

spr_col = c_white;

var grid = manager_enemy.enemy_list;
enemy_num = manager_battle_remix.enemy_num;

spr = grid[# enemy_num, 8];

enemy_name = grid[# enemy_num, 0];
level =  grid[# enemy_num, 1];

enemy_spells =  grid[# enemy_num, 2];
