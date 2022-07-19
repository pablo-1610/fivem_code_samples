--[[
    Used natives:
        - LoadResourceFile (https://docs.fivem.net/natives/?_0x76A9EE1F)
        - GetCurrentResourceName (https://docs.fivem.net/natives/?_0xE5E9EBBB)
--]]

RegisterCommand("read_english", function()
    local fileContent <const> = LoadResourceFile(GetCurrentResourceName(), "data/english.json")
    local locales <const> = json.decode(fileContent)

    for id, translation in pairs(locales) do
        print(id, ">", translation)
    end
end)