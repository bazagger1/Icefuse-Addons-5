--[[
Server Name: ▌ Icefuse.net ▌ DarkRP 100k Start ▌ Bitminers-Slots-Unbox ▌
Server IP:   208.103.169.42:27015
File Path:   addons/[server]_meth_system_zeros/lua/entities/zmlab_frezzer/cl_init.lua
		 __        __              __             ____     _                ____                __             __         
   _____/ /_____  / /__  ____     / /_  __  __   / __/____(_)__  ____  ____/ / /_  __     _____/ /____  ____ _/ /__  _____
  / ___/ __/ __ \/ / _ \/ __ \   / __ \/ / / /  / /_/ ___/ / _ \/ __ \/ __  / / / / /    / ___/ __/ _ \/ __ `/ / _ \/ ___/
 (__  ) /_/ /_/ / /  __/ / / /  / /_/ / /_/ /  / __/ /  / /  __/ / / / /_/ / / /_/ /    (__  ) /_/  __/ /_/ / /  __/ /    
/____/\__/\____/_/\___/_/ /_/  /_.___/\__, /  /_/ /_/  /_/\___/_/ /_/\__,_/_/\__, /____/____/\__/\___/\__,_/_/\___/_/     
                                     /____/                                 /____/_____/                                  
--]]

include("shared.lua")

local laser = Material("cable/redlaser")

function ENT:Draw_FilterIndicator()
	render.SetMaterial(laser)
	local startPos = self:GetPos() + self:GetUp() * 5 + self:GetRight() * 22
	local endPos = startPos + self:GetUp() * 70
	render.DrawBeam(startPos, endPos, 5, 1, 1, Color(255, 0, 0, 0))
end

function ENT:Draw()
	self:DrawModel()
	if (LocalPlayer():GetPos():Distance(self:GetPos()) > 1000) then return end

	if (zmlab.config.debug) then
		self:Draw_FilterIndicator()
	end

	local dlight01 = DynamicLight(self:EntIndex())

	if (dlight01 and self:GetIsFrezzig()) then
		dlight01.pos = self:GetPos() + self:GetUp() * 50 + self:GetRight() * 20
		dlight01.r = 0
		dlight01.g = 200
		dlight01.b = 255
		dlight01.brightness = 2
		dlight01.Decay = 1000
		dlight01.Size = 300
		dlight01.DieTime = CurTime() + 1
	end
end

function ENT:DrawTranslucent()
	self:Draw()
end
