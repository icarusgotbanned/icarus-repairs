
RegisterNetEvent("qbx_benny:server:repair", function()
    local Player = exports.qbx_core:GetPlayer(source)
    local bank = Player.Functions.GetMoney("bank")
    local cash = Player.Functions.GetMoney("cash")
    if Config.Pay then
        if bank >= Config.Price then
            if Player.Functions.RemoveMoney("bank", Config.Price, "bennys") then
                TriggerClientEvent("qbx_benny:client:repair", source)
            end
        elseif cash >= Config.Price then
            if Player.Functions.RemoveMoney("cash", Config.Price) then
                TriggerClientEvent("qbx_benny:client:repair", source)
            end
        else
     	   exports.qbx_core:Notify('You are BROKE!', 'error')
        end
    else
        TriggerClientEvent("qbx_benny:client:repair", source)
    end
end)
