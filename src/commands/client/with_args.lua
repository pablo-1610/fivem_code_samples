RegisterCommand("dump_cmd", function(_, args)
    for _, arg in ipairs(args) do
        print(arg)
    end
end)