-- Credits: Wezor
--[[
    Used natives:
        - GetEntityCoords (https://docs.fivem.net/natives/?_0x1647F1CB)
        - PlayerPedId (https://docs.fivem.net/natives/?_0xD80958FC74E988A6)
        - AddBlipForCoord (https://docs.fivem.net/natives/?_0xC6F43D0E)
        - SetBlipSprite (https://docs.fivem.net/natives/?_0xDF735600A4696DAF)
        - SetBlipColour (https://docs.fivem.net/natives/?_0x03D7FB09E75D6B7E)
        - SetBlipScale (https://docs.fivem.net/natives/?_0xD38744167B2FA257)
        - BeginTextCommandSetBlipName (https://docs.fivem.net/natives/?_0xF9113A30DE5C6670)
        - AddTextComponentString (NATIVE INVALID IN WEBSITE)
        - EndTextCommandSetBlipName (https://docs.fivem.net/natives/?_0xBC38B49BCB83BC9B)
--]]

RegisterCommand("coords_blip", function(_, args)
    if (#args < 4) then
        print("Usage: coords_blip <sprite> <name> <scale> <color>")
        return
    end
    local coords <const> = GetEntityCoords(PlayerPedId());
    local sprite <const> = args[1];
    local name <const> = args[2];
    local scale <const> = args[3];
    local color <const> = args[4];
    local blips <const> = AddBlipForCoord(coords.x, coords.y, coords.z);

    SetBlipSprite(blips, sprite);
    SetBlipColour(blips, color);
    SetBlipScale(blips, scale);
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(name);
    EndTextCommandSetBlipName(blips);
end)