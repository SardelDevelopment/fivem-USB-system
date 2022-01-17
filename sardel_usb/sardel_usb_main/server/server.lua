ESX = nil

TriggerEvent(Config.Serverrigger, function(obj) ESX = obj end)

print("server start")
ESX.RegisterUsableItem('usb_blue', function(playerId)
    items = 'usb_blue'
    print(items)
    local xPlayer = ESX.GetPlayerFromId(playerId)
    TriggerClientEvent('sard_usb:start', playerId, items)
    print("done")
    xPlayer.removeInventoryItem('usb_blue', 1)
end)

ESX.RegisterUsableItem('usb_red', function(playerId)
    items = 'usb_red'
    print(items)
    local xPlayer = ESX.GetPlayerFromId(playerId)
    TriggerClientEvent('sard_usb:start', playerId, items)
    print("done")
    xPlayer.removeInventoryItem('usb_red', 1)
end)

ESX.RegisterUsableItem('usb_gold', function(playerId)
    items = 'usb_gold'
    print(items)
    local xPlayer = ESX.GetPlayerFromId(playerId)
    TriggerClientEvent('sard_usb:start', playerId, items)
    print("done")
    xPlayer.removeInventoryItem('usb_gold', 1)
end)

ESX.RegisterUsableItem('usb_diamond', function(playerId)
    items = 'usb_diamond'
    print(items)
    local xPlayer = ESX.GetPlayerFromId(playerId)
    TriggerClientEvent('sard_usb:start', playerId, items)
    print("done")
    xPlayer.removeInventoryItem('usb_diamond', 1)
end)

RegisterNetEvent('sard_usb:giveitem')
AddEventHandler('sard_usb:giveitem', function(flash)
    print(flash)
    local xPlayer = ESX.GetPlayerFromId(source)
    if flash == 'usb_blue' then
        xPlayer.addInventoryItem(SConfig.blueitem, SConfig.blueitemcount)
    elseif flash == 'usb_red' then 
        xPlayer.addInventoryItem(SConfig.reditem, SConfig.reditemcount)
    elseif flash == 'usb_gold' then 
        xPlayer.addInventoryItem(SConfig.golditem, SConfig.golditemcount)
    elseif flash == 'usb_diamond' then
        xPlayer.addInventoryItem(SConfig.diamonditem, SConfig.diamonditemcount)
    end
    
end)