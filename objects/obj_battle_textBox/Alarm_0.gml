// move on to next turn
text_curr += 1;

obj_battle_sprite.attack_on = false;
obj_battle_sprite.alarm[1] = -1;

// end of turn
if(text_curr >= 4)
{
	set_battle_field_effect_end();
	
	// bring up curse menu
	if(manager_battle_remix.boolCurse[0] || manager_battle_remix.boolCurse[1]
	|| manager_battle_remix.boolCurse[2] || manager_battle_remix.boolCurse[3])
	{
		text_pause_on = true;
		alarm[4] = text_pause;
		curse_on = true;
	}
	// bring up heal end turn text
	if(manager_battle_remix.boolHealEndTurn[0] || manager_battle_remix.boolHealEndTurn[1]
	|| manager_battle_remix.boolHealEndTurn[2])
	{
		text_pause_on = true;
		alarm[4] = text_pause;
		heal_on = true;
	}
	// bring up end battle
	else if(manager_battle_remix.unitHp_curr[3] <= 0)
	{
		text_pause_on = true;
		alarm[4] = text_pause;
		end_on = true;
		
	}
	// bring up lose battle
	else if(manager_battle_remix.unitHp_curr[0] <= 0
	&& manager_battle_remix.unitHp_curr[1] <= 0
	&& manager_battle_remix.unitHp_curr[2] <= 0)
	{
		text_pause_on = true;
		alarm[4] = text_pause;
		lose_on = true;
	}
	// regular end of all turns
	else
	{
		text_curr = 0;
		menu_on = false;
		text_pause_on = true;
		alarm[2] = text_pause;
	}
}
// still going through all turns
else
{
		// set appropriate text for playes 1-3 and enemy
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

	
		// check if enemy is dead
		if(manager_battle_remix.unitHp_curr[3] <= 0)
		{
			text_pause_on = true;
			alarm[4] = text_pause;
			end_on = true;
		
		}
		// check if all players are dead
		else if(manager_battle_remix.unitHp_curr[0] <= 0
		&& manager_battle_remix.unitHp_curr[1] <= 0
		&& manager_battle_remix.unitHp_curr[2] <= 0)
		{
			text_pause_on = true;
			alarm[4] = text_pause;
			lose_on = true;
		}
		// regular continue
		else
		{
			text_pause_on = true;
			alarm[1] = text_pause;
		}


}