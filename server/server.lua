RegisterCommand("policenow", function(source)
    local agentsReady = QBCore.Functions.GetDutyCount('police')
    local policeCount = 0

    for _ in pairs(agentsReady) do
        policeCount = policeCount + 1
    end

    TriggerClientEvent("chat:addMessage", source, {
        color = { 27, 172, 251 },
        multiline = true,
        args = { "PoliceNow", "Actualmente hay " .. policeCount .. " policías en servicio." },
    })
end, false)
