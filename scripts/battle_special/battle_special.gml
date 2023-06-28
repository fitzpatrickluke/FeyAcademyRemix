///@description battle_special
///@arg student_wings
///@arg student num
///@arg enemy num

function battle_special(argument0, argument1, argument2)
{
	var w = argument0;
	var s = argument1;
	var e = argument2;
	
	var dmgMult = 1;
	
	manager_battle_remix.boolSpecialTimer[s] = 0;
	
	with(manager_battle_remix)
	{
	switch(w)
	{
		case wings.magix:
		var dmg = 1;
		dmg = (2 * unitLevel[s] / 5 + 2) * unitMag[s] * (50) / unitDef[e] /20;
		if(boolShield[e])
			dmg -= dmg*shieldStat[e];
		if(boolDefend[e])
			dmg /= 2;
		dmg *= dmgMult;
		dmg = round(dmg);
			
		set_obj_battle_dmg_2(dmg, e, spells.attack, 1);
			
		unitHp_curr[e] -= dmg;
		if(unitHp_curr[e] < 0)
		{
			if(boolDefend[e] || boolReflect[e] || boolShield[e])
			{
				unitHp_curr[e] = 1;
			}
			else
			{
				boolDead[e] = true;
				unitHp_curr[e] = 0;
			}
		}
			
		if(boolReflect[e])
		{
			unitHp_curr[s] -= dmg;
			if(unitHp_curr[s] < 0)
			{
				boolDead[s] = true;
				unitHp_curr[s] = 0;
			}
		}
		break;
		
		case wings.charmix:
		var dmg = 1;
		dmg = (2 * unitLevel[s] / 5 + 2) * unitMag[s] * (50) / unitDef[e] /20;
		if(boolShield[e])
			dmg -= dmg*shieldStat[e];
		if(boolDefend[e])
			dmg /= 2;
		dmg *= dmgMult;
		dmg = round(dmg);
			
		set_obj_battle_dmg_2(dmg, e, spells.attack, 1);
			
		unitHp_curr[e] -= dmg;
		if(unitHp_curr[e] < 0)
		{
			if(boolDefend[e] || boolReflect[e] || boolShield[e])
			{
				unitHp_curr[e] = 1;
			}
			else
			{
				boolDead[e] = true;
				unitHp_curr[e] = 0;
			}
		}
			
		if(boolReflect[e])
		{
			unitHp_curr[s] -= dmg;
			if(unitHp_curr[s] < 0)
			{
				boolDead[s] = true;
				unitHp_curr[s] = 0;
			}
		}
		
		statMagUp[s] += 2;
		statSklUp[s] += 2;
		statSpdUp[s] += 2;
		statDefUp[s] += 2;
		set_obj_battle_dmg_2(0, s, spells.all_up, 1);
		
		break;
		
		case wings.mythix:
		
		var dmg = 1;
		dmg = (2 * unitLevel[s] / 5 + 2) * unitMag[s] * (50) / unitDef[e] /20;
		if(boolShield[e])
			dmg -= dmg*shieldStat[e];
		if(boolDefend[e])
			dmg /= 2;
		dmg *= dmgMult;
		dmg = round(dmg);
			
		set_obj_battle_dmg_2(dmg, e, spells.attack, 1);
			
		unitHp_curr[e] -= dmg;
		if(unitHp_curr[e] < 0)
		{
			if(boolDefend[e] || boolReflect[e] || boolShield[e])
			{
				unitHp_curr[e] = 1;
			}
			else
			{
				boolDead[e] = true;
				unitHp_curr[e] = 0;
			}
		}
			
		if(boolReflect[e])
		{
			unitHp_curr[s] -= dmg;
			if(unitHp_curr[s] < 0)
			{
				boolDead[s] = true;
				unitHp_curr[s] = 0;
			}
		}
		
		set_obj_battle_dmg_2((unitHp[s]-unitHp_curr[s]), s, spells.attack, 1);
		unitHp_curr[s] = unitHp[s];
		
		break;
		
		case wings.lovix:
		
		var dmg = 1;
		dmg = (2 * unitLevel[s] / 5 + 2) * unitMag[s] * (50) / unitDef[e] /20;
		if(boolShield[e])
			dmg -= dmg*shieldStat[e];
		if(boolDefend[e])
			dmg /= 2;
		dmg *= dmgMult;
		dmg = round(dmg);
			
		set_obj_battle_dmg_2(dmg, e, spells.attack, 1);
			
		unitHp_curr[e] -= dmg;
		if(unitHp_curr[e] < 0)
		{
			if(boolDefend[e] || boolReflect[e] || boolShield[e])
			{
				unitHp_curr[e] = 1;
			}
			else
			{
				boolDead[e] = true;
				unitHp_curr[e] = 0;
			}
		}
			
		if(boolReflect[e])
		{
			unitHp_curr[s] -= dmg;
			if(unitHp_curr[s] < 0)
			{
				boolDead[s] = true;
				unitHp_curr[s] = 0;
			}
		}
		
		boolReflect[s] = true;
		reflectStat[s] = 1;
		
		break;
		
		case wings.dreamix:
		
		var dmg = 1;
		dmg = (2 * unitLevel[s] / 5 + 2) * unitMag[s] * (100) / unitDef[e] /20;
		if(boolShield[e])
			dmg -= dmg*shieldStat[e];
		if(boolDefend[e])
			dmg /= 2;
		dmg *= dmgMult;
		dmg = round(dmg);
			
		set_obj_battle_dmg_2(dmg, e, spells.attack, 1);
			
		unitHp_curr[e] -= dmg;
		if(unitHp_curr[e] < 0)
		{
			if(boolDefend[e] || boolReflect[e] || boolShield[e])
			{
				unitHp_curr[e] = 1;
			}
			else
			{
				boolDead[e] = true;
				unitHp_curr[e] = 0;
			}
		}
			
		if(boolReflect[e])
		{
			unitHp_curr[s] -= dmg;
			if(unitHp_curr[s] < 0)
			{
				boolDead[s] = true;
				unitHp_curr[s] = 0;
			}
		}
		
		statMagUp[0] += 2;
		statSklUp[0] += 2;
		statSpdUp[0] += 2;
		statDefUp[0] += 2;
		set_obj_battle_dmg_2(0, 0, spells.all_up, 1);
		
		statMagUp[1] += 2;
		statSklUp[1] += 2;
		statSpdUp[1] += 2;
		statDefUp[1] += 2;
		set_obj_battle_dmg_2(0, 1, spells.all_up, 1);
		
		statMagUp[2] += 2;
		statSklUp[2] += 2;
		statSpdUp[2] += 2;
		statDefUp[2] += 2;
		set_obj_battle_dmg_2(0, 2, spells.all_up, 1);
		
		break;
		
		case wings.harmonix:
		
		var dmg = 1;
		dmg = (2 * unitLevel[s] / 5 + 2) * unitMag[s] * (100) / unitDef[e] /20;
		if(boolShield[e])
			dmg -= dmg*shieldStat[e];
		if(boolDefend[e])
			dmg /= 2;
		dmg *= dmgMult;
		dmg = round(dmg);
			
		set_obj_battle_dmg_2(dmg, e, spells.attack, 1);
			
		unitHp_curr[e] -= dmg;
		if(unitHp_curr[e] < 0)
		{
			if(boolDefend[e] || boolReflect[e] || boolShield[e])
			{
				unitHp_curr[e] = 1;
			}
			else
			{
				boolDead[e] = true;
				unitHp_curr[e] = 0;
			}
		}
			
		if(boolReflect[e])
		{
			unitHp_curr[s] -= dmg;
			if(unitHp_curr[s] < 0)
			{
				boolDead[s] = true;
				unitHp_curr[s] = 0;
			}
		}
		
		var sdown_mag = statMagDown[s]// + statMagDown[1] + statMagDown[2];
		var sdown_def = statDefDown[s]// + statDefDown[1] + statDefDown[2];
		var sdown_skl = statSklDown[s]// + statSklDown[1] + statSklDown[2];
		var sdown_spd = statSpdDown[s]// + statSpdDown[1] + statSpdDown[2];
		statMagDown[3] += sdown_mag;
		statDefDown[3] += sdown_def;
		statSpdDown[3] += sdown_spd;
		statSklDown[3] += sdown_skl;
		
		if(sdown_mag > 0 && sdown_def > 0 && sdown_skl > 0 && sdown_spd > 0)
			set_obj_battle_dmg_2(0, e, spells.all_down, 3);
		
		if(boolStatus[s] == true)
		{
			if(boolPetrify[s])
			{
				boolPetrify[e]  = true;
				boolStatus[e] = true;
			}
			else if(boolCurse[s])
			{
				boolCurse[e]  = true;
				boolStatus[e] = true;
			}
			else if(boolDeaf[s])
			{
				boolDeaf[e]  = true;
				boolStatus[e] = true;
			}
			else if(boolBlind[s])
			{
				boolBlind[e]  = true;
				boolStatus[e] = true;
			}
		}
		
		break;
		
		case wings.sophix:
		if(!boolDead[0] && unitHp_curr[0] > 0)
		{
		set_obj_battle_dmg_2((unitHp[0]-unitHp_curr[0]), 0, spells.heal, 1);
		unitHp_curr[0] = unitHp[0];
		
		}
		
		if(!boolDead[1] && unitHp_curr[1] > 0)
		{
		set_obj_battle_dmg_2((unitHp[1]-unitHp_curr[1]), 1, spells.heal, 1);
		unitHp_curr[1] = unitHp[1];
		}
		
		if(!boolDead[2] && unitHp_curr[2] > 0)
		{
		set_obj_battle_dmg_2((unitHp[2]-unitHp_curr[2]), 2, spells.heal, 1);
		unitHp_curr[2] = unitHp[2];
		}
		break;
		
		case wings.cosmix:
		
		boolReflect[0] = true;
		reflectStat[0] = 1;
		
		boolReflect[1] = true;
		reflectStat[1] = 1;
		
		boolReflect[2] = true;
		reflectStat[2] = 1;
		break;
		
		case wings.onyrix:
		
		var dmg = 1;
		dmg = (2 * unitLevel[s] / 5 + 2) * unitMag[s] * (200) / unitDef[e] /20;
		if(boolShield[e])
			dmg -= dmg*shieldStat[e];
		if(boolDefend[e])
			dmg /= 2;
		dmg *= dmgMult;
		dmg = round(dmg);
			
		set_obj_battle_dmg_2(dmg, e, spells.attack, 1);
			
		unitHp_curr[e] -= dmg;
		if(unitHp_curr[e] < 0)
		{
			if(boolDefend[e] || boolReflect[e] || boolShield[e])
			{
				unitHp_curr[e] = 1;
			}
			else
			{
				boolDead[e] = true;
				unitHp_curr[e] = 0;
			}
		}
			
		if(boolReflect[e])
		{
			unitHp_curr[s] -= dmg;
			if(unitHp_curr[s] < 0)
			{
				boolDead[s] = true;
				unitHp_curr[s] = 0;
			}
		}
		
		statMagUp[0] *= 2;
		statSklUp[0] *= 2;
		statSpdUp[0] *= 2;
		statDefUp[0] *= 2;
		set_obj_battle_dmg_2(0, 0, spells.all_up, 1);
		
		statMagUp[1] *= 2;
		statSklUp[1] *= 2;
		statSpdUp[1] *= 2;
		statDefUp[1] *= 2;
		set_obj_battle_dmg_2(0, 1, spells.all_up, 1);
		
		statMagUp[2] *= 2;
		statSklUp[2] *= 2;
		statSpdUp[2] *= 2;
		statDefUp[2] *= 2;
		set_obj_battle_dmg_2(0, 2, spells.all_up, 1);
		
		break;
		case wings.bloomix:
		
		var dmg = 1;
		dmg = (2 * unitLevel[s] / 5 + 2) * unitMag[s] * (400) /20;
		dmg *= dmgMult;
		dmg = round(dmg);
			
		set_obj_battle_dmg_2(dmg, e, spells.attack, 1);
			
		unitHp_curr[e] -= dmg;
		if(unitHp_curr[e] < 0)
		{
			boolDead[e] = true;
			unitHp_curr[e] = 0;
		}
		
		
		break;
		
		case wings.sirenix:
		
		var dmg = 1;
		dmg = (2 * unitLevel[s] / 5 + 2) * unitMag[s] * (200) / unitDef[e] /20;
		if(boolShield[e])
			dmg -= dmg*shieldStat[e];
		if(boolDefend[e])
			dmg /= 2;
		dmg *= dmgMult;
		dmg = round(dmg);
			
		set_obj_battle_dmg_2(dmg, e, spells.attack, 1);
			
		unitHp_curr[e] -= dmg;
		if(unitHp_curr[e] < 0)
		{
			if(boolDefend[e] || boolReflect[e] || boolShield[e])
			{
				unitHp_curr[e] = 1;
			}
			else
			{
				boolDead[e] = true;
				unitHp_curr[e] = 0;
			}
		}
			
		if(boolReflect[e])
		{
			unitHp_curr[s] -= dmg;
			if(unitHp_curr[s] < 0)
			{
				boolDead[s] = true;
				unitHp_curr[s] = 0;
			}
		}
		
		var ss = 1;
		switch(s)
		{
			case 0: ss = manager_students.master_student_1.power_status; break;
			case 1: ss = manager_students.master_student_2.power_status; break;
			case 2: ss = manager_students.master_student_3.power_status; break;
		}
		if(ss = spells.petrify)
		{
			boolPetrify[e]  = true;
			boolStatus[e] = true;
		}
		else if(ss = spells.curse)
		{
			boolCurse[e]  = true;
			boolStatus[e] = true;
		}
		else if(ss = spells.deaf)
		{
			boolDeaf[e]  = true;
			boolStatus[e] = true;
		}
		else if(ss = spells.blind)
		{
			boolBlind[e]  = true;
			boolStatus[e] = true;
		}
		
		break;
		
		case wings.crystalSirenix:
		
		var dmg = 1;
		dmg = (2 * unitLevel[s] / 5 + 2) * unitMag[s] * (200) / unitDef[e] /20;
		if(boolShield[e])
			dmg -= dmg*shieldStat[e];
		if(boolDefend[e])
			dmg /= 2;
		dmg *= dmgMult;
		dmg = round(dmg);
			
		set_obj_battle_dmg_2(dmg, e, spells.attack, 1);
			
		unitHp_curr[e] -= dmg;
		if(unitHp_curr[e] < 0)
		{
			if(boolDefend[e] || boolReflect[e] || boolShield[e])
			{
				unitHp_curr[e] = 1;
			}
			else
			{
				boolDead[e] = true;
				unitHp_curr[e] = 0;
			}
		}
			
		if(boolReflect[e])
		{
			unitHp_curr[s] -= dmg;
			if(unitHp_curr[s] < 0)
			{
				boolDead[s] = true;
				unitHp_curr[s] = 0;
			}
		}
		
		statMagUp[0] += 10;
		statSklUp[0] += 10;
		statSpdUp[0] += 10;
		statDefUp[0] += 10;
		set_obj_battle_dmg_2(0, 0, spells.all_up, 1);
		
		statMagUp[1] += 10;
		statSklUp[1] += 10;
		statSpdUp[1] += 10;
		statDefUp[1] += 10;
		set_obj_battle_dmg_2(0, 1, spells.all_up, 1);
		
		statMagUp[2] += 10;
		statSklUp[2] += 10;
		statSpdUp[2] += 10;
		statDefUp[2] += 10;
		set_obj_battle_dmg_2(0, 2, spells.all_up, 1);
		
		break;
		
		
		// currently incomplete
		case wings.butterflix:
		
		var dmg = 1;
		if(obj_battle_feildElement.spr_field = -1)
			dmg = (2 * unitLevel[s] / 5 + 2) * unitMag[s] * (200) / unitDef[e] /20;
		else
			dmg = (2 * unitLevel[s] / 5 + 2) * unitMag[s] * (300) / unitDef[e] /20;
		if(boolShield[e])
			dmg -= dmg*shieldStat[e];
		if(boolDefend[e])
			dmg /= 2;
		dmg *= dmgMult;
		dmg = round(dmg);
			
		set_obj_battle_dmg_2(dmg, e, spells.attack, 1);
			
		unitHp_curr[e] -= dmg;
		if(unitHp_curr[e] < 0)
		{
			if(boolDefend[e] || boolReflect[e] || boolShield[e])
			{
				unitHp_curr[e] = 1;
			}
			else
			{
				boolDead[e] = true;
				unitHp_curr[e] = 0;
			}
		}
			
		if(boolReflect[e])
		{
			unitHp_curr[s] -= dmg;
			if(unitHp_curr[s] < 0)
			{
				boolDead[s] = true;
				unitHp_curr[s] = 0;
			}
		}
		
		break;
		
		case wings.enchantix:
		
		unitHp_curr[0] = unitHp[0];
		boolDead[0] = false;
		boolStatus[0] = false; 
		boolPetrify[0] = false; boolPetrifyOn[0] = false;
		boolCurse[0] = false; boolCurseMult[0] = 1;
		boolDeaf[0] = false; boolDeafOn[0] = false;
		boolBlind[0] = false; boolBlindOn[0] = false;
		set_obj_battle_dmg_2((unitHp[0]-unitHp_curr[0]), 0, spells.heal, 1);
		
		unitHp_curr[1] = unitHp[1];
		boolDead[1] = false;
		boolStatus[1] = false; 
		boolPetrify[1] = false; boolPetrifyOn[1] = false;
		boolCurse[1] = false; boolCurseMult[1] = 1;
		boolDeaf[1] = false; boolDeafOn[1] = false;
		boolBlind[1] = false; boolBlindOn[1] = false;
		set_obj_battle_dmg_2((unitHp[1]-unitHp_curr[1]), 0, spells.heal, 1);
		
		unitHp_curr[2] = unitHp[2];
		boolDead[2] = false;
		boolStatus[2] = false; 
		boolPetrify[2] = false; boolPetrifyOn[2] = false;
		boolCurse[2] = false; boolCurseMult[2] = 1;
		boolDeaf[2] = false; boolDeafOn[2] = false;
		boolBlind[2] = false; boolBlindOn[2] = false;
		set_obj_battle_dmg_2((unitHp[2]-unitHp_curr[2]), 0, spells.heal, 1);
		
		break;
		
		
		
		case wings.tynix:
		
		boolReflect[0] = true;
		reflectStat[0] = 3;
		
		boolReflect[1] = true;
		reflectStat[1] = 3;
		
		boolReflect[2] = true;
		reflectStat[2] = 3;
		
		break;
		
		case wings.believix:
		
		// idk, for now do random
		var i = irandom(14)
		battle_special(i,s,e);
		
		
		break;
	}
	}
}