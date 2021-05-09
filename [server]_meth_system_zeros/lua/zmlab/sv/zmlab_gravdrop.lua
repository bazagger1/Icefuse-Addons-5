--[[
Server Name: ▌ Icefuse.net ▌ DarkRP 100k Start ▌ Bitminers-Slots-Unbox ▌
Server IP:   208.103.169.42:27015
File Path:   addons/[server]_meth_system_zeros/lua/zmlab/sv/zmlab_gravdrop.lua
		 __        __              __             ____     _                ____                __             __         
   _____/ /_____  / /__  ____     / /_  __  __   / __/____(_)__  ____  ____/ / /_  __     _____/ /____  ____ _/ /__  _____
  / ___/ __/ __ \/ / _ \/ __ \   / __ \/ / / /  / /_/ ___/ / _ \/ __ \/ __  / / / / /    / ___/ __/ _ \/ __ `/ / _ \/ ___/
 (__  ) /_/ /_/ / /  __/ / / /  / /_/ / /_/ /  / __/ /  / /  __/ / / / /_/ / / /_/ /    (__  ) /_/  __/ /_/ / /  __/ /    
/____/\__/\____/_/\___/_/ /_/  /_.___/\__, /  /_/ /_/  /_/\___/_/ /_/\__,_/_/\__, /____/____/\__/\___/\__,_/_/\___/_/     
                                     /____/                                 /____/_____/                                  
--]]

if not SERVER then return end
zmlab = zmlab or {}
zmlab.f = zmlab.f or {}

function zmlab.f.GravGun_DropOffPoint(ply, ent)
	if ((ent:GetClass() == "zmlab_meth" or ent:GetClass() == "zmlab_collectcrate" or ent:GetClass() == "zmlab_palette") and ent:GetMethAmount() > 0) then
		for k, v in pairs(ents.FindByClass("zmlab_methdropoff")) do
			if (v:GetPos():Distance(ent:GetPos()) < 45 and IsValid(v.Deliver_Player)) then
				if (ply ~= v.Deliver_Player) then
					local string = string.Replace(zmlab.language.methbuyer_dropoff_wrongguy, "$deliverguy", tostring(v.Deliver_Player:Nick()))
					zmlab.f.Notify(ply, string, 0)
				end

				-- Gives the money
				local Earning = ent:GetMethAmount() * zmlab.config.MethBuyer_SellPrice
				zmlab.f.GiveMoney(v.Deliver_Player, Earning)
				local string = string.Replace(zmlab.language.methbuyer_soldMeth, "$methAmount", tostring(math.Round(ent:GetMethAmount())))
				string = string.Replace(string, "$earning", tostring(Earning))
				string = string.Replace(string, "$currency", zmlab.config.MethBuyer_Currency)
				zmlab.f.Notify(v.Deliver_Player, string, 0)

				-- Create VFX
				if (zmlab.config.MethBuyer_ShowEffect) then
					if (ent:GetClass() == "zmlab_meth") then
						zmlab.f.CreateEffectTable("zmlab_sell_effect_small", "Meth_Sell01", v, v:GetAngles(), v:GetPos())
					elseif (ent:GetClass() == "zmlab_collectcrate") then
						zmlab.f.CreateEffectTable("zmlab_sell_effect_big", "Meth_Sell01", v, v:GetAngles(), v:GetPos())
					end
				end

				if (zmlab.config.MethBuyer_DropOffPoint_OnTimeUse) then
					v:DropOff_Close()
				end

				ent:Remove()
				break
			end
		end
	end
end

function zmlab.f.GravGun_CollectCrate(ply, ent)
	if (ent:GetClass() == "zmlab_meth" or ent:GetClass() == "zmlab_meth_baggy") then
		for k, v in pairs(ents.FindInSphere(ent:GetPos(), 15)) do
			if (v:GetClass() == "zmlab_collectcrate" and v:GetMethAmount() < zmlab.config.TransportCrate_Capacity and v:GetPos():Distance(ent:GetPos()) < 40) then
				v:Inputer(ent)
				CheckOneFailed = false
				break
			end
		end
	elseif (ent:GetClass() == "zmlab_collectcrate") then
		for k, v in pairs(ents.FindInSphere(ent:GetPos(), 30)) do
			if (v:GetClass() == "zmlab_meth" and v:GetMethAmount() > 0 and ent:GetMethAmount() < zmlab.config.TransportCrate_Capacity) then
				ent:Inputer(v)
			elseif (v:GetClass() == "zmlab_meth_baggy" and v:GetMethAmount() > 0 and ent:GetMethAmount() < zmlab.config.TransportCrate_Capacity) then
				ent:Inputer(v)
			end
		end
	end
end

function zmlab.f.GravGun_MainLogic(ply, ent)
	zmlab.f.GravGun_DropOffPoint(ply, ent)

	-- Here we make sure the entity is still valid and not removed
	if (IsValid(ent)) then
		zmlab.f.GravGun_CollectCrate(ply, ent)
	end
end

hook.Add("GravGunOnDropped", "zmlab_GravGunOnDropped", zmlab.f.GravGun_MainLogic)
