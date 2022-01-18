ESX = nil

Citizen.CreateThread(function() 
    while ESX == nil do
        TriggerEvent(Config.Clienttrigger, function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)

local levels = Config.Levels
local lifes = Config.Lifes
local time = Config.Time 

RegisterNetEvent('sard_usb:start')
AddEventHandler('sard_usb:start', function(playerId)
    local item = playerId
    if Config.debuging then
    print(item)
    end
    local playerPed = PlayerPedId()
    if item == 'usb_blue' then 
        flash = 'usb_blue'
        Playdeadanim = true
        time = 5000
        msg = Config.msghack
        progress(time, msg)
        FreezeEntityPosition(PlayerPedId(), true)
        startAnim()
        Citizen.Wait(5000)
        TriggerEvent("utk_fingerprint:Start", levels, lifes, time, function(outcome, reason)
            if outcome == true then
                local location = getRandomLocation(flash)
                local pos = true
                local loc = location.Pos
                take = true
                npc1 = location.Npc1
                npc2 = location.Npc2
                npc3 = location.Npc3
                npc4 = location.Npc4
                npc5 = location.Npc5
                npc6 = location.Npc6

                createBlip(location.Pos)
                FreezeEntityPosition(PlayerPedId(), false)
                togiveitem(location.Pos, take, flash)
                deleteBlip(location.Pos)
                spawnNpc(npc1, npc2, npc3, npc4, npc5, npc6, loc)
                ESX.ShowNotification('Hacking sucessful, you have blip on map')
                Wait(1000)
                ESX.ShowNotification('Be careful!')
            elseif outcome == false then
                ESX.ShowNotification('Hacking failed')
                FreezeEntityPosition(PlayerPedId(), false)
            end
        end)
        stopAnim()
    elseif item == 'usb_red' then
        flash = 'usb_red'
        Playdeadanim = true
        time = 5000
        msg = Config.msghack
        progress(time, msg)
        FreezeEntityPosition(PlayerPedId(), true)
        startAnim()
        Citizen.Wait(5000)
        TriggerEvent("utk_fingerprint:Start", levels, lifes, time, function(outcome, reason)
            if outcome == true then
                local location = getRandomLocation(flash)
                local pos = true
                local loc = location.Pos
                take = true
                npc1 = location.Npc1
                npc2 = location.Npc2
                npc3 = location.Npc3
                npc4 = location.Npc4
                npc5 = location.Npc5
                npc6 = location.Npc6

                createBlip(location.Pos)
                print(loc)
                FreezeEntityPosition(PlayerPedId(), false)
                togiveitem(location.Pos, take, flash)
                deleteBlip(location.Pos)
                spawnNpc(npc1, npc2, npc3, npc4, npc5, npc6, loc)
                ESX.ShowNotification('Hacking sucessful, you have blip on map')
                Wait(1000)
                ESX.ShowNotification('Be careful!')
            elseif outcome == false then
                ESX.ShowNotification('Hacking failed')
                FreezeEntityPosition(PlayerPedId(), false)
            end
        end)
        stopAnim()
    elseif item == 'usb_gold' then
        flash = 'usb_gold'
        Playdeadanim = true
        time = 5000
        msg = Config.msghack
        progress(time, msg)
        FreezeEntityPosition(PlayerPedId(), true)
        startAnim()
        Citizen.Wait(5000)
        TriggerEvent("utk_fingerprint:Start", levels, lifes, time, function(outcome, reason)
            if outcome == true then
                local location = getRandomLocation(flash)
                local pos = true
                local loc = location.Pos
                take = true
                npc1 = location.Npc1
                npc2 = location.Npc2
                npc3 = location.Npc3
                npc4 = location.Npc4
                npc5 = location.Npc5
                npc6 = location.Npc6

                createBlip(location.Pos)
                print(loc)
                FreezeEntityPosition(PlayerPedId(), false)
                togiveitem(location.Pos, take, flash)
                deleteBlip(location.Pos)
                spawnNpc(npc1, npc2, npc3, npc4, npc5, npc6, loc)
                ESX.ShowNotification('Hacking sucessful, you have blip on map')
                Wait(1000)
                ESX.ShowNotification('Be careful!')
            elseif outcome == false then
                ESX.ShowNotification('Hacking failed')
                FreezeEntityPosition(PlayerPedId(), false)
            end
        end)
        stopAnim()
    elseif item == 'usb_diamond' then
        flash = 'usb_diamond'
        Playdeadanim = true
        time = 5000
        msg = Config.msghack
        progress(time, msg)
        FreezeEntityPosition(PlayerPedId(), true)
        startAnim()
        Citizen.Wait(5000)
        TriggerEvent("utk_fingerprint:Start", levels, lifes, time, function(outcome, reason)
            if outcome == true then
                local location = getRandomLocation(flash)
                local pos = true
                local loc = location.Pos
                take = true
                npc1 = location.Npc1
                npc2 = location.Npc2
                npc3 = location.Npc3
                npc4 = location.Npc4
                npc5 = location.Npc5
                npc6 = location.Npc6

                createBlip(location.Pos)
                print(loc)
                FreezeEntityPosition(PlayerPedId(), false)
                togiveitem(location.Pos, take, flash)
                deleteBlip(location.Pos)
                spawnNpc(npc1, npc2, npc3, npc4, npc5, npc6, loc)
                ESX.ShowNotification('Hacking sucessful, you have blip on map')
                Wait(1000)
                ESX.ShowNotification('Be careful!')
            elseif outcome == false then
                ESX.ShowNotification('Hacking failed')
                FreezeEntityPosition(PlayerPedId(), false)
            end
        end)
        stopAnim()
    end
end)

function createBlip(pos)
    blip = AddBlipForCoord(pos.x, pos.y, pos.z)
    SetBlipSprite(blip, Config.Blip.Sprite)
    SetBlipDisplay(blip, 4)
    SetBlipScale(blip, Config.Blip.Scale)
    SetBlipColour(blip, Config.Blip.Colour)
    SetBlipAsShortRange(blip, true)
    SetBlipRoute(blip, true)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString("<FONT FACE='Fire Sans'>" .."Ahoj")
    EndTextCommandSetBlipName(blip)
end

function startAnim()
	Citizen.CreateThread(function()
	  RequestAnimDict("amb@world_human_seat_wall_tablet@female@base")
	  while not HasAnimDictLoaded("amb@world_human_seat_wall_tablet@female@base") do
	    Citizen.Wait(0)
	  end
		attachObject()
		TaskPlayAnim(GetPlayerPed(-1), "amb@world_human_seat_wall_tablet@female@base", "base" ,8.0, -8.0, -1, 50, 0, false, false, false)
	end)
end

function attachObject()
	tab = CreateObject(GetHashKey("prop_cs_tablet"), 0, 0, 0, true, true, true)
	AttachEntityToEntity(tab, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 57005), 0.17, 0.10, -0.13, 20.0, 180.0, 180.0, true, true, false, true, 1, true)
