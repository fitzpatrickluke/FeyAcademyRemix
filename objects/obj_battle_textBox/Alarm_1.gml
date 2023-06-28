text_pause_on = false;

// student 1's turn
if(manager_battle_remix.battleOrder[text_curr] == 0)
{	
	if(manager_battle_remix.unitHp_curr[0] <= 0)
	{
		alarm[0] = text_time;
	}
	else if(manager_battle_remix.boolFlee[0] == true)
	{
		flee_on = true;
		alarm[4] = 1;
	}
	else if(manager_battle_remix.boolDefend[0] == true)
	{
		alarm[0] = text_time;
		obj_battle_sprite_ply1.spr = manager_students.master_student_1.spr_heal;
		obj_battle_sprite_ply1.attack_on = true;
		obj_battle_sprite_ply1.defending = true;
		obj_battle_sprite_ply1.special = false;
		obj_battle_sprite_ply1.strike = false;
		obj_battle_sprite_ply1.alarm[1] = obj_battle_sprite_ply1.on_time;
	}
	else if(manager_battle_remix.boolSpecial[0] == true)
	{
		alarm[0] = text_time;
		obj_battle_sprite_ply1.attack_on = true;
		obj_battle_sprite_ply1.defending = false;
		obj_battle_sprite_ply1.special = true;
		obj_battle_sprite_ply1.strike = false;
		obj_battle_sprite_ply1.alarm[1] = obj_battle_sprite_ply1.on_time;
		manager_battle_remix.unitTarget[0] = 3;
		battle_special(manager_students.student_1_wings, 0, 3);
		battle_attack_set_hit(0);
	}
	else if(manager_battle_remix.boolStrike[0] == true)
	{
		alarm[0] = text_time;
		obj_battle_sprite_enmy.attack_on = false;
		obj_battle_sprite_enmy.defending = false;
		obj_battle_sprite_enmy.special = false;
		obj_battle_sprite_enmy.strike = false;
		battle_strike(0);
		obj_battle_sprite_hit_enmy.attack_on = true;
		obj_battle_sprite_hit_enmy.spr = spr_attack_hit_strike;
		obj_battle_sprite_hit_enmy.alarm[1] = obj_battle_sprite_hit_enmy.on_time;
	}
	else if(manager_battle_remix.unitHp_curr[0] <= 0)
	{
		alarm[0] = text_time;
	}
	else if(manager_battle_remix.boolAttack[0] == true)
	{
		battle_attack(0);
		battle_attack_set_hit(0);
		
		// set attack animation
		obj_battle_sprite_ply1.spr = spr_atk_full;
		obj_battle_sprite_ply1.spr_atk_num = manager_battle_remix.battleSpells[0];
		obj_battle_sprite_ply1.attack_on = true;
		obj_battle_sprite_ply1.defending = false;
		obj_battle_sprite_ply1.special = false;
		obj_battle_sprite_ply1.strike = false;
		obj_battle_sprite_ply1.alarm[1] =  obj_battle_sprite_ply1.on_time;
		alarm[0] = text_time;
		
	}
	else if(manager_battle_remix.boolItem[0] == true)
	{
		battle_use_item(0);
		
		alarm[0] = text_time;
	}
	else
	{
		alarm[0] = text_time;
	}
}
// student 2's turn
else if(manager_battle_remix.battleOrder[text_curr] == 1)
{
	if(manager_battle_remix.unitHp_curr[1] <= 0)
	{
		alarm[0] = text_time;
	}
	else if(manager_battle_remix.boolFlee[1] == true)
	{
		flee_on = true;
		alarm[4] = 1;
	}
	else if(manager_battle_remix.boolDefend[1] == true)
	{
		alarm[0] = text_time;
		obj_battle_sprite_ply2.spr = manager_students.master_student_2.spr_heal;
		obj_battle_sprite_ply2.attack_on = true;
		obj_battle_sprite_ply2.defending = true;
		obj_battle_sprite_ply2.special = false;
		obj_battle_sprite_ply2.strike = false;
		obj_battle_sprite_ply2.alarm[1] =  obj_battle_sprite_ply2.on_time;
	}
	else if(manager_battle_remix.boolSpecial[1] == true)
	{
		alarm[0] = text_time;
		obj_battle_sprite_ply2.attack_on = true;
		obj_battle_sprite_ply2.defending = false;
		obj_battle_sprite_ply2.special = true;
		obj_battle_sprite_ply2.strike = false;
		obj_battle_sprite_ply2.alarm[1] = obj_battle_sprite_ply2.on_time;
		manager_battle_remix.unitTarget[1] = 3;
		battle_special(manager_students.student_2_wings, 1, 3);
		battle_attack_set_hit(1);
	}
	else if(manager_battle_remix.boolStrike[1] == true)
	{
		alarm[0] = text_time;
		obj_battle_sprite_enmy.attack_on = false;
		obj_battle_sprite_enmy.defending = false;
		obj_battle_sprite_enmy.special = false;
		obj_battle_sprite_enmy.strike = false;
		battle_strike(1);
		obj_battle_sprite_hit_enmy.attack_on = true;
		obj_battle_sprite_hit_enmy.spr = spr_attack_hit_strike;
		obj_battle_sprite_hit_enmy.alarm[1] = obj_battle_sprite_hit_enmy.on_time;
	}
	else if(manager_battle_remix.unitHp_curr[1] <= 0)
	{
		alarm[0] = text_time;
	}
	else if(manager_battle_remix.boolAttack[1] == true)
	{
		battle_attack(1);
		battle_attack_set_hit(1);
		
		// set attack animation
		obj_battle_sprite_ply2.spr = spr_atk_full;
		obj_battle_sprite_ply2.spr_atk_num = manager_battle_remix.battleSpells[1];
		obj_battle_sprite_ply2.attack_on = true;
		obj_battle_sprite_ply2.defending = false;
		obj_battle_sprite_ply2.special = false;
		obj_battle_sprite_ply2.strike = false;
		obj_battle_sprite_ply2.alarm[1] =  obj_battle_sprite_ply2.on_time;
		alarm[0] = text_time;
		
	}
	else if(manager_battle_remix.boolItem[1] == true)
	{
		battle_use_item(1);
		
		alarm[0] = text_time;
	}
	else
	{
		alarm[0] = text_time;
	}
}
// student 3's turn
else if(manager_battle_remix.battleOrder[text_curr] == 2)
{
	if(manager_battle_remix.unitHp_curr[2] <= 0)
	{
		alarm[0] = text_time;
	}
	else if(manager_battle_remix.boolFlee[2] == true)
	{
		flee_on = true;
		alarm[4] = 1;
	}
	else if(manager_battle_remix.boolDefend[2] == true)
	{
		alarm[0] = text_time;
		obj_battle_sprite_ply3.spr = manager_students.master_student_3.spr_heal;
		obj_battle_sprite_ply3.attack_on = true;
		obj_battle_sprite_ply3.defending = true;
		obj_battle_sprite_ply3.special = false;
		obj_battle_sprite_ply3.strike = false;
		obj_battle_sprite_ply3.alarm[1] =  obj_battle_sprite_ply3.on_time;
	}
	else if(manager_battle_remix.boolSpecial[2] == true)
	{
		alarm[0] = text_time;
		obj_battle_sprite_ply3.attack_on = true;
		obj_battle_sprite_ply3.defending = false;
		obj_battle_sprite_ply3.special = true;
		obj_battle_sprite_ply3.strike = false;
		obj_battle_sprite_ply3.alarm[1] = obj_battle_sprite_ply3.on_time;
		manager_battle_remix.unitTarget[2] = 3;
		battle_special(manager_students.student_3_wings, 2, 3);
		battle_attack_set_hit(2);
	}
	else if(manager_battle_remix.boolStrike[2] == true)
	{
		alarm[0] = text_time;
		obj_battle_sprite_enmy.attack_on = false;
		obj_battle_sprite_enmy.defending = false;
		obj_battle_sprite_enmy.special = false;
		obj_battle_sprite_enmy.strike = false;
		battle_strike(2);
		obj_battle_sprite_hit_enmy.attack_on = true;
		obj_battle_sprite_hit_enmy.spr = spr_attack_hit_strike;
		obj_battle_sprite_hit_enmy.alarm[1] = obj_battle_sprite_hit_enmy.on_time;
	}
	else if(manager_battle_remix.unitHp_curr[2] <= 0)
	{
		alarm[0] = text_time;
	}
	else if(manager_battle_remix.boolAttack[2] == true)
	{
		battle_attack(2);
		battle_attack_set_hit(2);
		
		// set attack animation
		obj_battle_sprite_ply3.spr = spr_atk_full;
		obj_battle_sprite_ply3.spr_atk_num = manager_battle_remix.battleSpells[2];
		obj_battle_sprite_ply3.attack_on = true;
		obj_battle_sprite_ply3.defending = false;
		obj_battle_sprite_ply3.special = false;
		obj_battle_sprite_ply3.strike = false;
		obj_battle_sprite_ply3.alarm[1] =  obj_battle_sprite_ply3.on_time;
		alarm[0] = text_time;
		
		
	}
	else if(manager_battle_remix.boolItem[2] == true)
	{
		battle_use_item(2);
		
		alarm[0] = text_time;
	}
	else
	{
		alarm[0] = text_time;
	}
}
// enemy's turn
else if(manager_battle_remix.battleOrder[text_curr] == 3)
{
	if(manager_battle_remix.boolAttack[3] == true)
	{
		battle_attack(3);
		battle_attack_set_hit(3);
		
		// set attack animation
		obj_battle_sprite_enmy.spr = spr_atk_full;
		obj_battle_sprite_enmy.spr_atk_num = manager_battle_remix.battleSpells[3];
		obj_battle_sprite_enmy.attack_on = true;
		obj_battle_sprite_enmy.defending = false;
		obj_battle_sprite_enmy.special = false;
		obj_battle_sprite_enmy.strike = false;
		obj_battle_sprite_enmy.alarm[1] =  obj_battle_sprite_enmy.on_time;
		alarm[0] = text_time;
		
	}
	else
	{
		alarm[0] = text_time;
	}
}

