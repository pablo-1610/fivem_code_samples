RegisterCommand("setcolor", function(_, args)
    local vehicle, r, g, b
    if (#args ~= 3) then
        return print("Usage: /setcolor [r] [g] [b]")
    end
    r, g, b = tonumber(args[1]), tonumber(args[2]), tonumber(args[3])
    if (not IsPedInAnyVehicle(PlayerPedId())) then
        return print("Not in a vehicle")
    end
    vehicle = GetVehiclePedIsIn(PlayerPedId())
    SetVehicleCustomPrimaryColour(vehicle, r, g, b)
    SetVehicleCustomSecondaryColour(vehicle, r, g, b)
end)