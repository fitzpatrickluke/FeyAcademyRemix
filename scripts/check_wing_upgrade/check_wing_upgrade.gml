///@description check_wing_upgrade
///@arg class_points
///@arg wings
function check_wing_upgrade(argument0,argument1)
{
	var c = argument0;
	var w = argument1;
	var f = false;
	
	// enchantments - 0
	// botony - 1
	// mythology - 2
	// astrology - 3
	// elemtology - 4
	
	switch(w)
	{
		case wings.magix:
		f = true;
		break;
		case wings.charmix:
		if(c[2] >= 10 || c[3] >= 10)
			f = true;
		break;
		case wings.mythix:
		if(c[0] >= 10)
			f = true;
		break;
		case wings.lovix:
		if(c[1] >= 10 || c[4] >= 10)
			f = true;
		break;
		case wings.dreamix:
		if(c[3] >= 20)
			f = true;
		break;
		case wings.harmonix:
		if(c[2] >= 20)
			f = true;
		break;
		case wings.sophix:
		if(c[1] >= 20)
			f = true;
		break;
		case wings.cosmix:
		if(c[4] >= 20)
			f = true;
		break;
		case wings.onyrix:
		if(c[3] >= 30)
			f = true;
		break;
		case wings.bloomix:
		if(c[3] >= 20 && c[0] >= 10)
			f = true;
		break;
		case wings.sirenix:
		if(c[2] >= 30)
			f = true;
		break;
		case wings.crystalSirenix:
		if(c[2] >= 20 && c[0] >= 10)
			f = true;
		break;
		case wings.enchantix:
		if(c[1] >= 20 && c[0] >= 10)
			f = true;
		break;
		case wings.butterflix:
		if(c[1] >= 30)
			f = true;
		break;
		case wings.tynix:
		if(c[4] >= 30)
			f = true;
		break;
		case wings.believix:
		if(c[4] >= 20 && c[0] >= 10)
			f = true;
		break;
	}
	
	return f;
}