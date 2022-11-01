RegisterCommand("spawn_ped", function(_, args)
    local model, ped
    if (#args ~= 1) then
        return print("Usage: /spawn_ped [model]")
    end
    model = GetHashKey(args[1])
    RequestModel(model)
    while (not HasModelLoaded(model)) do
        Wait(100)
    end
    ped = CreatePed(9, model, GetEntityCoords(PlayerPedId()), GetEntityHeading(PlayerPedId()))
    SetModelAsNoLongerNeeded(model)
end)