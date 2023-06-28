///@description battle_attack
///@arg attacker

function battle_attack(argument0)
{
	
	var num = argument0;
	var enmy = manager_battle_remix.unitTarget[num];
	var spl = manager_battle_remix.battleSpells[num];
	var grid = manager_spells.player_spells;
	
	var dmgMult = 1;

	
	switch(grid[# spl, 1])
	{
		// basic attack
		case spells.attack:
		show_debug_message("ATTACK");
		with(manager_battle_remix)
		{
			var dmg = 1;
			dmg = (2 * unitLevel[num] / 5 + 2) * unitMag[num] * (grid[# spl, 2]*100) / unitDef[enmy] /20;
			if(boolShield[enmy])
				dmg -= dmg*shieldStat[enmy];
			if(boolDefend[enmy])
				dmg /= 2;
			dmg *= dmgMult;
			
			dmg = set_battle_field_effect_nova(dmg);
			dmg = set_battle_field_effect_bbs(dmg, grid[# spl, 5]);
			
			dmg = set_battle_element_effective(dmg,grid[# spl, 5], unitType1[enmy], unitType2[enmy],num);
			dmg = set_battle_dmg_item(dmg, num, grid[# spl, 5]);
			
			dmg = round(dmg);
			
			set_obj_battle_dmg(dmg, enmy, spl, 1);
			
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
		
		set_battle_fieldElement(spl);
		break;
		
		// heal
		case spells.heal:
		show_debug_message("HEAL");
		with(manager_battle_remix)
		{
			
			if(
			(obj_battle_feildElement.spr_field == fieldElement.stardust && num != 3)
			|| check_equip_status_heal(num))
			{
				
				var heal_0 = 1;
				heal_0 = unitHp[0] * grid[# spl, 2];
				heal_0 = set_battle_buff_heal(heal_0, num, 0);
				heal_0 = round(heal_0);
				set_obj_battle_dmg(heal_0, 0, spl, 1);
				unitHp_curr[0] += heal_0;
				if(unitHp_curr[0] > unitHp[0])
					unitHp_curr[0] = unitHp[0];
				
				var heal_1 = 1;
				heal_1 = unitHp[1] * grid[# spl, 2];
				heal_1 = set_battle_buff_heal(heal_1, num, 1);
				heal_1 = round(heal_1);
				set_obj_battle_dmg(heal_1, 1, spl, 1);
				unitHp_curr[1] += heal_1;
				if(unitHp_curr[1] > unitHp[1])
					unitHp_curr[1] = unitHp[1];
				
				var heal_2 = 1;
				heal_2 = unitHp[2] * grid[# spl, 2];
				heal_2 = set_battle_buff_heal(heal_2, num, 2);
				heal_2 = round(heal_2);
				set_obj_battle_dmg(heal_2, 2, spl, 1);
				unitHp_curr[2] += heal_2;
				if(unitHp_curr[2] > unitHp[2])
					unitHp_curr[2] = unitHp[2];
					
				if(check_equip_status_heal(num))
				{
					statMagUp[num] += 1;
					statSklUp[num] += 1;
					statSpdUp[num] += 1;
					statDefUp[num] += 1;
				}

			}
			else
			{
			
			var heal = 1;
			heal = unitHp[enmy] * grid[# spl, 2];
			if(num == 4)
				heal /= 4;
			heal = set_battle_buff_heal(heal, num, enmy);
			heal = round(heal);
			set_obj_battle_dmg(heal, enmy, spl, 1);
			unitHp_curr[enmy] += heal;
			if(unitHp_curr[enmy] > unitHp[enmy])
				unitHp_curr[enmy] = unitHp[enmy];

				
			if(obj_battle_feildElement.spr_field == fieldElement.refresh)
			{
				boolStatus[enmy] = false;
				boolPetrify[enmy] = false;
				boolCurse[enmy] = false;
				boolBlind[enmy] = false;
				boolDeaf[enmy] = false;
				boolPetrifyOn[enmy] = false;
				boolCurseMult[enmy] = 1;
				boolBlindOn[enmy] = false;
				boolDeafOn[enmy] = false;
			}
			
			}
				
		}
		break;
		
		// shield
		case spells.sheild:
		show_debug_message("SHIELD");
		with(manager_battle_remix)
		{
			
			var shd = set_battle_buff_shield(num);
			if(obj_battle_feildElement.spr_field == fieldElement.stardust
			&& num != 3)
			{
				boolShield[0] = true;
				shieldStat[0] = grid[# spl,2] *shd;
				boolShield[1] = true;
				shieldStat[1] = grid[# spl,2] *shd;
				boolShield[2] = true;
				shieldStat[2] = grid[# spl,2] *shd;
			}
			else
			{
				boolShield[num] = true;
				shieldStat[num] = grid[# spl,2] *shd;
				if(obj_battle_feildElement.spr_field == fieldElement.mettalic)
				{
					boolReflect[num] = true;
					reflectStat[num] = grid[# spl,2];
				}
			}
		}
		break;
		
		// reflect
		case spells.reflect:
		show_debug_message("REFLECT");
		with(manager_battle_remix)
		{
			if(obj_battle_feildElement.spr_field == fieldElement.stardust
			&& num != 3)
			{
				boolReflect[0] = true;
				reflectStat[0] = grid[# spl,2];
				boolReflect[1] = true;
				reflectStat[1] = grid[# spl,2];
				boolReflect[2] = true;
				reflectStat[2] = grid[# spl,2];
				
				if(check_equip_reflect(num))
				{
					reflectStat[0] = 2;
					reflectStat[1] = 2;
					reflectStat[2] = 2;
				}
			}
			else
			{
				boolReflect[num] = true;
				reflectStat[num] = grid[# spl,2];
				if(check_equip_reflect(num))
				{
					reflectStat[num] = 2;
				}
			}
		}
		break;
		
		// charge
		case spells.charge_attack:
		show_debug_message("CHARGE");
		with(manager_battle_remix)
		{
			var dmg = 1;
			dmg = (2 * unitLevel[num] / 5 + 2) * unitMag[num] * (grid[# spl, 2]*100) / unitDef[enmy] /20;
			dmg *= dmgMult;
			
			dmg = set_battle_field_effect_nova(dmg);
			dmg = set_battle_field_effect_bbs(dmg, grid[# spl, 5]);
			
			dmg = set_battle_element_effective(dmg,grid[# spl, 5], unitType1[enmy], unitType2[enmy],num);
			dmg = set_battle_dmg_item(dmg, num, grid[# spl, 5]);
			
			dmg = round(dmg);
			
			set_obj_battle_dmg(dmg, enmy, spl, 1);
			
			unitHp_curr[enmy] -= dmg;
			if(unitHp_curr[enmy] < 0)
			{
				boolDead[enmy] = true;
				unitHp_curr[enmy] = 0;
			}
			
		}
		
		set_battle_fieldElement(spl);
		break;
		
		// charge+
		case spells.charge_plus_hp:
		show_debug_message("CHARGE+");
		with(manager_battle_remix)
		{
			var dmg = 1;
			dmg = (2 * unitLevel[num] / 5 + 2) * unitMag[num] * (grid[# spl, 2]*100) / unitDef[enmy] /20;
			dmg += unitHp[num];
			dmg *= dmgMult;
			
			dmg = set_battle_field_effect_nova(dmg);
			dmg = set_battle_field_effect_bbs(dmg, grid[# spl, 5]);
			
			dmg = set_battle_element_effective(dmg,grid[# spl, 5], unitType1[enmy], unitType2[enmy],num);
			dmg = set_battle_dmg_item(dmg, num, grid[# spl, 5]);
			
			dmg = round(dmg);
			
			set_obj_battle_dmg(dmg, enmy, spl, 1);
			
			unitHp_curr[enmy] -= dmg;
			if(unitHp_curr[enmy] < 0)
			{
				boolDead[enmy] = true;
				unitHp_curr[enmy] = 0;
			}
		}
		
		set_battle_fieldElement(spl);
		break;
		
		// multi attack
		case spells.multi_attack:
		show_debug_message("MULTI ATTACK");
		with(manager_battle_remix)
		{
			var dmg = 1;
			dmg = (2 * unitLevel[num] / 5 + 2) * unitMag[num] * (grid[# spl, 2]*100) / unitDef[enmy] /20;
			if(boolShield[enmy])
				dmg -= dmg*shieldStat[enmy];
			if(boolDefend[enmy])
				dmg /= 2;
			dmg *= floor(unitSpd[num]/grid[# spl, 4]);
			dmg *= dmgMult;
			
			dmg = set_battle_field_effect_nova(dmg);
			dmg = set_battle_field_effect_bbs(dmg, grid[# spl, 5]);
			
			dmg = set_battle_element_effective(dmg,grid[# spl, 5], unitType1[enmy], unitType2[enmy],num);
			dmg = set_battle_dmg_item(dmg, num, grid[# spl, 5]);
			
			dmg = round(dmg);
			
			set_obj_battle_dmg(dmg, enmy, spl, 1);
			
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
		
		set_battle_fieldElement(spl);
		break;
		
		// double attack
		case spells.double_attack:
		show_debug_message("DOUBLE ATTACK");
		with(manager_battle_remix)
		{
			var dmg = 1;
			dmg = (2 * unitLevel[num] / 5 + 2) * unitMag[num] * (grid[# spl, 2]*100) / unitDef[enmy] /20;
			if(boolShield[enmy])
				dmg -= dmg*shieldStat[enmy];
			if(boolDefend[enmy])
				dmg /= 2;
			dmg *= dmgMult;
			
			dmg *= 2;
			dmg = set_battle_field_effect_nova(dmg);
			dmg = set_battle_field_effect_bbs(dmg, grid[# spl, 5]);
			
			dmg = set_battle_element_effective(dmg,grid[# spl, 5], unitType1[enmy], unitType2[enmy],num);
			dmg = set_battle_dmg_item(dmg, num, grid[# spl, 5]);
			
			dmg = round(dmg);
			
			set_obj_battle_dmg(dmg, enmy, spl, 1);
			
			
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
		
		set_battle_fieldElement(spl);
		break;
		
		// whip
		case spells.whip_attack:
		show_debug_message("WHIP");
		with(manager_battle_remix)
		{
			var dmg = 1;
			dmg = (2 * unitLevel[num] / 5 + 2) * unitSkl[num] * (grid[# spl, 2]*100) / unitDef[enmy] /20;
			if(boolShield[enmy])
				dmg -= dmg*shieldStat[enmy];
			if(boolDefend[enmy])
				dmg /= 2;
			dmg *= dmgMult;

			dmg = set_battle_field_effect_nova(dmg);
			dmg = set_battle_field_effect_bbs(dmg, grid[# spl, 5]);
			
			dmg = set_battle_element_effective(dmg,grid[# spl, 5], unitType1[enmy], unitType2[enmy],num);
			dmg = set_battle_dmg_item(dmg, num, grid[# spl, 5]);
			
			dmg = round(dmg);
			
			set_obj_battle_dmg(dmg, enmy, spl, 1);
			
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
		
		set_battle_fieldElement(spl);
		break;
		
		// absorb
		case spells.absorb_attack:
		show_debug_message("ABSORB");
		with(manager_battle_remix)
		{
			var dmg = 1;
			dmg = (2 * unitLevel[num] / 5 + 2) * unitMag[num] * (grid[# spl, 2]*100) / unitDef[enmy] /20;
			if(boolShield[enmy])
				dmg -= dmg*shieldStat[enmy];
			if(boolDefend[enmy])
				dmg /= 2;
			dmg *= dmgMult;

			dmg = set_battle_field_effect_nova(dmg);
			dmg = set_battle_field_effect_bbs(dmg, grid[# spl, 5]);
			
			dmg = set_battle_element_effective(dmg,grid[# spl, 5], unitType1[enmy], unitType2[enmy],num);
			dmg = set_battle_dmg_item(dmg, num, grid[# spl, 5]);
			
			dmg = round(dmg);
			
			set_obj_battle_dmg(dmg, enmy, spl, 1);
			
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
			
			var dmg_2 = 1;
			dmg_2 = (2 * unitLevel[num] / 5 + 2) * unitMag[num] * (grid[# spl, 4]*100) / unitDef[enmy] /20;
			if(boolShield[enmy])
				dmg_2 -= dmg_2*shieldStat[enmy];
			if(boolDefend[enmy])
				dmg_2 /= 2;
			dmg_2 *= dmgMult;
			dmg_2 = set_battle_element_effective(dmg_2,grid[# spl, 5], unitType1[enmy], unitType2[enmy],num);
			if(check_equip_absorb(num))
				dmg_2 *= 1.5;
			dmg_2 = round(dmg_2);
			set_obj_battle_dmg(dmg_2, num, spl, 1);
			unitHp_curr[num] += dmg_2;
			if(unitHp_curr[num] > unitHp[num])
				unitHp_curr[num] = unitHp[num];
				
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
		
		set_battle_fieldElement(spl);
		break;
		
		// instant death
		case spells.instant_death:
		show_debug_message("INSTANT DEATH");
		with(manager_battle_remix)
		{
			var i = irandom(99);
			var check = 100*grid[# spl, 2];
			check = set_battle_buff_instaKill(check, num);
			if(i <= check)
			{
				if(!manager_students.boss_battle)
				{
					unitHp_curr[enmy] = 0;
					boolDead[enmy] = true;
					boolInstaDeath[enmy] = true;
					set_obj_battle_dmg(0, enmy, spl, 1);
				}
			}
		}
		
		set_battle_fieldElement(spl);
		break;
		
		// heal status
		case spells.heal_status:
		show_debug_message("HEAL STATUS");
		// NOTE does not appear as a primary effect
		with(manager_battle_remix)
		{
			if(obj_battle_feildElement.spr_field == fieldElement.stardust
			&& num != 3)
			{
				if(boolStatus[0] == true)
				{
					boolStatus[0] = false;
					boolPetrify[0] = false;
					boolCurse[0] = false;
					boolBlind[0] = false;
					boolDeaf[0] = false;
					boolPetrifyOn[0] = false;
					boolCurseMult[0] = 1;
					boolBlindOn[0] = false;
					boolDeafOn[0] = false;
				}
				if(boolStatus[1] == true)
				{
					boolStatus[1] = false;
					boolPetrify[1] = false;
					boolCurse[1] = false;
					boolBlind[1] = false;
					boolDeaf[1] = false;
					boolPetrifyOn[1] = false;
					boolCurseMult[1] = 1;
					boolBlindOn[1] = false;
					boolDeafOn[1] = false;
				}
				if(boolStatus[2] == true)
				{
					boolStatus[2] = false;
					boolPetrify[2] = false;
					boolCurse[2] = false;
					boolBlind[2] = false;
					boolDeaf[2] = false;
					boolPetrifyOn[2] = false;
					boolCurseMult[2] = 1;
					boolBlindOn[2] = false;
					boolDeafOn[2] = false;
				}
			}
			else
			{
				if(boolStatus[enmy] == true)
				{
					boolStatus[enmy] = false;
					boolPetrify[enmy] = false;
					boolCurse[enmy] = false;
					boolBlind[enmy] = false;
					boolDeaf[enmy] = false;
					boolPetrifyOn[enmy] = false;
					boolCurseMult[enmy] = 1;
					boolBlindOn[enmy] = false;
					boolDeafOn[enmy] = false;
				}
			}
			
		}
		break;
		
		// revive
		case spells.revive:
		show_debug_message("REVIVE");
		
		var heal = round(unitHp[enmy]);
		unitHp[enmy] = heal;
		boolDead[enmy] = false;
		
		break;
		
		// mag up
		case spells.mag_up:
		show_debug_message("MAG UP");
		with(manager_battle_remix)
		{
			statMagUp[enmy] += grid[# spl, 2];
			set_obj_battle_dmg(0, enmy, spl, 1);
		}
		break;
		
		// def up
		case spells.def_up:
		show_debug_message("DEF UP");
		with(manager_battle_remix)
		{
			statDefUp[enmy] += grid[# spl, 2];
			set_obj_battle_dmg(0, enmy, spl, 1);
		}
		break;
		
		// skl up
		case spells.skl_up:
		show_debug_message("SKL UP");
		with(manager_battle_remix)
		{
			statSklUp[enmy] += grid[# spl, 2];
			set_obj_battle_dmg(0, enmy, spl, 1);
		}
		break;
		
		// spd up
		case spells.spd_up:
		show_debug_message("SPD UP");
		with(manager_battle_remix)
		{
			statSpdUp[enmy] += grid[# spl, 2];
			set_obj_battle_dmg(0, enmy, spl, 1);
		}
		break;
		
		// all up
		case spells.all_up:
		show_debug_message("ALL UP");
		with(manager_battle_remix)
		{
			statMagUp[enmy] += grid[# spl, 2];
			statSklUp[enmy] += grid[# spl, 2];
			statSpdUp[enmy] += grid[# spl, 2];
			statDefUp[enmy] += grid[# spl, 2];
			set_obj_battle_dmg(0, enmy, spl, 1);
		}
		break;
		
		// double buff
		case spells.double_buff:
		show_debug_message("DOUBLE BUFF");
		with(manager_battle_remix)
		{
			statMagUp[enmy] *= 2;
			statSklUp[enmy] *= 2;
			statSpdUp[enmy] *= 2;
			statDefUp[enmy] *= 2;
		}
		break;
		
		// steal buff
		case spells.steal_buff:
		show_debug_message("STEAL BUFF");
		with(manager_battle_remix)
		{
			if(statMagUp[enmy] >= 0)
			{
				statMagUp[num] += statMagUp[enmy];
				statMagUp[enmy] = 0;
			}
			if(statDefUp[enmy] >= 0)
			{
				statDefUp[num] += statDefUp[enmy];
				statDefUp[enmy] = 0;
			}
			if(statSklUp[enmy] >= 0)
			{
				statSklUp[num] += statSklUp[enmy];
				statSklUp[enmy] = 0;
			}
			if(statSpdUp[enmy] >= 0)
			{
				statSpdUp[num] += statSpdUp[enmy];
				statSpdUp[enmy] = 0;
			}
		}
		break;
		
		// mag down
		case spells.mag_down:
		show_debug_message("MAG DOWN");
		with(manager_battle_remix)
		{
			if(obj_battle_feildElement.spr_field != fieldElement.void
			&& check_status_immune(enmy))
			{
			statMagDown[enmy] += grid[# spl, 2];
			set_obj_battle_dmg(0, enmy, spl, 1);
			}
		}
		break;
		
		// def down
		case spells.def_down:
		show_debug_message("DEF DOWN");
		with(manager_battle_remix)
		{
			if(obj_battle_feildElement.spr_field != fieldElement.void
			&& check_status_immune(enmy))
			{
			statDefDown[enmy] += grid[# spl, 2];
			set_obj_battle_dmg(0, enmy, spl, 1);
			}
		}
		break;
		
		// skl down
		case spells.skl_down:
		show_debug_message("SKL DOWN");
		with(manager_battle_remix)
		{
			if(obj_battle_feildElement.spr_field != fieldElement.void
			&& check_status_immune(enmy))
			{
			statSklDown[enmy] += grid[# spl, 2];
			set_obj_battle_dmg(0, enmy, spl, 1);
			}
		}
		break;
		
		// spd down
		case spells.spd_down:
		show_debug_message("SPD DOWN");
		with(manager_battle_remix)
		{
			if(obj_battle_feildElement.spr_field != fieldElement.void
			&& check_status_immune(enmy))
			{
			statSpdDown[enmy] += grid[# spl, 2];
			set_obj_battle_dmg(0, enmy, spl, 1);
			}
		}
		break;
		
		// all down
		case spells.all_down:
		show_debug_message("ALL DOWN");
		with(manager_battle_remix)
		{
			if(obj_battle_feildElement.spr_field != fieldElement.void
			&& check_status_immune(enmy))
			{
			statMagDown[enmy] += grid[# spl, 2];
			statDefDown[enmy] += grid[# spl, 2];
			statSklDown[enmy] += grid[# spl, 2];
			statSpdDown[enmy] += grid[# spl, 2];
			set_obj_battle_dmg(0, enmy, spl, 1);
			}
		}
		break;
		
		// blind
		case spells.blind:
		show_debug_message("BLIND");
		with(manager_battle_remix)
		{
			var i = irandom(100);
			var status_check = (100*grid[# spl, 2]+unitSkl[num])/2;
			status_check = set_battle_status_res(status_check, enmy, grid[# spl, 1]);
			if(boolStatus[enmy] == false && i <= status_check)
			{
				boolBlind[enmy]  = true;
				boolStatus[enmy] = true;
			}
		}
		
		set_battle_fieldElement(spl);
		break;
		
		// deaf
		case spells.deaf:
		show_debug_message("DEAF");
		with(manager_battle_remix)
		{
			var i = irandom(100);
			var status_check = (100*grid[# spl, 2]+unitSkl[num])/2;
			status_check = set_battle_status_res(status_check, enmy, grid[# spl, 1]);
			if(boolStatus[enmy] == false && i <= status_check)
			{
				boolDeaf[enmy]  = true;
				boolStatus[enmy] = true;
			}
		}
		
		set_battle_fieldElement(spl);
		break;
		
		// petrify
		case spells.petrify:
		show_debug_message("PETRIFY");
		with(manager_battle_remix)
		{
			var i = irandom(100);
			var status_check = (100*grid[# spl, 2]+unitSkl[num])/2;
			status_check = set_battle_status_res(status_check, enmy, grid[# spl, 1]);
			if(boolStatus[enmy] == false && i <= status_check)
			{
				boolPetrify[enmy]  = true;
				boolStatus[enmy] = true;
			}
		}
		
		set_battle_fieldElement(spl);
		break;
		
		// curse
		case spells.curse:
		show_debug_message("CURSE");
		with(manager_battle_remix)
		{
			var i = irandom(100);
			var status_check = (100*grid[# spl, 2]+unitSkl[num])/2;
			status_check = set_battle_status_res(status_check, enmy, grid[# spl, 1]);
			if(boolStatus[enmy] == false && i <= status_check)
			{
				boolCurse[enmy]  = true;
				boolStatus[enmy] = true;
			}
		}
		
		set_battle_fieldElement(spl);
		break;
		
		// double curse
		case spells.double_curse:
		show_debug_message("DOUBLE CURSE");
		with(manager_battle_remix)
		{
			if(boolCurse[enmy] && boolStatus[enmy])
			{
				boolCurseMult[enmy] *= 2;
			}
		}
		
		set_battle_fieldElement(spl);
		break;
		
		// lose hp
		case spells.lose_hp:
		show_debug_message("LOSE HP");
		
		break;
		
		// hp phase down
		case spells.hp_phase_down:
		show_debug_message("HP PHASE DOWN");
		// ???
		with(manager_battle_remix)
		{
			unitHp_curr[num] /= 2;
			unitHp_curr[num] = round(unitHp_curr[num]);
			if(unitHp_curr[num] < 0)
			{
				boolDead[num] = true;
				unitHp_curr[num] = 0;
			}
		}
		break;
		
		// heal party
		case spells.heal_party:
		show_debug_message("HEAL PARTY");
		with(manager_battle_remix)
		{
			var heal_0 = 1;
			heal_0 = unitHp[0] * grid[# spl, 2];
			heal_0 = set_battle_buff_heal(heal_0, num, 0);
			heal_0 = round(heal_0);
			set_obj_battle_dmg(heal_0, 0, spl, 1);
			unitHp_curr[0] += heal_0;
			if(unitHp_curr[0] > unitHp[0])
				unitHp_curr[0] = unitHp[0];
				
			var heal_1 = 1;
			heal_1 = unitHp[1] * grid[# spl, 2];
			heal_1 = set_battle_buff_heal(heal_1, num, 1);
			heal_1 = round(heal_1);
			set_obj_battle_dmg(heal_1, 1, spl, 1);
			unitHp_curr[1] += heal_1;
			if(unitHp_curr[1] > unitHp[1])
				unitHp_curr[1] = unitHp[1];
				
			var heal_2 = 1;
			heal_2 = unitHp[2] * grid[# spl, 2];
			heal_2 = set_battle_buff_heal(heal_2, num, 2);
			heal_2 = round(heal_2);
			set_obj_battle_dmg(heal_2, 2, spl, 1);
			unitHp_curr[2] += heal_2;
			if(unitHp_curr[2] > unitHp[2])
				unitHp_curr[2] = unitHp[2];
				
			
			if(obj_battle_feildElement.spr_field == fieldElement.refresh)
			{
			if(boolStatus[0] == true)
			{
				boolStatus[0] = false;
				boolPetrify[0] = false;
				boolCurse[0] = false;
				boolBlind[0] = false;
				boolDeaf[0] = false;
				boolPetrifyOn[0] = false;
				boolCurseMult[0] = 1;
				boolBlindOn[0] = false;
				boolDeafOn[0] = false;
			}
			if(boolStatus[1] == true)
			{
				boolStatus[1] = false;
				boolPetrify[1] = false;
				boolCurse[1] = false;
				boolBlind[1] = false;
				boolDeaf[1] = false;
				boolPetrifyOn[1] = false;
				boolCurseMult[1] = 1;
				boolBlindOn[1] = false;
				boolDeafOn[1] = false;
			}
			if(boolStatus[2] == true)
			{
				boolStatus[2] = false;
				boolPetrify[2] = false;
				boolCurse[2] = false;
				boolBlind[2] = false;
				boolDeaf[2] = false;
				boolPetrifyOn[2] = false;
				boolCurseMult[2] = 1;
				boolBlindOn[2] = false;
				boolDeafOn[2] = false;
			}
			}
				
		}
		break;
		
		// heal enemy
		case spells.heal_enemy:
		show_debug_message("HEAL ENEMY");
		with(manager_battle_remix)
		{
			var heal = 1;
			heal = unitHp[enmy] * grid[# spl, 2];
			if(num == 4)
				heal /= 4;
			heal = set_battle_buff_heal(heal, num, enmy);
			heal = round(heal);
			set_obj_battle_dmg(heal, enmy, spl, 1);
			
			unitHp_curr[enmy] += heal;
			if(unitHp_curr[enmy] > unitHp[enmy])
				unitHp_curr[enmy] = unitHp[enmy];
				
				
		}
		break;
		
		// sacrifice
		case spells.sacrifice:
		show_debug_message("ENCHANTIX SACRIFICE");
		with(manager_battle_remix)
		{
			unitHp_curr[num] = 1;
			
			statMagUp[num] += grid[# spl, 2];
			statDefUp[num] += grid[# spl, 2];
			statSklUp[num] += grid[# spl, 2];
			statSpdUp[num] += grid[# spl, 2];
			
			set_obj_battle_dmg(0, num, spl, 1);
		}
		break;
		
		case spells.sheild_all:
		show_debug_message("SHIELD ALL");
		with(manager_battle_remix)
		{
			
			var shd = set_battle_buff_shield(num);
			boolShield[0] = true;
			shieldStat[0] = grid[# spl,2] *shd;
			boolShield[1] = true;
			shieldStat[1] = grid[# spl,2] *shd;
			boolShield[2] = true;
			shieldStat[2] = grid[# spl,2] *shd;
			if(obj_battle_feildElement.spr_field == fieldElement.mettalic)
			{
				boolReflect[0] = true;
				reflectStat[0] = grid[# spl,2];
				boolReflect[1] = true;
				reflectStat[1] = grid[# spl,2];
				boolReflect[2] = true;
				reflectStat[2] = grid[# spl,2];
			}
		}
		break;
		
	}
	
	// secondary
	if(grid[# spl, 1] != -1)
	{
		switch(grid[# spl, 3])
		{
		
		// heal
		case spells.heal:
		show_debug_message("HEAL");
		with(manager_battle_remix)
		{
			var heal = 1;
			heal = unitHp[num] * grid[# spl, 4];
			if(num == 4)
				heal /= 4;
			heal = set_battle_buff_heal(heal, num, enmy);
			heal = round(heal);
			set_obj_battle_dmg(heal, enmy, spl, 3);
			
			unitHp_curr[num] += heal;
			if(unitHp_curr[num] > unitHp[num])
				unitHp_curr[num] = unitHp[num];
				
				
		}
		break;
		
		// instant death
		case spells.instant_death:
		show_debug_message("INSTANT DEATH");
		with(manager_battle_remix)
		{
			var i = irandom(99);
			var check = 100*grid[# spl, 2];
			check = set_battle_buff_instaKill(check, num);
			if(i <= check)
			{
				if(!manager_students.boss_battle)
				{
					unitHp_curr[enmy] = 0;
					boolDead[enmy] = true;
					boolInstaDeath[enmy] = true;
					set_obj_battle_dmg(0, enmy, spl, 3);
				}
			}
		}
		break;
		
		// heal status
		case spells.heal_status:
		show_debug_message("HEAL STATUS");
		with(manager_battle_remix)
		{
			if(boolStatus[enmy] == true)
			{
				boolStatus[enmy] = false;
				boolPetrify[enmy] = false;
				boolCurse[enmy] = false;
				boolBlind[enmy] = false;
				boolDeaf[enmy] = false;
				boolPetrifyOn[enmy] = false;
				boolCurseMult[enmy] = 1;
				boolBlindOn[enmy] = false;
				boolDeafOn[enmy] = false;
			}
		}
		break;
		
		// mag up
		case spells.mag_up:
		show_debug_message("MAG UP");
		with(manager_battle_remix)
		{
			if(grid[# spl, 6])
			{
				statMagUp[num] += grid[# spl, 4];
				set_obj_battle_dmg(0, num, spl, 3);
			}
			else
			{
				statMagUp[enmy] += grid[# spl, 4];
				set_obj_battle_dmg(0, enmy, spl, 3);
			}
		}
		break;
		
		// def up
		case spells.def_up:
		show_debug_message("DEF UP");
		with(manager_battle_remix)
		{
			if(grid[# spl, 6])
			{
				statDefUp[num] += grid[# spl, 4];
				set_obj_battle_dmg(0, num, spl, 3);
			}
			else
			{
				statDefUp[enmy] += grid[# spl, 4];
				set_obj_battle_dmg(0, enmy, spl, 3);
			}
		}
		break;
		
		// skl up
		case spells.skl_up:
		show_debug_message("SKL UP");
		with(manager_battle_remix)
		{
			if(grid[# spl, 6])
			{
				statSklUp[num] += grid[# spl, 4];
				set_obj_battle_dmg(0, num, spl, 3);
			}
			else
			{
				statSklUp[enmy] += grid[# spl, 4];
				set_obj_battle_dmg(0, enmy, spl, 3);
			}
		}
		break;
		
		// spd up
		case spells.spd_up:
		show_debug_message("SPD UP");
		with(manager_battle_remix)
		{
			if(grid[# spl, 6])
			{
				statSpdUp[num] += grid[# spl, 4];
				set_obj_battle_dmg(0, num, spl, 3);
			}
			else
			{
				statSpdUp[enmy] += grid[# spl, 4];
				set_obj_battle_dmg(0, enmy, spl, 3);
			}
		}
		break;
		
		// all up
		case spells.all_up:
		show_debug_message("ALL UP");
		with(manager_battle_remix)
		{
			if(grid[# spl, 6])
			{
				statMagUp[num] += grid[# spl, 4];
				statDefUp[num] += grid[# spl, 4];
				statSklUp[num] += grid[# spl, 4];
				statSpdUp[num] += grid[# spl, 4];
				set_obj_battle_dmg(0, num, spl, 3);
			}
			else
			{
				statMagUp[enmy] += grid[# spl, 4];
				statDefUp[enmy] += grid[# spl, 4];
				statSklUp[enmy] += grid[# spl, 4];
				statSpdUp[enmy] += grid[# spl, 4];
				set_obj_battle_dmg(0, enmy, spl, 3);
			}
		}
		break;
		
		// mag down
		case spells.mag_down:
		show_debug_message("MAG DOWN");
		with(manager_battle_remix)
		{
			if(check_status_immune(enmy))
			{
			statMagDown[enmy] += grid[# spl, 4];
			set_obj_battle_dmg(0, enmy, spl, 3);
			}
		}
		break;
		
		// def down
		case spells.def_down:
		show_debug_message("DEF DOWN");
		with(manager_battle_remix)
		{
			if(check_status_immune(enmy))
			{
			statDefDown[enmy] += grid[# spl, 4];
			set_obj_battle_dmg(0, enmy, spl, 3);
			}
		}
		break;
		
		// skl down
		case spells.skl_down:
		show_debug_message("SKL DOWN");
		with(manager_battle_remix)
		{
			if(check_status_immune(enmy))
			{
			statMagDown[enmy] += grid[# spl, 4];
			set_obj_battle_dmg(0, enmy, spl, 3);
			}
		}
		break;
		
		// spd down
		case spells.spd_down:
		show_debug_message("SPD DOWN");
		with(manager_battle_remix)
		{
			if(check_status_immune(enmy))
			{
			statSpdDown[enmy] += grid[# spl, 4];
			set_obj_battle_dmg(0, enmy, spl, 3);
			}
		}
		break;
		
		// all down
		case spells.all_down:
		show_debug_message("ALL DOWN");
		with(manager_battle_remix)
		{
			if(check_status_immune(enmy))
			{
			statMagDown[enmy] += grid[# spl, 4];
			statDefDown[enmy] += grid[# spl, 4];
			statSklDown[enmy] += grid[# spl, 4];
			statSpdDown[enmy] += grid[# spl, 4];
			set_obj_battle_dmg(0, enmy, spl, 3);
			}
		}
		break;
		
		// blind
		case spells.blind:
		show_debug_message("BLIND");
		with(manager_battle_remix)
		{
			var i = irandom(100);
			var status_check = (100*grid[# spl, 2]+unitSkl[num])/2;
			status_check = set_battle_status_res(status_check, enmy, grid[# spl, 3]);
			if(boolStatus[enmy] == false && i <= status_check)
			{
				boolBlind[enmy]  = true;
				boolStatus[enmy] = true;
			}
		}
		break;
		
		// deaf
		case spells.deaf:
		show_debug_message("DEAF");
		with(manager_battle_remix)
		{
			var i = irandom(100);
			var status_check = (100*grid[# spl, 2]+unitSkl[num])/2;
			status_check = set_battle_status_res(status_check, enmy, grid[# spl, 3]);
			if(boolStatus[enmy] == false && i <= status_check)
			{
				boolDeaf[enmy]  = true;
				boolStatus[enmy] = true;
			}
		}
		break;
		
		// petrify
		case spells.petrify:
		show_debug_message("PETRIFY");
		with(manager_battle_remix)
		{
			var i = irandom(100);
			var status_check = (100*grid[# spl, 2]+unitSkl[num])/2;
			status_check = set_battle_status_res(status_check, enmy, grid[# spl, 3]);
			if(boolStatus[enmy] == false && i <= status_check)
			{
				boolPetrify[enmy]  = true;
				boolStatus[enmy] = true;
			}
		}
		break;
		
		// curse
		case spells.curse:
		show_debug_message("CURSE");
		with(manager_battle_remix)
		{
			var i = irandom(100);
			var status_check = (100*grid[# spl, 2]+unitSkl[num])/2;
			status_check = set_battle_status_res(status_check, enmy, grid[# spl, 3]);
			if(boolStatus[enmy] == false && i <= status_check)
			{
				boolCurse[enmy]  = true;
				boolStatus[enmy] = true;
			}
		}
		break;
		
		// lose hp
		case spells.lose_hp:
		show_debug_message("LOSE HP");
		with(manager_battle_remix)
		{
			var heal = 1;
			heal = unitHp[enmy] * grid[# spl, 3];
			heal = round(heal);
			
			unitHp_curr[enmy] -= heal;
			if(unitHp_curr[enmy] <= 0)
				unitHp_curr[enmy] = 1;	
		}
		break;
		
		}
	}
	
	show_debug_message("BATTLE_ATTACK()*****************");
	
	// decrease MP
	if(num == 0 || num == 1 || num == 2)
	{
		if(obj_battle_feildElement.spr_field == fieldElement.stardust)
			manager_battle_remix.unitMp_curr[num] -= (grid[# spl, 7]/2);
		else
			manager_battle_remix.unitMp_curr[num] -= grid[# spl, 7];
	}
	
}