-- Created by Vampire - VampuricGaming.net
Citizen.CreateThread(function()
    local tDelay = 60000
    local cleanModels = {
        [GetHashKey('police')] = true,
        [GetHashKey('police2')] = true,
    }
	while true do
        local ped = GetPlayerPed(-1)
        if IsPedInAnyVehicle(ped) then
            local veh = GetVehiclePedIsIn(ped, false)
            if cleanModels[GetEntityModel(veh)] ~= nil and cleanModels[GetEntityModel(veh)] then
                WashDecalsFromVehicle(veh, 1.0)
        		SetVehicleDirtLevel(veh, 0.0)
                RemoveDecalsFromVehicle(veh)
            end
        end
		Citizen.Wait(tDelay)
	end
end)
