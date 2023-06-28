///@argument set_heal_spell
///@arg student
///@arg id
function set_heal_spell(argument0, argument1)
{
	var s = argument0;
	var j = 0;
	for(var i = 0; i < 12; i+=1)
	{
		if(manager_spells.player_spells[# s.spells_master[i],1] == spells.heal
		&& s.spells_level[i] != 0)
		{
			argument1.spells_heal[j] = s.spells_master[i]; 
			argument1.spells_heal_txt[j] =  manager_spells.player_spells[# s.spells_master[i],0];
			j+=1;
		}
	}
		
	
}