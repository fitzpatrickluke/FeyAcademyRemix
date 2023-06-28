///@description set_battle_text
///@arg name
///@arg defender name
///@arg displayNum
///@arg enemy
function set_battle_text(argument0, argument1, argument2, argument3)
{
	var aname = argument0;
	var dname = argument1;
	var num = argument2;
	var eCheck = argument3;
	if(manager_battle_remix.battleSpells[num] != 0)
		var spl = manager_spells.player_spells[# manager_battle_remix.battleSpells[num], 0];
	else
		var spl = "";
	
	if(manager_battle_remix.boolAttack[num])
	{
		switch(manager_spells.player_spells[# manager_battle_remix.battleSpells[num], 1])
		{
			case 1: 
			txt = string(aname) + " attacked " + string(dname) + " with " + string(spl); break;
			case 2:
			if(manager_battle_remix.unitTarget[num] == num)	
				txt = string(aname) + "was healed with " + string(spl);
			else
				txt = string(aname) + " healed " + string(dname) + " with " + string(spl); break;
			case 3: case 4:
			if(manager_battle_remix.unitTarget[num] == num)
				txt = string(aname) + " shielded with " + string(spl);
			else
				txt = string(aname) + " shielded " + string(dname) + " with " + string(spl); break;
			case 5: case 6: 
			txt = string(aname) + " charged " + string(dname) + " with " + string(spl); break;
			case 7:
			txt = string(aname) + " attacked " + string(dname) + " repeatedly  with " + string(spl); break;
			case 8:
			txt = string(aname) + " attacked " + string(dname) + " twice with " + string(spl); break;
			case 9: 
			txt = string(aname) + " whipped " + string(dname) + " with " + string(spl); break;
			case 10: 
			txt = string(aname) + " absorbed " + string(dname) + "'s life with " + string(spl); break;
			case 11:
			if(manager_battle_remix.boolInstaDeath[manager_battle_remix.unitTarget[num]] == true)
				txt = string(aname) + " defeated " + string(dname) + " with " + string(spl);
			else
				txt = string(aname) + " failed to harm " + string(dname) + " with " + string(spl); break;
			case 12:
			txt = string(aname) + " healed " + string(dname) + "'s status condition with " + string(spl); break;
			case 13:
			txt = string(aname) + " revived " + string(dname) + " with " + string(spl); break;
			case 14:
			if(manager_battle_remix.unitTarget[num] == num)
				txt = string(aname) + " increased their MAG with " + string(spl);
			else
				txt = string(aname) + " increased " + string(dname) + "'s MAG with " + string(spl); break;
			case 15:
			if(manager_battle_remix.unitTarget[num] == num)
				txt = string(aname) + " increased their DEF with " + string(spl);
			else
				txt = string(aname) + " increased " + string(dname) + "'s DEF with " + string(spl); break;
			case 16:
			if(manager_battle_remix.unitTarget[num] == num)
				txt = string(aname) + " increased their SKL with " + string(spl);
			else
				txt = string(aname) + " increased " + string(dname) + "'s SKL with " + string(spl); break;
			case 17:
			if(manager_battle_remix.unitTarget[num] == num)
				txt = string(aname) + " increased their SPD with " + string(spl);
			else
				txt = string(aname) + " increased " + string(dname) + "'s SPD with " + string(spl); break;
			case 18:
			if(manager_battle_remix.unitTarget[num] == num)
				txt = string(aname) + " increased ALL their stats with " + string(spl);
			else
				txt = string(aname) + " increased ALL of " + string(dname) + "'s stats with " + string(spl); break;
			case 19:
			if(manager_battle_remix.unitTarget[num] == num)
				txt = string(aname) + " doubled their stat increases with " + string(spl);
			else
				txt = string(aname) + " doubled " + string(dname) + "'s stat increases with " + string(spl); break;
			case 20:
			txt = string(aname) + " stole all of " + string(dname) + "'s stat increases with " + string(spl); break;
			case 21:
			txt = string(aname) + " decreased " + string(dname) + "'s MAG with " + string(spl); break;
			case 22:
			txt = string(aname) + " decreased " + string(dname) + "'s DEF with " + string(spl); break;
			case 23:
			txt = string(aname) + " decreased " + string(dname) + "'s SKL with " + string(spl); break;
			case 24:
			txt = string(aname) + " decreased " + string(dname) + "'s SPD with " + string(spl); break;
			case 25:
			txt = string(aname) + " decreased ALL of " + string(dname) + "'s stats with " + string(spl); break;
			case 26:
			if(manager_battle_remix.boolStatus[manager_battle_remix.unitTarget[num]] == true)
				txt = string(aname) + " blinded " + string(dname) + " with " + string(spl);
			else
				txt = string(aname) + " failed to blind " + string(dname) + " with " + string(spl); break;
			case 27:
			if(manager_battle_remix.boolStatus[manager_battle_remix.unitTarget[num]] == true)
				txt = string(aname) + " muted " + string(dname) + " with " + string(spl);
			else
				txt = string(aname) + " failed to mute " + string(dname) + " with " + string(spl); break;
			case 28:
			if(manager_battle_remix.boolStatus[manager_battle_remix.unitTarget[num]] == true)
				txt = string(aname) + " petrified " + string(dname) + " with " + string(spl);
			else
				txt = string(aname) + " failed to petrify " + string(dname) + " with " + string(spl); break;
			case 29:
			if(manager_battle_remix.boolStatus[manager_battle_remix.unitTarget[num]] == true)
				txt = string(aname) + " cursed " + string(dname) + " with " + string(spl);
			else
				txt = string(aname) + " failed to curse " + string(dname) + " with " + string(spl); break;
			case 30:
			txt = string(aname) + " doubled " + string(dname) + "'s curse with " + string(spl); break;
			case 31: case 32:
			txt = string(aname) + " lost life from " + string(spl); break;
			case 33:
			txt = string(aname) + " healed the everyone's life with " + string(spl); break;
			case 34:
			txt = string(aname) + " healed " + string(dname) + " with " + string(spl); break;
			case spells.sacrifice:
			txt = string(aname) + " sacrificed themselves and increased ALL stats by 20"; break;
			case spells.sheild_all:
			txt = string(aname) + " sheilded the entire party"; break;
		}
		txt += ". ";
		if(manager_spells.player_spells[# manager_battle_remix.battleSpells[num], 4] != -1)
		{
			switch(manager_spells.player_spells[# manager_battle_remix.battleSpells[num], 3])
			{
			case 1: 
			txt += string(aname) + " attacked " + string(dname); break;
			case 2:
			if(manager_battle_remix.unitTarget[num] == num)	
				txt = string(aname) + "was healed";
			else
				txt = string(aname) + " healed " + string(dname); break;
			case 3: case 4:
			if(manager_battle_remix.unitTarget[num] == num)
				txt += string(aname) + " shielded"; break;
			case 5: case 6: 
			txt += string(aname) + " charged " + string(dname); break;
			case 7:
			txt += string(aname) + " attacked " + string(dname) + " repeatedly"; break;
			case 8:
			txt += string(aname) + " attacked " + string(dname) + " twice"; break;
			case 9: 
			txt += string(aname) + " whipped " + string(dname); break;
			case 10: 
			txt += string(aname) + " absorbed " + string(dname) + "'s life"; break;
			case 11:
			if(manager_battle_remix.boolInstaDeath[manager_battle_remix.unitTarget[num]] == true)
				txt += string(aname) + " defeated " + string(dname);
			else
				txt += string(aname) + " failed to harm " + string(dname); break;
			case 12:
			if(manager_battle_remix.unitTarget[num] == num)	
				txt = string(aname) + "healed their status condition";
			else
				txt += string(aname) + " healed " + string(dname) + "'s status condition"; break;
			case 13:
			txt += string(aname) + " revived " + string(dname); break;
			case 14:
				txt += string(aname) + "'s MAG increased"; break;
			case 15:
				txt += string(aname) + "'s DEF increased"; break;
			case 16:
				txt += string(aname) + "'s SKL increased"; break;
			case 17:
				txt += string(aname) + "'s SPD increased"; break;
			case 18:
				txt += "ALL of " + string(aname) + "'s stats increased"; break;
			case 19:
				txt += string(aname) + " doubled their stat increases"; break;
			case 20:
			txt += string(aname) + " stole all of " + string(dname) + "'s stat increases"; break;
			case 21:
			txt += string(aname) + "'s MAG decreased"; break;
			case 22:
			txt += string(aname) + "'s DEF decreased"; break;
			case 23:
			txt += string(aname) + "'s SKL decreased"; break;
			case 24:
			txt += string(aname) + "'s SPD decreased"; break;
			case 25:
			txt += "ALL of " + string(aname) + "'s stats decreased"; break;
			case 26:
			if(manager_battle_remix.boolStatus[manager_battle_remix.unitTarget[num]] == true)
				txt += string(aname) + " blinded " + string(dname);
			else
				txt += string(aname) + " failed to blind " + string(dname); break;
			case 27:
			if(manager_battle_remix.boolStatus[manager_battle_remix.unitTarget[num]] == true)
				txt += string(aname) + " muted " + string(dname);
			else
				txt += string(aname) + " failed to mute " + string(dname); break;
			case 28:
			if(manager_battle_remix.boolStatus[manager_battle_remix.unitTarget[num]] == true)
				txt += string(aname) + " petrified " + string(dname);
			else
				txt += string(aname) + " failed to petrify " + string(dname); break;
			case 29:
			if(manager_battle_remix.boolStatus[manager_battle_remix.unitTarget[num]] == true)
				txt += string(aname) + " cursed " + string(dname);
			else
				txt += string(aname) + " failed to curse " + string(dname); break;
			case 30:
			txt += string(aname) + " doubled " + string(dname) + "'s curse"; break;
			case 31: case 32:
			txt += string(aname) + " lost life"; break;
			case 33:
			txt += string(aname) + " healed the everyone's life"; break;
			case 34:
			txt += string(aname) + " healed " + string(dname); break;
			}
			txt += ". ";
		}
		

	}
	else if(manager_battle_remix.boolDefend[num])
	{
		txt = string(aname) + " defended. ";
	}
	else if(manager_battle_remix.boolFlee[num])
	{
		txt = string(aname) + " attempted to flee. ";
	}
	else if(manager_battle_remix.boolStrike[num])
	{
		txt = string(aname) + " striked the enemy. ";
	}
	else if(manager_battle_remix.boolSpecial[num])
	{
		txt = string(aname) + " used the power of ";
		switch(manager_battle_remix.unitWings[num])
		{
			case wings.magix: txt += "magix"; break;
			case wings.charmix: txt += "charmix"; break;
			case wings.mythix: txt += "mythix"; break;
			case wings.lovix: txt += "lovix"; break;
			case wings.dreamix: txt += "dreamix"; break;
			case wings.harmonix: txt += "harmonix"; break;
			case wings.sophix: txt += "sophix"; break;
			case wings.cosmix: txt += "cosmix"; break;
			case wings.onyrix: txt += "onyrix"; break;
			case wings.bloomix: txt += "bloomix"; break;
			case wings.sirenix: txt += "sirenix"; break;
			case wings.crystalSirenix: txt += "crystal sirenix"; break;
			case wings.butterflix: txt += "butterflix"; break;
			case wings.enchantix: txt += "enchantix"; break;
			case wings.tynix: txt += "tynix"; break;
			case wings.believix: txt += "believix"; break;
		}
		txt += ".";
	}
	else if(manager_battle_remix.boolItem[num])
	{
		if(manager_items.item_list[# manager_battle_remix.boolItemUse[num], 4])
		{
			if(manager_battle_remix.unitTarget[num] == num)	
				txt = string(aname) + " used " + string(manager_items.item_list[# manager_battle_remix.boolItemUse[num], 0]) + ". ";
			else
				txt = string(aname) + " used " + string(manager_items.item_list[# manager_battle_remix.boolItemUse[num], 0]) + " on " + string(dname) + ". ";
		}
		else
			txt = string(aname) + " used " + string(manager_items.item_list[# manager_battle_remix.boolItemUse[num], 0]) + ". ";
	}
	
	if(manager_battle_remix.boolPetrifyOn[num])
	{
		txt = string(aname) + " is petrified. ";
	}
	if(manager_battle_remix.boolBlindOn[num])
	{
		txt = string(aname) + " is blind. ";
	}
	if(manager_battle_remix.boolDeafOn[num])
	{
		txt = string(aname) + " is silenced. ";
	}
	
	if(manager_battle_remix.unitHp_curr[num] <= 0)
	{
		txt = string(aname) + " is dead.";
	}
	
	
	return txt;
}