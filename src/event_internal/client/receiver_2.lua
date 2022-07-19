AddEventHandler("who_i_am", function(firstName, lastName)
    print(("I received the event too ! I am %s %s"):format(firstName, lastName:upper()))
end)