///@description battle_strike
///@arg student
function battle_strike(argument0)
{
	var num = argument0;
	var enmy = 3;
	var dmgMult = 1;
	
	with(manager_battle_remix)
	{
	var dmg = 1;
	dmg = (2 * unitLevel[num] / 5 + 2) * unitMag[num] / unitDef[enmy] /20;
	var dmgMult = 0;
	
	if(manager_items.equip_list[# manager_battle_remix.unitEquip[num], 1] == equip.attack_up)
		dmgMult += manager_items.equip_list[# manager_battle_remix.unitEquip[num], 2];
	if(manager_items.equip_list[# manager_battle_remix.unitEquip[num + 3], 1] == equip.attack_up)
		dmgMult += manager_items.equip_list[# manager_battle_remix.unitEquip[num + 3], 2];
		
	dmg += dmgMult;
	
	
	if(boolShield[enmy])
		dmg -= dmg*shieldStat[enmy];
	if(boolDefend[enmy])
		dmg /= 2;
	dmg *= dmgMult;
	dmg = round(dmg);
			
	set_obj_battle_dmg_strike(dmg, enmy);
			
	unitHp_curr[enmy] -= dmg;
	if(unitHp_curr[enmy] < 0)
	{
		if(boolDefend[enmy] || boolReflect[enmy] || boolShield[enmy])
		{
			unitHp_curr[enmy] = 1;
		}
		else
		{
			boolDead[enmy] = true;
			unitHp_curr[enmy] = 0;
		}
	}
			
	if(boolReflect[enmy])
	{
		unitHp_curr[num] -= dmg;
		if(unitHp_curr[num] < 0)
		{
			boolDead[num] = true;
			unitHp_curr[num] = 0;
		}
	}
	}		
}