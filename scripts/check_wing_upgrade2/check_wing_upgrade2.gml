///@description check_wing_upgrade2
///@arg student wings
///@arg wings
function check_wing_upgrade2(argument0,argument1)
{
	var s = argument0;
	var w = argument1;
	var f = false;
	
	
	switch(w)
	{
		case wings.magix:
		case wings.charmix:
		case wings.mythix:
		case wings.lovix:
		f = true;
		break;
		case wings.dreamix:
		if(s == wings.charmix)
			f = true;
		break;
		case wings.harmonix:
		if(s == wings.charmix || s == wings.mythix)
			f = true;
		break;
		case wings.sophix:
		if(s == wings.lovix || s == wings.mythix)
			f = true;
		break;
		case wings.cosmix:
		if(s == wings.lovix)
			f = true;
		break;
		case wings.onyrix:
		if(s == wings.dreamix || s == wings.bloomix)
			f = true;
		break;
		case wings.bloomix:
		if(s == wings.dreamix || s == wings.onyrix)
			f = true;
		break;
		case wings.sirenix:
		if(s == wings.harmonix || s == wings.crystalSirenix)
			f = true;
		break;
		case wings.crystalSirenix:
		if(s == wings.harmonix || s == wings.sirenix)
			f = true;
		break;
		case wings.enchantix:
		if(s == wings.sophix || s == wings.butterflix)
			f = true;
		break;
		case wings.butterflix:
		if(s == wings.sophix || s == wings.enchantix)
			f = true;
		break;
		case wings.tynix:
		if(s == wings.cosmix || s == wings.believix)
			f = true;
		break;
		case wings.believix:
		if(s == wings.cosmix || s == wings.tynix)
			f = true;
		break;
	}
	
	return f;
}