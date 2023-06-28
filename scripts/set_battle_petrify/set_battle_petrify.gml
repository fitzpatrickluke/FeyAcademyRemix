///@description set_battle_petrify
///@arg num
function set_battle_petrify(argument0)
{
	var num = argument0;
	
	if(manager_battle_remix.boolPetrify[num])
	{
		// calculate
		var i = irandom(99);
		var n = 100 - manager_battle_remix.unitSkl[num];
		
		if(n <= 0)
			n = 0;
			
		if(i <= n)
			on = true;
		else
			on = false;
		
		if(obj_battle_feildElement.spr_field == fieldElement.storm)
			on = true;
		
		// set
		if(on)
		{
			manager_battle_remix.boolAttack[num] = false;
			manager_battle_remix.boolDefend[num] = false;
			manager_battle_remix.boolSpecial[num] = false;
			manager_battle_remix.boolFlee[num] = false;
			
			manager_battle_remix.boolPetrifyOn[num] = true;
		}
		

	}
}