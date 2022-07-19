-- Credits : Wezor

local EXAMPLE_TABLE <const> = {
    NYC = {
        latitude = 40.7128,
        longitude = -74.0060,
        name = "New York City",
        population = 8406000,
    },

    LAX = {
        latitude = 34.0522,
        longitude = -118.2437,
        name = "Los Angeles",
        population = 3884307,
    },
}

RegisterCommand("encode_with_spaces", function()
    local tidyTable <const> = json.encode(EXAMPLE_TABLE, {indent = true})
    print("tidy Table:", tidyTable)

    local deserializedTable <const> = json.decode(serializedTable)
    print("Deserialized example:", deserializedTable.LAX.name)
end)