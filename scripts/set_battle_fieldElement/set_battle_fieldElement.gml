///@description set_battle_fieldElement
///@arg spl
function set_battle_fieldElement(argument0)
{
	var spl = argument0;
	var grid = manager_spells.player_spells;
	
	with(obj_battle_feildElement)
	{
	if(spr_field == -1)
	{
	if(spr_element_1 == -1)
	{
		show_debug_message("FIELD ELEMENT 1");
		draw_on = true;
		switch(grid[# spl, 5])
		{
			case element.water:
			spr_element_1 = 0;
			break;
			case element.earth:
			spr_element_1 = 1;
			break;
			case element.fire:
			spr_element_1 = 2;
			break;
			case element.air:
			spr_element_1 = 3;
			break;
			case element.nature:
			spr_element_1 = 4;
			break;
			case element.magic:
			spr_element_1 = 5;
			break;
			case element.light:
			spr_element_1 = 6;
			break;
			case element.dark:
			spr_element_1 = 7;
			break;
		}
	}
	else if(spr_element_2 == -1)
	{
		show_debug_message("FIELD ELEMENT 2");
		switch(grid[# spl, 5])
		{
			case element.water:
			if(spr_element_1 == (element.fire-1))
				spr_field = fieldElement.steam;
			else if(spr_element_1 == (element.nature-1))
				spr_field = fieldElement.budding;
			else if(spr_element_1 == (element.magic-1))
				spr_field = fieldElement.refresh;
			else
			{
				spr_field = -1;
				spr_element_1 = -1;
				set_battle_fieldElement(spl);
			}
			break;
			
			case element.earth:
			if(spr_element_1 == (element.magic-1))
				spr_field = fieldElement.mettalic;
			else if(spr_element_1 == (element.light-1))
				spr_field = fieldElement.stardust;
			else
			{
				spr_field = -1;
				spr_element_1 = -1;
				set_battle_fieldElement(spl);
			}
			break;
			
			case element.fire:
			if(spr_element_1 == (element.water-1))
				spr_field = fieldElement.steam;
			else if(spr_element_1 == (element.nature-1))
				spr_field = fieldElement.burning;
			else if(spr_element_1 == (element.light-1))
				spr_field = fieldElement.nova;
			else
			{
				spr_field = -1;
				spr_element_1 = -1;
				set_battle_fieldElement(spl);
			}
			break;
			
			case element.air:
			if(spr_element_1 == (element.magic-1))
				spr_field = fieldElement.storm;
			else if(spr_element_1 == (element.dark-1))
				spr_field = fieldElement.void;
			else
			{
				spr_field = -1;
				spr_element_1 = -1;
				set_battle_fieldElement(spl);
			}
			break;
			
			case element.nature:
			if(spr_element_1 == (element.fire-1))
				spr_field = fieldElement.burning;
			else if(spr_element_1 == (element.water-1))
				spr_field = fieldElement.budding;
			else if(spr_element_1 == (element.dark-1))
				spr_field = fieldElement.poison;
			else
			{
				spr_field = -1;
				spr_element_1 = -1;
				set_battle_fieldElement(spl);
			}
			break;
			
			case element.magic:
			if(spr_element_1 == (element.air-1))
				spr_field = fieldElement.storm;
			else if(spr_element_1 == (element.earth-1))
				spr_field = fieldElement.mettalic;
			else if(spr_element_1 == (element.water-1))
				spr_field = fieldElement.refresh;
			else
			{
				spr_field = -1;
				spr_element_1 = -1;
				set_battle_fieldElement(spl);
			}
			break;
			
			case element.light:
			if(spr_element_1 == (element.earth-1))
				spr_field = fieldElement.stardust;
			else if(spr_element_1 == (element.fire-1))
				spr_field = fieldElement.nova;
			else if(spr_element_1 == (element.dark-1))
				spr_field = fieldElement.eclipse;
			else
			{
				spr_field = -1;
				spr_element_1 = -1;
				set_battle_fieldElement(spl);
			}
			break;
			
			case element.dark:
			if(spr_element_1 == (element.air-1))
				spr_field = fieldElement.void;
			else if(spr_element_1 == (element.nature-1))
				spr_field = fieldElement.poison;
			else if(spr_element_1 == (element.light-1))
				spr_field = fieldElement.eclipse;
			else
			{
				spr_field = -1;
				spr_element_1 = -1;
				set_battle_fieldElement(spl);
			}
			break;
		}
	}
	}
	else
	{
		if(grid[# spl, 5] == element.earth)
		{
			if(spr_field == fieldElement.budding || spr_field == fieldElement.burning
			|| spr_field == fieldElement.steam)
			{
				field_num = 0;
				spr_field = -1;
				spr_element_1 = -1;
				draw_on = false;
			}
		}
		if(grid[# spl, 5] == element.air)
		{
			if(spr_field == fieldElement.nova || spr_field == fieldElement.poison
			|| spr_field == fieldElement.refresh)
			{
				field_num = 0;
				spr_field = -1;
				spr_element_1 = -1;
				draw_on = false;
			}
		}
	}
	}
}