end

function stopAnim()
	StopAnimTask(GetPlayerPed(-1), "amb@world_human_seat_wall_tablet@female@base", "base" ,8.0, -8.0, -1, 50, 0, false, false, false)
	DeleteEntity(tab)
end

function getRandomLocation(flash)
    for k, v in pairs(Config.Zones) do
        print(flash)
        if k == flash then
            local random = math.random(1, #v)
            return v[random]
        end
    end
end


function deleteBlip(pos)
    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(10)

            local coords = GetEntityCoords(GetPlayerPed(-1))
            local distance = #(coords - vector3(pos.x, pos.y, pos.z))

            if distance < Config.deletetoblip then
                RemoveBlip(blip)
            end
        end
    end)
end

function ShowFloatingHelpNotification(msg, pos)
    AddTextEntry('srd_usb', '<FONT FACE="Fire Sans">' ..msg)
    SetFloatingHelpTextWorldPosition(1, pos.x, pos.y, pos.z)
    SetFloatingHelpTextStyle(2, 1, 25, -1, 3, 0)
    BeginTextCommandDisplayHelp('srd_usb')
    EndTextCommandDisplayHelp(2, false, false, -1)
end


function togiveitem(pos, take, flash)
    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(0)


            local coords = GetEntityCoords(GetPlayerPed(-1))
            local distan = #(coords - vector3(pos.x, pos.y, pos.z))
            local floating = "srd_usb"
            if distan < Config.textdistan and take then
                ShowFloatingHelpNotification(Config.msg, pos)
                if IsControlJustReleased(0, 38) and take then
                    time = 2000
                    msg = Config.msgsteal
                    progress(time, msg)
		    startAnim2()
                    Wait(2000)
		    stopAnim2()
                    ESX.ShowNotification('Theft completed')
                    TriggerServerEvent('sard_usb:giveitem', flash)
                    take = false
                end      
            end
        end
    end)
end

function startAnim2()
	Citizen.CreateThread(function()
	  RequestAnimDict("anim@move_m@prisoner_cuffed")
	  while not HasAnimDictLoaded("anim@move_m@prisoner_cuffed") do
	    Citizen.Wait(0)
	  end
      FreezeEntityPosition(PlayerPedId(), true)
		TaskPlayAnim(GetPlayerPed(-1), "anim@move_m@prisoner_cuffed", "wstop_r_0" ,8.0, -8.0, -1, 50, 0, false, false, false)
	end)
end


function stopAnim2()
	StopAnimTask(GetPlayerPed(-1), "anim@move_m@prisoner_cuffed", "wstop_r_0" ,8.0, -8.0, -1, 50, 0, false, false, false)
    FreezeEntityPosition(PlayerPedId(), false)
end
