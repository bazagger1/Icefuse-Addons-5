--[[
Server Name: ▌ Icefuse.net ▌ DarkRP 100k Start ▌ Bitminers-Slots-Unbox ▌
Server IP:   208.103.169.42:27015
File Path:   addons/[server]_meth_system_zeros/lua/zmlab/cl/zmlab_highlight.lua
		 __        __              __             ____     _                ____                __             __         
   _____/ /_____  / /__  ____     / /_  __  __   / __/____(_)__  ____  ____/ / /_  __     _____/ /____  ____ _/ /__  _____
  / ___/ __/ __ \/ / _ \/ __ \   / __ \/ / / /  / /_/ ___/ / _ \/ __ \/ __  / / / / /    / ___/ __/ _ \/ __ `/ / _ \/ ___/
 (__  ) /_/ /_/ / /  __/ / / /  / /_/ / /_/ /  / __/ /  / /  __/ / / / /_/ / / /_/ /    (__  ) /_/  __/ /_/ / /  __/ /    
/____/\__/\____/_/\___/_/ /_/  /_.___/\__, /  /_/ /_/  /_/\___/_/ /_/\__,_/_/\__, /____/____/\__/\___/\__,_/_/\___/_/     
                                     /____/                                 /____/_____/                                  
--]]

if (not CLIENT) then return end
local zfs_Halotable = {}
local trace
local traceEnt

hook.Add("PreDrawHalos", "zmlab_AddHalos", function()
	if (zmlab.config.meth_Consumable) then
		if (CurTime() > (lastTrace or 1)) then
			zfs_Halotable = {}
			lastTrace = CurTime() + 0.3
			trace = LocalPlayer():GetEyeTrace()
			traceEnt = trace.Entity

			-- Adds Halo
			if (IsValid(traceEnt) and traceEnt:GetClass() == "zmlab_meth_baggy") then
				table.insert(zfs_Halotable, traceEnt)
			end
		end

		halo.Add(zfs_Halotable, Color(255, 255, 255), 3, 3, 2, true, true)
	end
end)
