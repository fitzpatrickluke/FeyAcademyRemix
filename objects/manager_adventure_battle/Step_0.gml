if(!gate_on)
	exit;
if(boss)
	exit;

randomize();
var num = irandom(9);
var e_num = 1;
//set_enemy_num(9);
fadeIn_battle = true;

switch(room)
{
	case adventure_flowerFieldsf1:
	e_num = 10;		// 100%
	break;
	case adventure_flowerFieldsf2:
	if(num < 5)		// 50%
		e_num = 10;
	else if(num < 8)// 30%
		e_num = 11;
	else			// 20%
		e_num = 12;
	break;
	case adventure_flowerFieldsf3:
	if(num < 3)		// 30%
		e_num = 11;
	else if(num < 6)// 30%
		e_num = 12;
	else if(num < 9)// 30%
		e_num = 5;	
	else			// 10%
		e_num = 13;
	break;
	case adventure_flowerFieldsf4:
	if(num < 3)		// 30%
		e_num = 12;
	else if(num < 6)// 30%
		e_num = 5;
	else if(num < 9)// 30%
		e_num = 16;
	else			// 10%
		e_num = 13;
	break;
	case adventure_willowWoodsf1:
	if(num < 5)		// 50%
		e_num = 4;
	else if(num < 8)// 30%
		e_num = 25;
	else			// 20%
		e_num = 8;
	break;
	case adventure_willowWoodsf2:
	if(num < 4)		// 40%
		e_num = 4;
	else if(num < 7)// 30%
		e_num = 21;
	else			// 30%
		e_num = 25;
	break;
	case adventure_willowWoodsf3:
	if(num < 3)		// 30%
		e_num = 21;
	else if(num < 5)// 20%
		e_num = 25;
	else if(num < 7)// 20%
		e_num = 17;
	else if(num < 9)// 20%
		e_num = 48;
	else			// 10%
		e_num = 6;
	break;
	case adventure_willowWoodsf4:
	if(num < 3)		// 60%
		e_num = 17;
	else if(num < 6)// 30&
		e_num = 48;
	else if(num < 9)// 30%
		e_num = 7;
	else			// 10%
		e_num = 59;
	break;
	case adventure_autumnFallsf1:
	if(num < 3)		// 30%
		e_num = 81;
	else if(num < 6)// 30%
		e_num = 26;
	else if(num < 8)// 20%
		e_num = 3;
	else			// 20%
		e_num = 9;
	break;
	case adventure_autumnFallsf2:
	if(num < 2)		// 20%
		e_num = 81;
	else if(num < 4)// 20%
		e_num = 26;
	else if(num < 6)// 20%
		e_num = 3;
	else if(num < 8)// 20%
		e_num = 9;
	else if(num < 9)// 10%
		e_num = 44;
	else			// 10%
		e_num = 24;
	break;
	case adventure_autumnFallsf3:
	if(num < 1)		// 10%
		e_num = 81;
	else if(num < 3)// 20%
		e_num = 82;
	else if(num < 5)// 20%
		e_num = 3;
	else if(num < 7)// 20%
		e_num = 26;
	else if(num < 9)// 20%
		e_num = 49;
	else			// 10%
		e_num = 44;
	break;
	case adventure_autumnFallsf4:
	if(num < 4)		// 40%
		e_num = 82;
	else if(num < 7)// 30%
		e_num = 49;
	else if(num < 9)// 30%
		e_num = 57;
	else			// 10%
		e_num = 39;
	break;
	case adventure_snowflakePointf1:
	if(num < 3)		// 30%
		e_num = 52;
	else if(num < 5)// 20%
		e_num = 65;
	else if(num < 7)// 20%
		e_num = 35;
	else if(num < 9)// 20%
		e_num = 23;
	else			// 10%
		e_num = 58;
	break;
	case adventure_snowflakePointf2:
	if(num < 2)		//20%
		e_num = 27;
	else if(num < 5)//30%
		e_num = 52;
	else if(num < 7)//20%
		e_num = 58;
	else if(num < 9)//20%
		e_num = 65;
	else			//10%
		e_num = 67;
	break;
	case adventure_snowflakePointf3:
	if(num < 2)		// 20%
		e_num = 27;
	else if(num < 4)// 20%
		e_num = 28;
	else if(num < 6)// 20%
		e_num = 52;
	else if(num < 8)// 20%
		e_num = 65;
	else			// 20%
		e_num = 67;
	break;
	case adventure_snowflakePointf4:
	if(num < 8)		// 80%
		e_num = 53;
	else			// 20%
		e_num = 38;
	break;
	case adventure_sakuraStepsf1:
	if(num < 2)		// 20%
		e_num = 2;
	else if(num < 5)// 30%
		e_num = 14;
	else if(num < 6)// 10%
		e_num = 18;
	else if(num < 8)// 20%
		e_num = 22;
	else			// 20%
		e_num = 64;
	break;
	case adventure_sakuraStepsf2:
	if(num < 2)		// 20%
		e_num = 2;
	else if(num < 5)// 30%
		e_num = 14;
	else if(num < 6)// 10%
		e_num = 18;
	else if(num < 8)// 20%
		e_num = 22;
	else			// 20%
		e_num = 64;
	break;
	case adventure_sakuraStepsf3:
	if(num < 2)		// 20%
		e_num = 22;
	else if(num < 3)// 10%
		e_num = 30;
	else if(num < 5)// 20%
		e_num = 66;
	else if(num < 8)// 30%
		e_num = 69;
	else			// 20%
		e_num = 45;
	break;
	case adventure_sakuraStepsf4:
	if(num < 2)		// 20%
		e_num = 22;
	else if(num < 4)// 20%
		e_num = 66;
	else if(num < 6)// 20%
		e_num = 68;
	else if(num < 8)// 20%
		e_num = 69;
	else			// 20%
		e_num = 45;
	break;
	case adventure_feyTemplef1:
	if(num < 4)		// 40%
		e_num = 15;
	else if(num < 2)// 20%
		e_num = 19;
	else if(num < 2)// 20%
		e_num = 29;
	else			// 20%
		e_num = 31;
	break;
	case adventure_feyTemplef2:
	if(num < 3)		// 30%
		e_num = 15;
	else if(num < 6)// 30%
		e_num = 31;
	else if(num < 8)// 20%
		e_num = 42;
	else			// 20%
		e_num = 46;
	break;
	case adventure_feyTemplef3:
	if(num < 3)		// 30%
		e_num = 15;
	else if(num < 5)// 20%
		e_num = 32;
	else if(num < 8)// 30%
		e_num = 46;
	else			// 20%
		e_num = 63;
	break;
	case adventure_feyTemplef4:
	if(num < 2)		// 20%
		e_num = 15;
	else if(num < 4)// 20%
		e_num = 32;
	else if(num < 7)// 30%
		e_num = 46;
	else			// 30%
		e_num = 47;
	break;
	case adventure_ancientAbyssf1:
	if(num < 1)		// 10%
		e_num = 34;
	else if(num < 4)// 30%
		e_num = 37;
	else if(num < 7)// 30%
		e_num = 41;
	else if(num < 8)// 10%
		e_num = 74;
	else if(num < 9)// 10%
		e_num = 78;
	else			// 10%
		e_num = 84;
	break;
	case adventure_ancientAbyssf2:
	if(num < 1)		// 10%
		e_num = 34;
	else if(num < 3)// 20%
		e_num = 37;
	else if(num < 5)// 20%
		e_num = 41;
	else if(num < 6)// 10%
		e_num = 54;
	else if(num < 7)// 10%
		e_num = 61;
	else if(num < 8)// 10%
		e_num = 74;
	else if(num < 9)// 10%
		e_num = 78;
	else			// 10%
		e_num = 84;
	break;
	case adventure_ancientAbyssf3:
	if(num < 2)		// 20%
		e_num = 37;
	else if(num < 3)// 10%
		e_num = 54;
	else if(num < 4)// 10%
		e_num = 61;
	else if(num < 6)// 20%
		e_num = 62;
	else if(num < 8)// 20%
		e_num = 79;
	else			// 20%
		e_num = 84;
	break;
	case adventure_ancientAbyssf4:
	if(num < 2)		// 20%
		e_num = 37;
	else if(num < 3)// 10%
		e_num = 55;
	else if(num < 4)// 10%
		e_num = 61;
	else if(num < 6)// 20%
		e_num = 62;
	else if(num < 7)// 10%
		e_num = 77;
	else if(num < 8)// 10%
		e_num = 79;
	else			// 20%
		e_num = 84;
	break;
	case adventure_endRainbowf1:
	if(num < 1)		// 10%
		e_num = 33;
	else if(num < 4)// 30%
		e_num = 36;
	else if(num < 7)// 30%
		e_num = 40;
	else if(num < 8)// 10%
		e_num = 50;
	else if(num < 9)// 10%
		e_num = 75;
	else			// 10%
		e_num = 80;
	break;
	case adventure_endRainbowf2:
	if(num < 1)		// 10%
		e_num = 33;
	else if(num < 3)// 20%
		e_num = 36;
	else if(num < 5)// 20%
		e_num = 40;
	else if(num < 6)// 10%
		e_num = 50;
	else if(num < 7)// 10%
		e_num = 60;
	else if(num < 8)// 10%
		e_num = 70;
	else if(num < 9)// 10%
		e_num = 75;
	else			// 10%
		e_num = 80;
	break;
	case adventure_endRainbowf3:
	if(num < 2)		// 10%
		e_num = 36;
	else if(num < 4)// 20%
		e_num = 51;
	else if(num < 5)// 10%
		e_num = 60;
	else if(num < 6)// 10%
		e_num = 70;
	else if(num < 8)// 20%
		e_num = 72;
	else			// 20%
		e_num = 80;
	break;
	case adventure_endRainbowf4:
	if(num < 2)		// 20%
		e_num = 36;
	else if(num < 3)// 10%
		e_num = 51;
	else if(num < 4)// 10%
		e_num = 60;
	else if(num < 5)// 10%
		e_num = 71;
	else if(num < 7)// 20%
		e_num = 72;
	else if(num < 8)// 10%
		e_num = 76;
	else			// 20%
		e_num = 80;
	break;
}

if(!manager_students.battle_boss_on)
	manager_students.battle_enemy_num = e_num;
//set_enemy_num(e_num)
