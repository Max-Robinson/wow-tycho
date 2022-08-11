
lsConf = {
	["confVersion"] = 1,
	["interruptExceptionCriteria"] = {
		[1] = "-ifTargetIsCasting=^Shoot$",
		[2] = "# The following almost always works great, but",
		[3] = "# Reportedly some mobs in Winterspring may have",
		[4] = "# 0 mana but can still cast.",
		[5] = "-ifTarget=0mana-ifTargetNPC",
		[6] = "# example of possibile options",
		[7] = "#-ifTargetClass=Warrior",
		[8] = "# the following is an example for a weird boss that",
		[9] = "# behaves differently under 50% hp (no kicks)",
		[10] = "#-ifTargetNamed=Some%sMajor%sBoss-ifTarget<50%hp",
	},
	["perPlayer"] = {
		["Turtle WoW"] = {
			["Thalatar"] = {
				["clearHistoryAfterCombat"] = false,
				["initiateAutoAttack"] = true,
				["mmIsVisible"] = true,
				["defaultForm"] = "BattleCommon",
				["minionIsVisible"] = true,
				["showReasonForTargetCCd"] = true,
				["BoundFormsTable"] = {
				},
				["deathMinionHidesOutOfCombat"] = false,
				["loadedDefaultForms"] = true,
				["debug"] = false,
				["healthHistorySize"] = 5,
				["Immunities"] = {
					["Rend"] = {
						["Remote-Controlled Golem"] = true,
						["Sneed's Shredder"] = true,
						["Apprentice Training Dummy"] = true,
						["Befouled Water Elemental"] = true,
						["Verdan the Everliving"] = true,
						["Living Flame"] = true,
						["Deviate Shambler"] = true,
						["Burning Destroyer"] = true,
					},
					["Intimidating Shout"] = {
						["Remote-Controlled Golem"] = true,
						["Gilnid"] = true,
						["Lord Pythas"] = true,
						["Mr. Smite"] = true,
					},
				},
				["showGankMessage"] = true,
				["showTargetCasts"] = true,
				["autoTarget"] = true,
				["deathMinionIsVisible"] = true,
				["minimapButtonPos"] = 342.6858498500802,
				["minionHidesOutOfCombat"] = false,
				["showActionAlways"] = true,
				["useImmunities"] = true,
				["forms"] = {
					["ThunderClap"] = {
						[1] = "callForm=BattleCommon",
						[2] = "# Thunder Clap 20 rage",
						[3] = "callForm=ThunderClapSub-ifPlayer>45rage-ifPlayerHasBuff=battleShout-ifNotInCooldown=thunderClap-ifNotTargetHasDebuff=thunderClap",
					},
					["tank"] = {
						[1] = "berserkerRage-ifPlayerIs=Feared",
						[2] = "use=Major Healing Potion-ifInCombat-ifPlayer<10%hp",
						[3] = "battleShout-ifNotInCombat-ifNotHistory<5=battleShout",
						[4] = "stopAll-ifTargetIs=CCd",
						[5] = "taunt-ifNotTargetOfTarget-ifTargetHasTarget",
						[6] = "mockingBlow-ifNotTargetOfTarget-ifTargetHasTarget",
						[7] = "battleShout-ifNotPlayerHasBuff=battleShout",
						[8] = "demoShout-ifNotTargetHasDebuff=demoShout",
						[9] = "sunder-ifTargetHasDebuff<5=sunder",
						[10] = "heroicStrike",
					},
					["Cleave"] = {
						[1] = "callForm=BattleCommon",
						[2] = "# Cleave 20 rage",
						[3] = "cleave-echo=Cleave!-ifPlayer>45rage-ifPlayerHasBuff=battleShout",
					},
					["Disarm"] = {
						[1] = "disarm-sayInSay=Disarm!-ifTargetBoss",
						[2] = "disarm-sayInSay=Disarm!-ifTargetElite",
					},
					["ThunderClapSub"] = {
						[1] = "thunderClap-echo=Thunder Clap!",
					},
					["BuffCheck"] = {
						[1] = "sayInSay=Please Blessing of Might-ifNotPlayerHasBuff=blessMight-ifNotLastAction=say",
						[2] = "sayInSay=Please Thorns-ifNotPlayerHasBuff=thorns-ifNotLastAction=say",
						[3] = "sayInSay=Please Mark of the Wild-ifNotPlayerHasBuff=motw-ifNotLastAction=say",
					},
					["Shoot"] = {
						[1] = "gun",
					},
					["Overpower"] = {
						[1] = "battle-echo=Battle Stance!-ifNotStance=battle",
						[2] = "overpower-sayInSay=Overpower!",
					},
					["EquipShield"] = {
						[1] = "# If holding two-handed weapon, and try to equip shield, it will fail.",
						[2] = "# Must first equip one-handed weapon, then can equip shield.",
						[3] = "equipMainHand=Jagged Star of Power-ifNotEquipped=Jagged Star of Power",
						[4] = "equipOffHand=Kresh's Back-echo=Equipping shield-ifNotEquipped=Kresh's Back",
					},
					["BattleCommon"] = {
						[1] = "autoAttack",
						[2] = "use=Lesser Healing Potion-echo=Healing Potion!-ifInCombat-ifPlayer<10%hp-ifNotItemInCooldown=Lesser Healing Potion",
						[3] = "#Intimidating Shout 25 rage",
						[4] = "intimidatingShout-echo=Intimidating Shout!-ifNotInCooldown=intimidatingShout-ifItemInCooldown=Lesser Healing Potion-ifPlayer<20%hp-ifPlayer>25rage",
						[5] = "# Bandage if you just did Intimidating Shout",
						[6] = "#callForm=Bandage-ifLastAction=intimidatingShout-ifItemInCooldown=Healing Potion-ifPlayer<452hp-ifNotPlayerHasDebuff=recentlyBandaged",
						[7] = "#Retaliation 0 rage 30min cooldown",
						[8] = "callForm=Retaliation-ifNotInCooldown=retaliation-ifPlayer<50%hp-ifItemInCooldown=Lesser Healing Potion-ifInCooldown=intimidatingShout",
						[9] = "# Equip 2H if just did Retaliation",
						[10] = "callForm=EquipTwoHandWeapon-ifPlayerHasBuff=retaliation",
						[11] = "stopAll-ifTargetIs=CCd",
						[12] = "# Execute 15 rage",
						[13] = "#callForm=Execute-ifTarget<20%hp-ifPlayer>15rage",
						[14] = "# Shield Bash 10 rage",
						[15] = "callForm=ShieldBash-ifNotInCooldown=shieldBash-ifTargetIsCasting=Sleep,Druid's Slumber-ifNotTargetIs=Stunned-ifPlayer>10rage",
						[16] = "#Overpower 5 rage",
						[17] = "callForm=Overpower-ifPlayer>5rage-ifNotInCooldown=overpower-ifTargetDodged",
						[18] = "# Revenge 5 rage",
						[19] = "callForm=Revenge-ifPlayer>5rage-ifNotInCooldown=revenge-ifTargetBlocked",
						[20] = "callForm=Revenge-ifPlayer>5rage-ifNotInCooldown=revenge-ifTargetParried",
						[21] = "# Mocking Blow 10 rage 2 min cooldown, Taunt 0 rage",
						[22] = "callForm=MockingBlowTaunt-ifNotTargetOfTarget-ifTargetHasTarget",
						[23] = "# Hamstring 10 rage",
						[24] = "callForm=Hamstring-ifPlayer>10rage-ifTargetType=Humanoid-ifTarget<25%hp-ifNotTargetHasDebuff=hamstring",
						[25] = "# Bloodrage 0 rage",
						[26] = "bloodrage-echo=Bloodrage!-ifNotInCooldown=bloodrage-ifNotPlayerHasBuff=bloodrage-ifPlayer>60hp-ifPlayer>10%hp",
						[27] = "# Shield Block 10 rage",
						[28] = "callForm=ShieldBlock-ifPlayer>10rage-ifNotInCooldown=shieldBlock-ifPlayer<33%hp-ifNotPlayerHasBuff=shieldBlock",
						[29] = "callForm=ShieldBlock-ifStance=defensive-ifPlayer>35rage-ifNotInCooldown=shieldBlock-ifPlayer<50%hp-ifNotPlayerHasBuff=shieldBlock",
						[30] = "# Battle Shout 10 rage",
						[31] = "battleShout-echo=Battle Shout!-ifPlayer>10rage-ifNotPlayerHasBuff=battleShout",
						[32] = "battleShout-echo=Battle Shout!-ifPlayer>10rage-ifBuffDuration<3s=battleShout",
						[33] = "# Disarm 20 rage",
						[34] = "callForm=Disarm-ifStance=defensive-ifNotInCooldown=disarm-ifPlayer>45rage-ifNotTargetImmune=disarm-ifNotTargetType=Beast,Critter,Dragonkin,Elemental-ifNotTargetHasDebuff=disarm",
						[35] = "# Rend 10 rage",
						[36] = "rend-echo=Not in melee range!-ifNotTargetInMeleeRange",
						[37] = "rend-echo=Rend!-ifPlayer>35rage-ifPlayerHasBuff=battleShout-ifNotTargetHasDebuff=rend-ifNotTargetImmune=rend-ifTimeToDeath>15s",
						[38] = "# Demoralizing Shout 10 rage",
						[39] = "demoShout-echo=Demoralizing Shout!-ifPlayer>35rage-ifPlayerHasBuff=battleShout-ifNotTargetHasDebuff=demoShout",
					},
					["Hamstring"] = {
						[1] = "# Only switch stance to perform a Hamstring if rage is 25 or less.  Not worth losing rage to perform a Hamstring (in PvE)",
						[2] = "battle-echo=Battle Stance!-ifNotStance=battle-ifPlayer<25rage",
						[3] = "hamstring-sayInSay=Hamstring!-ifStance=battle",
					},
					["Execute"] = {
						[1] = "battle-echo=Battle Stance!-ifNotStance=battle",
						[2] = "execute-sayInSay=Execute!",
					},
					["MockingBlowTaunt"] = {
						[1] = "# Mocking Blow 10 rage 2min cooldown",
						[2] = "mockingBlow-sayInSay=Mocking Blow!-ifStance=battle-ifPlayer>10rage-ifNotInCooldown=mockingBlow",
						[3] = "# Taunt 0 rage",
						[4] = "defensive-echo=Defensive Stance!-ifNotStance=defensive-ifInCooldown=mockingBlow-ifNotInCooldown=taunt",
						[5] = "taunt-sayInSay=Taunt!-ifNotInCooldown=taunt-ifStance=defensive",
					},
					["Buff"] = {
						[1] = "findHerbs",
						[2] = "#use=Strong Troll's Blood Potion-ifNotPlayerHasBuffTitle=Regeneration",
						[3] = "use=Weak Troll's Blood Potion-ifNotPlayerHasBuffTitle=Regeneration",
						[4] = "use=Elixir of Minor Fortitude-ifNotPlayerHasBuffTitle=Health",
						[5] = "use=Elixir of Minor Defense-ifNotPlayerHasBuffTitle=Lesser Armor",
						[6] = "use=Elixir of Lion's Strength-ifNotPlayerHasBuffTitle=Lesser Strength",
						[7] = "callForm=EquipShield",
						[8] = "applyMainHandBuff=Rough Weightstone-ifNotPlayerHasBuffTitle=Enhance Blunt Weapon",
						[9] = "callForm=EquipTwoHandWeapon",
						[10] = "applyMainHandBuff=Rough Sharpening Stone-ifNotPlayerHasBuffTitle=Sharpen Blade",
						[11] = "use=Rumsey Rum Light-ifNotPlayerHasBuffTitle=Rumsey Rum Light",
						[12] = "use=Crocolisk Gumbo-ifNotPlayerHasBuffTitle=Well Fed",
						[13] = "#use=Goretusk Liver Pie-ifNotPlayerHasBuffTitle=Well Fed",
					},
					["Charge"] = {
						[1] = "echo=Charge in cooldown-ifInCooldown=charge",
						[2] = "battle-echo=Battle Stance!-ifNotInCooldown=charge-ifNotStance=battle",
						[3] = "charge-ifNotInCooldown=charge",
					},
					["Retaliation"] = {
						[1] = "battle-echo=Battle Stance!-ifNotStance=battle",
						[2] = "retaliation-sayInSay=Retaliation!",
					},
					["Revenge"] = {
						[1] = "defensive-echo=Defensive Stance!-ifNotStance=defensive",
						[2] = "revenge-sayInSay=Revenge!",
					},
					["ShieldBash"] = {
						[1] = "defensive-echo=DefensiveStance!-ifStance=berserk",
						[2] = "callForm=EquipShield",
						[3] = "shieldBash-sayInSay=Shield Bash!",
					},
					["EquipTwoHandWeapon"] = {
						[1] = "equipMainHand=Taskmaster Axe-echo=Equipping 2 hander-ifNotEquipped=Taskmaster Axe",
					},
					["SunderArmorHeroicStrike"] = {
						[1] = "callForm=BattleCommon",
						[2] = "# Sunder Armor 15 rage",
						[3] = "sunder-echo=Sunder Armor!-ifPlayer>40rage-ifPlayerHasBuff=battleShout-ifTargetHasDebuff<5=sunder",
						[4] = "# Heroic Strike 15 rage",
						[5] = "heroicStrike-echo=Heroic Strike!-ifPlayer>40rage-ifTargetHasDebuff>5=sunder",
					},
					["ShieldBlock"] = {
						[1] = "callForm=EquipShield",
						[2] = "defensive-echo=Defensive Stance!-ifNotStance=defensive",
						[3] = "shieldBlock-echo=Shield Block!",
					},
					["Bandage"] = {
						[1] = "targetUnit=player-use=Heavy Wool Bandage-targetLast-sayInSay=Bandaging!-ifNotPlayerHasDebuff=recentlyBandaged",
					},
				},
			},
		},
	},
}