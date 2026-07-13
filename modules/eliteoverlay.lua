pfUI:RegisterModule("eliteoverlay", "vanilla:tbc:wotlk", function ()
  -- migrate legacy plugin config
  if C.EliteOverlay and C.EliteOverlay.position and (not C.unitframes.eliteoverlay or not C.unitframes.eliteoverlay.position) then
    pfUI:UpdateConfig("unitframes", "eliteoverlay", "position", C.EliteOverlay.position)
  end

  pfUI:UpdateConfig("unitframes", "eliteoverlay", "position", "right")

  pfUI.eliteoverlay = {
    UpdateConfig = function()
      if not pfUI.uf or not pfUI.uf.frames then return end
      for i=1, table.getn(pfUI.uf.frames) do
        pfUI.uf:UpdateDragon(pfUI.uf.frames[i])
      end
    end
  }

  pfUI.eliteoverlay.UpdateConfig()
end)
