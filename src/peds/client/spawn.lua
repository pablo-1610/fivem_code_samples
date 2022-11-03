RegisterCommand("spawn_ped", function(_, args)
    local model = GetHashKey(args[1])
    if (#args ~= 1) then
        return print("Usage: /spawn_ped [model]")
    end
    RequestModel(model)
    while (not HasModelLoaded(model)) do
        Wait(100)
    end
    CreatePed(9, model, GetEntityCoords(PlayerPedId()), GetEntityHeading(PlayerPedId()))
    SetModelAsNoLongerNeeded(model)
end)