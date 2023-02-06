Citizen.CreateThread(function()
  while true do
    Citizen.Wait(0)
    if IsPlayerDead(PlayerId()) then
      local playerPed = GetPlayerPed(-1)
      local currentWeaponHash = GetSelectedPedWeapon(playerPed)
      local ammo = GetAmmoInPedWeapon(playerPed, currentWeaponHash)
      SetPedAmmo(playerPed, currentWeaponHash, ammo)
    end
  end
end)