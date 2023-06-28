///@description student_level_up
///@arg student
///@arg student_wings
function student_level_up(argument0,argument1)
{
	var s = argument0;
	var w = argument1;
	var sm = 1;
	var sd = 1;
	var ss = 1;
	var sk = 1;
	var sh = 2;
	var sp = 1;
	
	switch(w)
	{
		case wings.magix:
		sm = 1;
		sd = 1;
		ss = 1;
		sk = 1;
		sh = 2;
		sp = 1;
		break;
		case wings.charmix:
		sm = 1;
		sd = 1;
		ss = 2;
		sk = 2;
		sh = 2;
		sp = 1;
		break;
		case wings.mythix:
		sm = 3;
		sd = 1;
		ss = 1;
		sk = 1;
		sh = 2;
		sp = 1;
		break;
		case wings.lovix:
		sm = 1;
		sd = 2;
		ss = 1;
		sk = 1;
		sh = 4;
		sp = 1;
		break;
		case wings.dreamix:
		sm = 4;
		sd = 1;
		ss = 3;
		sk = 3;
		sh = 4;
		sp = 2;
		break;
		case wings.harmonix:
		sm = 3;
		sd = 3;
		ss = 2;
		sk = 2;
		sh = 5;
		sp = 2;
		break;
		case wings.sophix:
		sm = 3;
		sd = 2;
		ss = 2;
		sk = 2;
		sh = 4;
		sp = 2;
		break;
		case wings.cosmix:
		sm = 2;
		sd = 3;
		ss = 1;
		sk = 2;
		sh = 6;
		sp = 2;
		break;
		case wings.onyrix:
		sm = 4;
		sd = 2;
		ss = 4;
		sk = 4;
		sh = 6;
		sp = 4;
		break;
		case wings.bloomix:
		sm = 5;
		sd = 4;
		ss = 3;
		sk = 3;
		sh = 8;
		sp = 4;
		break;
		case wings.sirenix:
		sm = 4;
		sd = 3;
		ss = 5;
		sk = 3;
		sh = 6;
		sp = 4;
		break;
		case wings.crystalSirenix:
		sm = 3;
		sd = 5;
		ss = 3;
		sk = 3;
		sh = 8;
		sp = 4;
		break;
		case wings.enchantix:
		sm = 6;
		sd = 1;
		ss = 4;
		sk = 4;
		sh = 6;
		sp = 4;
		break;
		case wings.butterflix:
		sm = 4;
		sd = 2;
		ss = 3;
		sk = 5;
		sh = 8;
		sp = 4;
		break;
		case wings.tynix:
		sm = 3;
		sd = 6;
		ss = 2;
		sk = 3;
		sh = 10;
		sp = 4;
		break;
		case wings.believix:
		sm = 4;
		sd = 5;
		ss = 1;
		sk = 2;
		sh = 10;
		sp = 4;
		break;
	}
	
	s.stat_magic += sm;
	s.stat_defense += sd;
	s.stat_speed += ss;
	s.stat_skill += sk;
	s.stat_hp += sh;
	s.stat_mp += sp;
	
	s.stat_hp_curr = s.stat_hp;
	s.stat_mp_curr = s.stat_mp;
	
	s.level+=1;
	
	s.class_points += 1;
	
	s.blind_on = false;
	s.deaf_on = false;
	s.petrify_on = false;
	s.curse_on = false;

	//if(s.level <= 12)
	//	s.spells_level[s.level-1] = s.spells_master[s.level-1];
	if(s.level <= 36)
		s = student_spell_level_up(s);
	
	return s;
}