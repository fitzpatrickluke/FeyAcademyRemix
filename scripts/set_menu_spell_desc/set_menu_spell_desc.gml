///@description set_menu_spell_desc
///@arg spell_num
function set_menu_spell_desc(argument0)
{
	var spl = argument0;
	with(obj_menu_spell_desc)
	{
		menu_on = true;
		spell_num = spl;
		txt_name = manager_spells.player_spells[# spl, 0];
		txt_mp = "MP: " + string(manager_spells.player_spells[# spl, 7]);
		txt_desc =  string_wrap(manager_text.txt_spells[|spl],txt_desc_w);
		switch(manager_spells.player_spells[# spl, 5])
		{
			case element.water: txt_elem = "Water"; break;
			case element.earth: txt_elem = "Earth"; break;
			case element.fire: txt_elem = "Fire"; break;
			case element.air: txt_elem = "Air"; break;
			case element.nature: txt_elem = "Nature"; break;
			case element.magic: txt_elem = "Magic"; break;
			case element.light: txt_elem = "Light"; break;
			case element.dark: txt_elem = "Dark"; break;
		}
		
		txt_stat_1 = "";
		txt_stat_2 = "";
		txt_stat_info_1 = "";
		txt_stat_info_2 = "";
		
		switch(manager_spells.player_spells[# spl, 1])
		{
			case spells.attack: 
			txt_stat_1 = "Attack";
			txt_stat_info_1 = string(manager_spells.player_spells[# spl, 2]*100);
			break;
			case spells.heal: 
			txt_stat_1 = "Heal";
			txt_stat_info_1 = string(manager_spells.player_spells[# spl, 2]*100);
			break;
			case spells.sheild:
			txt_stat_1 = "Sheild";
			txt_stat_info_1 = string(manager_spells.player_spells[# spl, 2]*100);
			break;
			case spells.sheild_all:
			txt_stat_1 = "Sheild Party";
			txt_stat_info_1 = string(manager_spells.player_spells[# spl, 2]*100);
			break;
			case spells.reflect:
			txt_stat_1 = "Reflect";
			txt_stat_info_1 = string(manager_spells.player_spells[# spl, 2]*100);
			break;
			case spells.charge_attack: 
			txt_stat_1 = "Charge"; 
			txt_stat_info_1 = string(manager_spells.player_spells[# spl, 2]*100);
			break;
			case spells.double_attack: 
			txt_stat_1 = "Double"; 
			txt_stat_info_1 = string(manager_spells.player_spells[# spl, 2]*100);
			break;
			case spells.whip_attack: 
			txt_stat_1 = "Whip"; 
			txt_stat_info_1 = string(manager_spells.player_spells[# spl, 2]*100);
			break;
			case spells.absorb_attack: 
			txt_stat_1 = "Abosrb"; 
			txt_stat_info_1 = string(manager_spells.player_spells[# spl, 2]*100);
			stat_2_on = true;
			spr_num = 1;
			txt_stat_2 = "Heal";
			txt_stat_info_2 = string(manager_spells.player_spells[# spl, 4]*100);
			break;
			case spells.multi_attack: 
			txt_stat_1 = "Multi"; 
			txt_stat_info_1 = string(manager_spells.player_spells[# spl, 2]*100);
			stat_2_on = true;
			spr_num = 1;
			txt_stat_2 = "Speed";
			txt_stat_info_2 = string(manager_spells.player_spells[# spl, 4]);
			break;
			case spells.mag_up:
			txt_stat_1 = "Mag Up";
			txt_stat_info_1 = "+" + string(manager_spells.player_spells[# spl, 2]);
			break;
			case spells.def_up:
			txt_stat_1 = "Def Up";
			txt_stat_info_1 = "+" + string(manager_spells.player_spells[# spl, 2]);
			break;
			case spells.skl_up:
			txt_stat_1 = "Skl Up";
			txt_stat_info_1 = "+" + string(manager_spells.player_spells[# spl, 2]);
			break;
			case spells.spd_up:
			txt_stat_1 = "Spd Up";
			txt_stat_info_1 = "+" + string(manager_spells.player_spells[# spl, 2]);
			break;
			case spells.all_up: 
			txt_stat_1 = "All Up";
			txt_stat_info_1 = "+" + string(manager_spells.player_spells[# spl, 2]);
			break;
			case spells.double_buff: txt_stat_1 = "Dbl Bff"; break;
			case spells.steal_buff: txt_stat_1 = "Steal Buff"; break;
			case spells.mag_down: 
			txt_stat_1 = "Mag Dwn"; 
			txt_stat_info_1 = "-" + string(manager_spells.player_spells[# spl, 2]);
			break;
			case spells.def_down: 
			txt_stat_1 = "Def Dwn"; 
			txt_stat_info_1 = "-" + string(manager_spells.player_spells[# spl, 2]);
			break;
			case spells.skl_down: 
			txt_stat_1 = "Skl Dwn";
			txt_stat_info_1 = "-" + string(manager_spells.player_spells[# spl, 2]);
			break;
			case spells.spd_down:
			txt_stat_1 = "Spd Dwn";
			txt_stat_info_1 = "-" + string(manager_spells.player_spells[# spl, 2]);
			break;
			case spells.all_down:
			txt_stat_1 = "All Dwn";
			txt_stat_info_1 = "-" + string(manager_spells.player_spells[# spl, 2]);
			break;
			case spells.blind: 
			txt_stat_1 = "Blind";
			txt_stat_info_1 = string(manager_spells.player_spells[# spl, 2]*100) + "%";
			break;
			case spells.deaf: 
			txt_stat_1 = "Deaf";
			txt_stat_info_1 = string(manager_spells.player_spells[# spl, 2]*100) + "%";
			break;
			case spells.petrify:
			txt_stat_1 = "Petrify";
			txt_stat_info_1 = string(manager_spells.player_spells[# spl, 2]*100) + "%";
			break;
			case spells.curse:
			txt_stat_1 = "Curse";
			txt_stat_info_1 = string(manager_spells.player_spells[# spl, 2]*100) + "%";
			break;
			case spells.double_curse: txt_stat_1 = "Dbl Curse"; break;
			case spells.charge_plus_hp: 
			txt_stat_1 = "ChargeHP";
			txt_stat_info_1 = string(manager_spells.player_spells[# spl, 2]*100);
			break;
			case spells.lose_hp: 
			txt_stat_1 = "Lose HP";
			txt_stat_info_1 = string(manager_spells.player_spells[# spl, 2]*100);
			break;
			case spells.instant_death: 
			txt_stat_1 = "Inst Death"; 
			txt_stat_info_1 = string(manager_spells.player_spells[# spl, 2]*100) + "%";
			break;
			case spells.heal_status: txt_stat_1 = "Heal Sts"; break;
			case spells.revive: txt_stat_1 = "Revive"; break;
			case spells.hp_phase_down: 
			txt_stat_1 = "HP down";
			txt_stat_info_1 = string(manager_spells.player_spells[# spl, 2]*100);
			break;
			case spells.heal_party: 
			txt_stat_1 = "Heal Party";
			txt_stat_info_1 = string(manager_spells.player_spells[# spl, 2]*100);
			break;
			case spells.heal_enemy: 
			txt_stat_1 = "Heal Enemy";
			txt_stat_info_1 = string(manager_spells.player_spells[# spl, 2]*100);
			break;
			case spells.sacrifice: 
			txt_stat_1 = "All up.";
			txt_stat_info_1 = string(manager_spells.player_spells[# spl, 2]*100);
			break;
			
		}
		
		
		if(manager_spells.player_spells[# spl, 3] != spells.null)
		{
			stat_2_on = true;
			spr_num = 1;
			
			switch(manager_spells.player_spells[# spl, 3])
			{
				case spells.attack: 
				txt_stat_2 = "Attack";
				txt_stat_info_2 = string(manager_spells.player_spells[# spl, 4]*100);
				break;
				case spells.heal: 
				txt_stat_2 = "Heal";
				txt_stat_info_2 = string(manager_spells.player_spells[# spl, 4]*100);
				break;
				case spells.sheild:
				txt_stat_2 = "Sheild";
				txt_stat_info_2 = string(manager_spells.player_spells[# spl, 4]*100);
				break;
				case spells.reflect:
				txt_stat_2 = "Reflect";
				txt_stat_info_2 = string(manager_spells.player_spells[# spl, 4]*100);
				break;
				case spells.charge_attack: 
				txt_stat_2 = "Charge"; 
				txt_stat_info_2 = string(manager_spells.player_spells[# spl, 4]*100);
				break;
				case spells.double_attack: 
				txt_stat_2 = "Double"; 
				txt_stat_info_2 = string(manager_spells.player_spells[# spl, 4]*100);
				break;
				case spells.whip_attack: 
				txt_stat_2 = "Whip"; 
				txt_stat_info_2 = string(manager_spells.player_spells[# spl, 4]*100);
				break;
				case spells.absorb_attack: 
				txt_stat_2 = "Abosrb"; 
				break;
				case spells.multi_attack: 
				txt_stat_2 = "Multi"; 
				break;
				case spells.mag_up:
				txt_stat_2 = "Mag Up";
				txt_stat_info_2 = "+" + string(manager_spells.player_spells[# spl, 4]);
				break;
				case spells.def_up:
				txt_stat_2 = "Def Up";
				txt_stat_info_2 = "+" + string(manager_spells.player_spells[# spl, 4]);
				break;
				case spells.skl_up:
				txt_stat_2 = "Skl Up";
				txt_stat_info_2 = "+" + string(manager_spells.player_spells[# spl, 4]);
				break;
				case spells.spd_up:
				txt_stat_2 = "Spd Up";
				txt_stat_info_2 = "+" + string(manager_spells.player_spells[# spl, 4]);
				break;
				case spells.all_up: 
				txt_stat_2 = "All Up";
				txt_stat_info_2 = "+" + string(manager_spells.player_spells[# spl, 4]);
				break;
				case spells.double_buff: txt_stat_2 = "Dbl Bff"; break;
				case spells.steal_buff: txt_stat_2 = "Steal Buff"; break;
				case spells.mag_down: 
				txt_stat_2 = "Mag Dwn"; 
				txt_stat_info_2 = "-" + string(manager_spells.player_spells[# spl, 4]);
				break;
				case spells.def_down: 
				txt_stat_2 = "Def Dwn"; 
				txt_stat_info_2 = "-" + string(manager_spells.player_spells[# spl, 4]);
				break;
				case spells.skl_down: 
				txt_stat_2 = "Skl Dwn";
				txt_stat_info_2 = "-" + string(manager_spells.player_spells[# spl, 4]);
				break;
				case spells.spd_down:
				txt_stat_2 = "Spd Dwn";
				txt_stat_info_2 = "-" + string(manager_spells.player_spells[# spl, 4]);
				break;
				case spells.all_down:
				txt_stat_2 = "All Dwn";
				txt_stat_info_2 = "-" + string(manager_spells.player_spells[# spl, 4]);
				break;
				case spells.blind: 
				txt_stat_2 = "Blind";
				txt_stat_info_2 = string(manager_spells.player_spells[# spl, 4]*100) + "%";
				break;
				case spells.deaf: 
				txt_stat_2 = "Deaf";
				txt_stat_info_2 = string(manager_spells.player_spells[# spl, 4]*100) + "%";
				break;
				case spells.petrify:
				txt_stat_2 = "Petrify";
				txt_stat_info_2 = string(manager_spells.player_spells[# spl, 4]*100) + "%";
				break;
				case spells.curse:
				txt_stat_2 = "Curse";
				txt_stat_info_2 = string(manager_spells.player_spells[# spl, 4]*100) + "%";
				break;
				case spells.double_curse: txt_stat_2 = "Dbl Curse"; break;
				case spells.charge_plus_hp: 
				txt_stat_2 = "ChargeHP";
				txt_stat_info_2 = string(manager_spells.player_spells[# spl, 4]*100);
				break;
				case spells.lose_hp: 
				txt_stat_2 = "Lose HP";
				txt_stat_info_2 = string(manager_spells.player_spells[# spl, 4]*100);
				break;
				case spells.instant_death: 
				txt_stat_2 = "Inst Death"; 
				txt_stat_info_2 = string(manager_spells.player_spells[# spl, 4]*100) + "%";
				break;
				case spells.heal_status: txt_stat_2 = "Heal Sts"; break;
				case spells.revive: txt_stat_2 = "Revive"; break;
				case spells.hp_phase_down: 
				txt_stat_2 = "HP down";
				txt_stat_info_2 = string(manager_spells.player_spells[# spl, 4]*100);
				break;
				case spells.heal_party: 
				txt_stat_2 = "Heal Party";
				txt_stat_info_2 = string(manager_spells.player_spells[# spl, 4]*100);
				break;
				case spells.heal_enemy: 
				txt_stat_2 = "Heal Enemy";
				txt_stat_info_2 = string(manager_spells.player_spells[# spl, 4]*100);
				break;
			}
		}
	}
	
}