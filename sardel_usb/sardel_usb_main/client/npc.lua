
function spawnNpc (npc1, npc2, npc3, npc4, npc5, npc6, loc)
	isspawn = true
	Citizen.CreateThread(function()
		while true do
			Citizen.Wait(30)
			local Coords = GetEntityCoords(PlayerPedId())
			local dist = #(Coords - npc1)
			if dist < 50 then
				if isspawn then
					print(isspawn)
					for i = 1,1 do
					RequestModel(GetHashKey(Config.npc))
    				while not HasModelLoaded(GetHashKey(Config.npc)) do
    				    Wait(50)
    				end                
					local npc1 = CreatePed(26, GetHashKey(Config.npc), npc1, 50, false, false)
					local npc2 = CreatePed(26, GetHashKey(Config.npc), npc2, 50, false, false)
					local npc3 = CreatePed(26, GetHashKey(Config.npc), npc3, 50, false, false)
					local npc4 = CreatePed(26, GetHashKey(Config.npc), npc4, 50, false, false)
					local npc5 = CreatePed(26, GetHashKey(Config.npc), npc5, 50, false, false)
					local npc6 = CreatePed(26, GetHashKey(Config.npc), npc6, 50, false, false)
					AddRelationshipGroup('npc')
					SetCanPedEquipAllWeapons(npc1, true)
    				GiveWeaponToPed(npc1, GetHashKey(Config.gun), 250, false, true)
    				SetPedDropsWeaponsWhenDead(npc1, false)
    				SetCurrentPedWeapon(npc1, GetHashKey(Config.gun), true)
    				SetEntityHealth(npc1, Config.npchp)
    				SetPedArmour(npc1, Config.npcarmour)
					SetPedHearingRange(npc1, 50.0)
    				SetPedSeeingRange(npc1, 50.0)
    				SetPedAccuracy(npc1, 100)
    				SetPedCombatRange(npc1, 2)
    				SetPedCombatAbility(npc1, 2)
    				SetPedCombatMovement(npc1, 2)
    				SetPedCombatAttributes(npc1, 46, true)
					SetPedRelationshipGroupHash(npc1, 'npc')
					TaskShootAtEntity(npc1,PlayerPedId(), 1000000, 5)


					SetCanPedEquipAllWeapons(npc2, true)
    				GiveWeaponToPed(npc2, GetHashKey(Config.gun), 250, false, true)
    				SetPedDropsWeaponsWhenDead(npc2, false)
    				SetCurrentPedWeapon(npc2, GetHashKey(Config.gun), true)
    				SetEntityHealth(npc2, Config.npchp)
    				SetPedArmour(npc2, Config.npcarmour)
					SetPedHearingRange(npc2, 50.0)
    				SetPedSeeingRange(npc2, 50.0)
    				SetPedAccuracy(npc2, 100)
    				SetPedCombatRange(npc2, 2)
    				SetPedCombatAbility(npc2, 2)
    				SetPedCombatMovement(npc2, 2)
    				SetPedCombatAttributes(npc2, 46, true)
					SetPedRelationshipGroupHash(npc2, 'npc')
					TaskShootAtEntity(npc2,PlayerPedId(), 1000000, 5)


					SetCanPedEquipAllWeapons(npc3, true)
    				GiveWeaponToPed(npc3, GetHashKey(Config.gun), 250, false, true)
    				SetPedDropsWeaponsWhenDead(npc3, false)
    				SetCurrentPedWeapon(npc3, GetHashKey(Config.gun), true)
    				SetEntityHealth(npc3, Config.npchp)
    				SetPedArmour(npc3, Config.npcarmour)
					SetPedHearingRange(npc3, 50.0)
    				SetPedSeeingRange(npc3, 50.0)
    				SetPedAccuracy(npc3, 100)
    				SetPedCombatRange(npc3, 2)
    				SetPedCombatAbility(npc3, 2)
    				SetPedCombatMovement(npc3, 2)
    				SetPedCombatAttributes(npc3, 46, true)
					SetPedRelationshipGroupHash(npc3, 'npc')
					TaskShootAtEntity(npc3,PlayerPedId(), 1000000, 5)


					SetCanPedEquipAllWeapons(npc4, true)
    				GiveWeaponToPed(npc4, GetHashKey(Config.gun), 250, false, true)
    				SetPedDropsWeaponsWhenDead(npc4, false)
    				SetCurrentPedWeapon(npc4, GetHashKey(Config.gun), true)
    				SetEntityHealth(npc4, Config.npchp)
    				SetPedArmour(npc4, Config.npcarmour)
					SetPedHearingRange(npc4, 50.0)
    				SetPedSeeingRange(npc4, 50.0)
    				SetPedAccuracy(npc4, 100)
    				SetPedCombatRange(npc4, 2)
    				SetPedCombatAbility(npc4, 2)
    				SetPedCombatMovement(npc4, 2)
    				SetPedCombatAttributes(npc4, 46, true)
					SetPedRelationshipGroupHash(npc4, 'npc')
					TaskShootAtEntity(npc4,PlayerPedId(), 1000000, 5)


					SetCanPedEquipAllWeapons(npc5, true)
    				GiveWeaponToPed(npc5, GetHashKey(Config.gun), 250, false, true)
    				SetPedDropsWeaponsWhenDead(npc5, false)
    				SetCurrentPedWeapon(npc5, GetHashKey(Config.gun), true)
    				SetEntityHealth(npc5, Config.npchp)
    				SetPedArmour(npc5, Config.npcarmour)
					SetPedHearingRange(npc5, 50.0)
    				SetPedSeeingRange(npc5, 50.0)
    				SetPedAccuracy(npc5, 100)
    				SetPedCombatRange(npc5, 2)
    				SetPedCombatAbility(npc5, 2)
    				SetPedCombatMovement(npc5, 2)
    				SetPedCombatAttributes(npc5, 46, true)
					SetPedRelationshipGroupHash(npc5, 'npc')
					TaskShootAtEntity(npc5,PlayerPedId(), 1000000, 5)


					SetCanPedEquipAllWeapons(npc6, true)
    				GiveWeaponToPed(npc6, GetHashKey(Config.gun), 250, false, true)
    				SetPedDropsWeaponsWhenDead(npc6, false)
    				SetCurrentPedWeapon(npc6, GetHashKey(Config.gun), true)
    				SetEntityHealth(npc6, Config.npchp)
    				SetPedArmour(npc6, Config.npcarmour)
					SetPedHearingRange(npc6, 50.0)
    				SetPedSeeingRange(npc6, 50.0)
    				SetPedAccuracy(npc6, 100)
    				SetPedCombatRange(npc6, 2)
    				SetPedCombatAbility(npc6, 2)
    				SetPedCombatMovement(npc6, 2)
    				SetPedCombatAttributes(npc6, 46, true)
					SetPedRelationshipGroupHash(npc6, 'npc')
					TaskShootAtEntity(npc6,PlayerPedId(), 1000000, 5)
					end
					isspawn = false
					spawned = true
				end
			end
		end
		
	end)
end