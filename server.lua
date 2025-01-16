RegisterNetEvent('hud:syncData')
AddEventHandler('hud:syncData', function(playerHealth, playerArmor)
    TriggerClientEvent('hud:update', -1, playerHealth, playerArmor)
end)
