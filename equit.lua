-- strength = 10237
-- stamina = 8138(6260+1878)
-- armor = 0
-- critical = 5%
-- mastery = 12%(格挡4% 精确格挡12% 攻强 8%)
-- dodge 3%
-- block 22%
-- parry 3%
local equit = {
  head = { 
    ilevel = 880,

    armor = 593,
    stamina = 2701,
    strength = 1801,
    haste = 438,
    versatility = 1096,
  },
  neck = { 
    ilevel = 900,

    stamina = 1831,

    critical = 1928,
    versatility = 1006,
  },
  shoulder = { 
    ilevel = 900,

    armor = 572,
    stamina = 2442,
    strength = 1628,

    mastery = 779,
    versatility = 460,
  },
  back = { 
    ilevel = 875,

    armor = 142,
    stamina = 1450,
    strength = 967,

    haste = 278,
    versatility = 568,

    ent_strength = 200,
  },
  chest = { 
    ilevel = 940,

    armor = 833,
    strength = 3150,
    stamina = 4726,

    haste = 1234,
    mastery = 685,
  },
  wrists = { 
    ilevel = 885, 

    armor = 323,
    stamina = 1592,
    strength = 1061,

    mastery = 514,
    versatility = 364,
  },
  hands = { 
    ilevel = 875,

    armor = 451,
    strength = 1289,
    stamina = 1934,

    critical = 467,
    mastery = 661,
  },
  waist = { 
    ilevel = 885,

    armor = 415,
    stamina = 2123,
    strength = 1415,

    critical = 485,
    mastery = 686,
  },
  legs = { 
    ilevel = 880,

    armor = 638,
    stamina = 2701,
    strength = 1801,

    haste = 898,
    mastery = 635,

    jaw_mastery = 150,
  },
  feet = { 
    ilevel = 875,

    armor = 496,
    stamina = 1934,
    strength = 1289,

    critical = 394,
    versatility = 733,

    jaw_strength = 200,
  },
  finger1 = { 
    ilevel = 890,

    stamina = 1668,

    critical = 1893,
    mastery = 867,
    
    ent_mastery = 200,
  },
  finger2 = { 
    ilevel = 875,

    stamina = 1450,

    haste = 1512,
    versatility = 1008,

    ent_mastery = 200,
  },
  trinket1 = { 
    ilevel = 880,

    mastery = 1095,
  },
  trinket2 = { 
    ilevel = 880,

    strength = 1712,
  },
  main_hand = { 
	  ilevel = 916,

	  strength = 1079,
	  stamina = 1619,

	  critical = 382,
	  mastery = 366,
  },
  off_hand = {
    ilevel = 916,

    armor = 1436,
    strength = 1417,
    stamina = 2125,

    critical = 502,
    mastery = 482,
  },
}

local ilevel_sum = 0 
local armor_sum = 0
local strength_sum = 0
local stamina_sum = 0
local mastery_sum = 0
local versatility_sum = 0
local haste_sum = 0
local critical_sum = 0
for k, v in pairs(equit) do
  ilevel_sum = ilevel_sum + v.ilevel
  armor_sum = armor_sum + (v.armor or 0)
  strength_sum = strength_sum + (v.strength or 0) + (v.ent_strength or 0) + (v.jaw_strength or 0)
  stamina_sum = stamina_sum + (v.stamina or 0)
  mastery_sum = mastery_sum + (v.mastery or 0) + (v.ent_mastery or 0) + (v.jaw_mastery or 0)
  haste_sum = haste_sum + (v.haste or 0) 
  versatility_sum  = versatility_sum + (v.versatility or 0)
  critical_sum = critical_sum + (v.critical or 0)
end
print("ilevel:", ilevel_sum/16)
print("")

print("armor_sum:", armor_sum)
print("strength_sum:", strength_sum)
print("stamina_sum:", stamina_sum)
print("")

print("mastery_sum:", mastery_sum)
print("haste_sum:", haste_sum)
print("versatility_sum", versatility_sum)
print("critical_sum", critical_sum)






