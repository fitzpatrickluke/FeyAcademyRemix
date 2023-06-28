///@description set_battle_turn
function set_battle_turn()
{
	show_debug_message("set_battle_turn");
	
	// order by speed
	unitSpdTemp = [manager_battle_remix.unitSpd[0]+manager_battle_remix.statSpdUp[0]-manager_battle_remix.statSpdDown[0],
	manager_battle_remix.unitSpd[1]+manager_battle_remix.statSpdUp[1]-manager_battle_remix.statSpdDown[1], 
	manager_battle_remix.unitSpd[2]+manager_battle_remix.statSpdUp[2]-manager_battle_remix.statSpdDown[2],
	manager_battle_remix.unitSpd[3]+manager_battle_remix.statSpdUp[3]-manager_battle_remix.statSpdDown[3]];
	spdTemp = [0, 1, 2, 3];
	
	// sort
	for(var i = 0; i < 4; i+=1)
	{
		for(var j = 0; j < 4; j+=1)
		{
			if(unitSpdTemp[i] > unitSpdTemp[j])
			{
				var temp = unitSpdTemp[i];
				unitSpdTemp[i] = unitSpdTemp[j];
				unitSpdTemp[j] = temp;
				var temp2 = spdTemp[i];
				spdTemp[i] = spdTemp[j];
				spdTemp[j] = temp2;
			}
		}
	}
	

	// check defend
	// also check item
	
	loc = 0;
	spdTempNew = [0,0,0,0];
	if(manager_battle_remix.boolDefend[2] == true
	|| manager_battle_remix.boolItem[2] == true)
	{
		for(var i = 0; i < 4; i+=1)
		{
			if(spdTemp[i] == 2)
			{
				loc = i;
				break;
			}
		}
		spdTempNew[0] = spdTemp[loc];
		array_delete(spdTemp, loc, 1);
		for(var j = 0; j < 3; j+=1)
		{
			spdTempNew[j+1] = spdTemp[j];
		}
		for(var c = 0; c < 4; c+=1)
		{
			spdTemp[c] = spdTempNew[c];
		}
	}
	if(manager_battle_remix.boolDefend[1] == true
	|| manager_battle_remix.boolItem[1] == true)
	{
		for(var i = 0; i < 4; i+=1)
		{
			if(spdTemp[i] == 1)
			{
				loc = i;
				break;
			}
		}
		spdTempNew[0] = spdTemp[loc];
		array_delete(spdTemp, loc, 1);
		for(var j = 0; j < 3; j+=1)
		{
			spdTempNew[j+1] = spdTemp[j];
		}
		for(var c = 0; c < 4; c+=1)
		{
			spdTemp[c] = spdTempNew[c];
		}
	}
	if(manager_battle_remix.boolDefend[0] == true
	|| manager_battle_remix.boolItem[0] == true)
	{
		for(var i = 0; i < 4; i+=1)
		{
			if(spdTemp[i] == 0)
			{
				loc = i;
				break;
			}
		}
		spdTempNew[0] = spdTemp[loc];
		array_delete(spdTemp, loc, 1);
		for(var j = 0; j < 3; j+=1)
		{
			spdTempNew[j+1] = spdTemp[j];
		}
		for(var c = 0; c < 4; c+=1)
		{
			spdTemp[c] = spdTempNew[c];
		}
	}

	
	
	
	
	// set
	show_debug_message("TURN ORDER");
	for(var c = 0; c < 4; c+=1)
	{
		show_debug_message(spdTemp[c]);
		manager_battle_remix.battleOrder[c] = spdTemp[c];
	}
	
	
	manager_battle_remix.curr_battle_phase = battle_phase.setAtk;
	set_battle_display();
}