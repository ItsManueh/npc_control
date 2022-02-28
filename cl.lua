-- #### NPC Control #### --

CreateThread(function()
	while true do
		Wait(0)
        for i = 1, 12 do
			-- Disable Dispatch
			EnableDispatchService(i, false)
		end

		-- Peds
		SetPedDensityMultiplierThisFrame(0.3)
		SetScenarioPedDensityMultiplierThisFrame(0.3, 0.3)

		SetVehicleDensityMultiplierThisFrame(0.3)
		SetRandomVehicleDensityMultiplierThisFrame(0.3)

		SetParkedVehicleDensityMultiplierThisFrame(0.0)
		SetNumberOfParkedVehicles(0.0)
		
		SetGarbageTrucks(false)
		SetRandomBoats(false)
		SetRandomTrains(false)

		SetCreateRandomCops(false)
		SetCreateRandomCopsNotOnScenarios(false)
		SetCreateRandomCopsOnScenarios(false)
		
		-- Despawn parking cars
		local x,y,z = table.unpack(GetEntityCoords(PlayerPedId()))
		ClearAreaOfVehicles(x, y, z, 1000, false, false, false, false, false)
		RemoveVehiclesFromGeneratorsInArea(x - 500.0, y - 500.0, z - 500.0, x + 500.0, y + 500.0, z + 500.0);
	end
end)

-- #### NPC NO DROP #### --
CreateThread(function()
	while true do
	  Wait(500)
      -- Carabina Rifle
	  RemoveAllPickupsOfType(0xDF711959)
      -- Pistol
	  RemoveAllPickupsOfType(0xF9AFB48F)
      -- Shotgun
	  RemoveAllPickupsOfType(0xA9355DCD)
    end
end)