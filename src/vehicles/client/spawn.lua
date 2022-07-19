--[[
    Used natives:
        - GetHashKey (https://docs.fivem.net/natives/?_0x98EFF6F1)
        - GetEntityCoords (https://docs.fivem.net/natives/?_0x1647F1CB)
        - GetEntityHeading (https://docs.fivem.net/natives/?_0x972CC383)
        - PlayerPedId (https://docs.fivem.net/natives/?_0xD80958FC74E988A6)
        - IsModelValid (https://docs.fivem.net/natives/?_0xC0296A2EDF545E92)
        - RequestModel (https://docs.fivem.net/natives/?_0x963D27A58DF860AC)
        - HasModelLoaded (https://docs.fivem.net/natives/?_0x98A4EB5D89A0C952)
        - CreateVehicle (https://docs.fivem.net/natives/?_0xDD75460A)
--]]

RegisterCommand("spawn_veh", function(_, args)
    if (#args < 1) then
        print("Usage: spawn_veh <model>")
        return
    end
    local model<const> = GetHashKey(args[1])
    local spawnCoords <const> = GetEntityCoords(PlayerPedId())
    local spawnHeading <const> = GetEntityHeading(PlayerPedId())

    if (not (IsModelValid(model))) then
        print("Invalid model")
        return
    end
    RequestModel(model)
    while (not (HasModelLoaded(model))) do
        Wait(100)
    end
    local vehicle<const> = CreateVehicle(model, spawnCoords, spawnHeading, true)

    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
end)