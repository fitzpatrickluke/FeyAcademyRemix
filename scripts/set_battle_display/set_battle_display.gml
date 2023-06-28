///@description set_battle_display
function set_battle_display()
{
	show_debug_message("set_battle_display");
	with(obj_battle_textBox)
	{
		menu_on = true;
		text_pause_on = true;
		alarm[1] = text_pause;
		text_curr = 0;
		if(manager_battle_remix.battleOrder[text_curr] == 0)
		{
			set_battle_petrify(0);
			set_battle_blind(0);
			set_battle_deaf(0);
			//battle_attack(0);
			manager_battle_remix.curr_battle_phase = battle_phase.display1;
			var dd = obj_battle_enmy.enemy_name;
			switch(manager_battle_remix.unitTarget[0])
			{
				case 0: dd = obj_battle_ply.player_name; 
				break;
				case 1: dd = obj_battle_ply2.player_name; 
				break;
				case 2: dd = obj_battle_ply3.player_name;
				break;
				case 3: dd = obj_battle_enmy.enemy_name; 
				break;
			}
			text[text_curr] = set_battle_text(obj_battle_ply.player_name, dd, 0, false);
			text_sized = string_wrap(text[text_curr],text_w)
		}
		else if(manager_battle_remix.battleOrder[text_curr] == 1)
		{
			set_battle_petrify(1);
			set_battle_blind(1);
			set_battle_deaf(1);
			//battle_attack(1);
			manager_battle_remix.curr_battle_phase = battle_phase.display2;
			var dd = obj_battle_enmy.enemy_name;
			switch(manager_battle_remix.unitTarget[1])
			{
				case 0: dd = obj_battle_ply.player_name; 
				break;
				case 1: dd = obj_battle_ply2.player_name; 
				break;
				case 2: dd = obj_battle_ply3.player_name; 
				break;
				case 3: dd = obj_battle_enmy.enemy_name; 
				break;
			}
			text[text_curr] = set_battle_text(obj_battle_ply2.player_name, dd, 1, false);
			text_sized = string_wrap(text[text_curr],text_w)
		}
		else if(manager_battle_remix.battleOrder[text_curr] == 2)
		{
			set_battle_petrify(2);
			set_battle_blind(2);
			set_battle_deaf(2);
			//battle_attack(2);
			manager_battle_remix.curr_battle_phase = battle_phase.display3;
			var dd = obj_battle_enmy.enemy_name;
			switch(manager_battle_remix.unitTarget[2])
			{
				case 0: dd = obj_battle_ply.player_name; 
				break;
				case 1: dd = obj_battle_ply2.player_name; 
				break;
				case 2: dd = obj_battle_ply3.player_name; 
				break;
				case 3: dd = obj_battle_enmy.enemy_name; 
				break;
			}
			text[text_curr] = set_battle_text(obj_battle_ply3.player_name, dd, 2, false);
			text_sized = string_wrap(text[text_curr],text_w)
		}
		else if(manager_battle_remix.battleOrder[text_curr] == 3)
		{
			set_battle_petrify(3);
			set_battle_blind(3);
			set_battle_deaf(3);
			//battle_attack(3);
			manager_battle_remix.curr_battle_phase = battle_phase.display4;
			var dd = obj_battle_enmy.enemy_name;
			switch(manager_battle_remix.unitTarget[3])
			{
				case 0: dd = obj_battle_ply.player_name; 
				break;
				case 1: dd = obj_battle_ply2.player_name; 
				break;
				case 2: dd = obj_battle_ply3.player_name; 
				break;
				case 3: dd = obj_battle_enmy.enemy_name; 
				break;
			}
			text[text_curr] = set_battle_text(obj_battle_enmy.enemy_name, dd, 3, true);
			text_sized = string_wrap(text[text_curr],text_w)
		}
	}
}