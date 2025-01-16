Citizen.CreateThread(function()
    while true do
        local player = PlayerPedId()
        local health = (GetEntityHealth(player) - 100) / (GetEntityMaxHealth(player) - 100) * 100
        local armor = GetPedArmour(player)

        SendNUIMessage({
            type = "updateHUD",
            health = math.floor(health),
            armor = math.floor(armor)
        })

        Citizen.Wait(500)
    end
end)
