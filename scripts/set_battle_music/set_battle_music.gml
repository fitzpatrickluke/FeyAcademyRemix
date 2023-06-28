///@description set_battle_music

function set_battle_music()
{
	var m = battle_1;
	switch(manager_students.student_1_wings)
	{
		case wings.magix:
		case wings.charmix:
		case wings.mythix:
		case wings.lovix:
		m = battle_1;
		break;
		case wings.dreamix:
		case wings.harmonix:
		case wings.sophix:
		case wings.cosmix:
		m = battle_2;
		break;
		case wings.onyrix:
		case wings.bloomix:
		case wings.sirenix:
		case wings.crystalSirenix:
		case wings.enchantix:
		case wings.butterflix:
		case wings.tynix:
		case wings.believix:
		m = battle_3;
		break;
	}
	if(manager_students.boss_battle)
	{
		if(manager_students.final_aa || manager_students.final_er)
		{
			if(manager_students.boss_num == 10)
				m = boss_3;
			else
				m = boss_2;
		}
		else
			m = boss_1;
	}
	
	if(manager_students.prev_room_adv == adventure_reflectionRift1)
		m = sound_rr;
	
	return m;
}