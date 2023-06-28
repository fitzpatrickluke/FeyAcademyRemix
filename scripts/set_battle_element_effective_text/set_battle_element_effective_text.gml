///@description set_battle_element_effective_text
///@arg spell_type
///@arg enemy_type_1
///@arg enemy_type_2

function set_battle_element_effective_text(argument0,argument1,argument2)
{
	var es = argument0;
	var ee1 = argument1;
	var ee2 = argument2;
	
	var mult = 1;
	
	switch(ee1)
	{
		case -1:
		break;
		case element.water:
			switch(es)
			{
				case element.nature:
				mult = 2;
				break;
				case element.fire:
				mult = 0.8;
				break;
				case element.earth:
				mult = 0.8;
				break;
			}
		break;
		case element.earth:
		switch(es)
			{
				case element.water:
				mult = 2;
				break;
				case element.nature:
				mult = 2;
				break;
				case element.air:
				mult = 0.8;
				break;
			}
		break;
		case element.fire:	
			switch(es)
			{
				case element.water:
				mult = 2;
				break;
				case element.light:
				mult = 2;
				break;
				case element.dark:
				mult = 0.8;
				break;
			}	
		break;
		case element.air:
			switch(es)
			{
				case element.earth:
				mult = 2;
				break;
			}	
		break;
		case element.nature:
			switch(es)
			{
				case element.fire:
				mult = 2;
				break;
				case element.earth:
				mult = 0.8;
				break;
				case element.water:
				mult = 0.8;
				break;
				break;
				case element.magic:
				mult = 0.8;
				break;
			}	
		break;
		case element.magic:
			switch(es)
			{
				case element.nature:
				mult = 2;
				break;
			}
		break;
		case element.light:
			switch(es)
			{
				case element.dark:
				mult = 2;
				break;
				case element.fire:
				mult = 0.8;
				break;
			}	
		break;
		case element.dark:
			switch(es)
			{
				case element.fire:
				mult = 2;
				break;
				case element.light:
				mult = 0.8;
				break;
			}	
		break;
	}
	
	switch(ee2)
	{
		case -1:
		break;
		case element.water:
			switch(es)
			{
				case element.nature:
				case element.null:
				switch(mult)
				{
					case 2: mult = 4; break;
					case 1: mult = 2; break;
					case 0.8: mult = 1; break;
				}
				break;
				case element.fire:
				switch(mult)
				{
					case 2: mult = 2; break;
					case 1: mult = 0.8; break;
					case 0.8: mult = 0.5; break;
				}
				break;
				case element.earth:
				switch(mult)
				{
					case 2: mult = 2; break;
					case 1: mult = 0.8; break;
					case 0.8: mult = 0.5; break;
				}
				break;
			}
		break;
		case element.earth:
		switch(es)
			{
				case element.water:
				switch(mult)
				{
					case 2: mult = 4; break;
					case 1: mult = 2; break;
					case 0.8: mult = 1; break;
				}
				break;
				case element.nature:
				switch(mult)
				{
					case 2: mult = 4; break;
					case 1: mult = 2; break;
					case 0.8: mult = 1; break;
				}
				break;
				case element.air:
				switch(mult)
				{
					case 2: mult = 2; break;
					case 1: mult = 0.8; break;
					case 0.8: mult = 0.5; break;
				}
				break;
			}
		break;
		case element.fire:	
			switch(es)
			{
				case element.water:
				switch(mult)
				{
					case 2: mult = 4; break;
					case 1: mult = 2; break;
					case 0.8: mult = 1; break;
				}
				break;
				case element.light:
				switch(mult)
				{
					case 2: mult = 4; break;
					case 1: mult = 2; break;
					case 0.8: mult = 1; break;
				}
				break;
				case element.dark:
				switch(mult)
				{
					case 2: mult = 2; break;
					case 1: mult = 0.8; break;
					case 0.8: mult = 0.5; break;
				}
				break;
			}	
		break;
		case element.air:
			switch(es)
			{
				case element.earth:
				switch(mult)
				{
					case 2: mult = 4; break;
					case 1: mult = 2; break;
					case 0.8: mult = 1; break;
				}
				break;
			}	
		break;
		case element.nature:
			switch(es)
			{
				case element.fire:
				switch(mult)
				{
					case 2: mult = 4; break;
					case 1: mult = 2; break;
					case 0.8: mult = 1; break;
				}
				break;
				case element.earth:
				switch(mult)
				{
					case 2: mult = 2; break;
					case 1: mult = 0.8; break;
					case 0.8: mult = 0.5; break;
				}
				break;
				case element.water:
				switch(mult)
				{
					case 2: mult = 2; break;
					case 1: mult = 0.8; break;
					case 0.8: mult = 0.5; break;
				}
				break;
				break;
				case element.magic:
				switch(mult)
				{
					case 2: mult = 2; break;
					case 1: mult = 0.8; break;
					case 0.8: mult = 0.5; break;
				}
				break;
			}	
		break;
		case element.magic:
			switch(es)
			{
				case element.nature:
				switch(mult)
				{
					case 2: mult = 4; break;
					case 1: mult = 2; break;
					case 0.8: mult = 1; break;
				}
				break;
			}
		break;
		case element.light:
			switch(es)
			{
				case element.dark:
				switch(mult)
				{
					case 2: mult = 4; break;
					case 1: mult = 2; break;
					case 0.8: mult = 1; break;
				}
				break;
				case element.fire:
				switch(mult)
				{
					case 2: mult = 2; break;
					case 1: mult = 0.8; break;
					case 0.8: mult = 0.5; break;
				}
				break;
			}	
		break;
		case element.dark:
			switch(es)
			{
				case element.fire:
				switch(mult)
				{
					case 2: mult = 4; break;
					case 1: mult = 2; break;
					case 0.8: mult = 1; break;
				}
				break;
				case element.light:
				switch(mult)
				{
					case 2: mult = 2; break;
					case 1: mult = 0.8; break;
					case 0.8: mult = 0.5; break;
				}
				break;
			}	
		break;
	}
	
	
	
	return mult;
}