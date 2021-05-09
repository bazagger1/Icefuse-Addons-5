--[[
Server Name: ▌ Icefuse.net ▌ DarkRP 100k Start ▌ Bitminers-Slots-Unbox ▌
Server IP:   208.103.169.42:27015
File Path:   addons/[server]_meth_system_zeros/lua/entities/zmlab_combiner/shared.lua
		 __        __              __             ____     _                ____                __             __         
   _____/ /_____  / /__  ____     / /_  __  __   / __/____(_)__  ____  ____/ / /_  __     _____/ /____  ____ _/ /__  _____
  / ___/ __/ __ \/ / _ \/ __ \   / __ \/ / / /  / /_/ ___/ / _ \/ __ \/ __  / / / / /    / ___/ __/ _ \/ __ `/ / _ \/ ___/
 (__  ) /_/ /_/ / /  __/ / / /  / /_/ / /_/ /  / __/ /  / /  __/ / / / /_/ / / /_/ /    (__  ) /_/  __/ /_/ / /  __/ /    
/____/\__/\____/_/\___/_/ /_/  /_.___/\__, /  /_/ /_/  /_/\___/_/ /_/\__,_/_/\__, /____/____/\__/\___/\__,_/_/\___/_/     
                                     /____/                                 /____/_____/                                  
--]]

ENT.Type = "anim"
ENT.Base = "base_anim"
ENT.AutomaticFrameAdvance = true
ENT.RenderGroup = RENDERGROUP_TRANSLUCENT
ENT.Spawnable = true
ENT.AdminSpawnable = true
ENT.PrintName = "Combiner"
ENT.Author = "Icefuse Networks"
ENT.Information = "info"
ENT.Category = "Icefuse Meth (Enhanced)"

function ENT:SetupDataTables()
	self:NetworkVar("Int", 0, "Aluminium")
	self:NetworkVar("Int", 1, "Methylamin")
	self:NetworkVar("Int", 2, "Stage")
	self:NetworkVar("Int", 3, "NeedAluminium")
	self:NetworkVar("Int", 4, "NeedMethylamin")
	self:NetworkVar("Bool", 0, "HasFilter")
	self:NetworkVar("Bool", 1, "HasTray")
	self:NetworkVar("Float", 0, "ProcessingTime")
	self:NetworkVar("Float", 1, "MaxProcessingTime")
	self:NetworkVar("Float", 2, "MethSludge")
	self:NetworkVar("Float", 3, "MaxMethSludge")
	self:NetworkVar("Float", 4, "CleaningProgress")
end
