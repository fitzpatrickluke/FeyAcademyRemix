///@description set_enemy_num
///@ arg num
function set_enemy_num(argument0)
{
	var num = argument0;
	var grid = manager_enemy.enemy_list;

	with(manager_battle_enemy)
	{
		enemy_num = num;
		
		enemy_spr = grid[# num, 8];
		enemy_spr_atk = grid[# num, 9];
		enemy_spr_hel = grid[# num, 10];

		enemy_name = grid[# num, 0];
		level =  grid[# num, 1];

		enemy_spells =  grid[# num, 2];

		turn_num = 0;

		// battle stats
		stat_magic = grid[# num, 3];
		stat_defense = grid[# num, 4];
		stat_speed = grid[# num, 5];
		stat_skill = grid[# num, 6];

		stat_hp = grid[# num, 7];
		stat_hp_curr = stat_hp;

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
	}
}