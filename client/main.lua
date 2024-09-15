local inBenny = false


RegisterNetEvent("qbx_benny:client:repair", function()
    SendNUIMessage({sound = "wrench", volume = 1.0})
if lib.progressBar({
    duration = 10000,
    label = 'Repairing Vehicle',
    useWhileDead = false,
    canCancel = true,
    disable = {
        car = true,
    },
}) then print('Repairing carrr') else print('Meow') end 
       TriggerEvent('iens:repaira')
        TriggerEvent('vehiclemod:client:fixEverything')
end)

local benny = PolyZone:Create(
Config.Location,
 {
    name= Config.PolyName,
    minZ = Config.MinZ,
    maxZ = Config.MaxZ,
})

benny:onPlayerInOut(function(isPointInside)
    if isPointInside then
        inBenny = true
        if IsPedInAnyVehicle(PlayerPedId()) then 
lib.addRadialItem({
  {
    id = 'repairicarus',
    label = 'Repair Car',
    icon = 'car-crash',
      onSelect = function()
            TriggerServerEvent('qbx_benny:server:repair', src)
    local src = source
      end
  },
})
        end
    else
        inBenny = false
        lib.removeRadialItem('repairicarus')
    end
end)



