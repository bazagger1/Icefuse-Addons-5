--[[
Server Name: ▌ Icefuse.net ▌ DarkRP 100k Start ▌ Bitminers-Slots-Unbox ▌
Server IP:   208.103.169.42:27015
File Path:   addons/[server]_meth_system_zeros/lua/entities/zmlab_frezzingtray/cl_init.lua
		 __        __              __             ____     _                ____                __             __         
   _____/ /_____  / /__  ____     / /_  __  __   / __/____(_)__  ____  ____/ / /_  __     _____/ /____  ____ _/ /__  _____
  / ___/ __/ __ \/ / _ \/ __ \   / __ \/ / / /  / /_/ ___/ / _ \/ __ \/ __  / / / / /    / ___/ __/ _ \/ __ `/ / _ \/ ___/
 (__  ) /_/ /_/ / /  __/ / / /  / /_/ / /_/ /  / __/ /  / /  __/ / / / /_/ / / /_/ /    (__  ) /_/  __/ /_/ / /  __/ /    
/____/\__/\____/_/\___/_/ /_/  /_.___/\__, /  /_/ /_/  /_/\___/_/ /_/\__,_/_/\__, /____/____/\__/\___/\__,_/_/\___/_/     
                                     /____/                                 /____/_____/                                  
--]]

include("shared.lua")

function ENT:Draw()
	self:DrawModel()
	if (LocalPlayer():GetPos():Distance(self:GetPos()) > 300) then return end

	if (self:GetInBucket() > 0) then
		self:DrawInfo()
	end
end

function ENT:DrawInfo()
	local Pos = self:GetPos()
	local Ang = self:GetAngles()
	Ang:RotateAroundAxis(Ang:Forward(), 90)
	Ang:RotateAroundAxis(Ang:Forward(), -90)
	Pos = Pos + self:GetRight() * -1
	Pos = Pos + self:GetUp() * 1
	cam.Start3D2D(Pos, Ang, 0.2)
	local text = math.Round(self:GetInBucket()) .. "g"

	draw.DrawText(text, "zmlab_font4", 50, -20, Color(255, 255, 255, 255), TEXT_ALIGN_RIGHT)
	cam.End3D2D()
end

function ENT:DrawTranslucent()
	self:Draw()
end
