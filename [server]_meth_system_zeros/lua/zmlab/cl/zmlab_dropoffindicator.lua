--[[
Server Name: ▌ Icefuse.net ▌ DarkRP 100k Start ▌ Bitminers-Slots-Unbox ▌
Server IP:   208.103.169.42:27015
File Path:   addons/[server]_meth_system_zeros/lua/zmlab/cl/zmlab_dropoffindicator.lua
		 __        __              __             ____     _                ____                __             __         
   _____/ /_____  / /__  ____     / /_  __  __   / __/____(_)__  ____  ____/ / /_  __     _____/ /____  ____ _/ /__  _____
  / ___/ __/ __ \/ / _ \/ __ \   / __ \/ / / /  / /_/ ___/ / _ \/ __ \/ __  / / / / /    / ___/ __/ _ \/ __ `/ / _ \/ ___/
 (__  ) /_/ /_/ / /  __/ / / /  / /_/ / /_/ /  / __/ /  / /  __/ / / / /_/ / / /_/ /    (__  ) /_/  __/ /_/ / /  __/ /    
/____/\__/\____/_/\___/_/ /_/  /_.___/\__, /  /_/ /_/  /_/\___/_/ /_/\__,_/_/\__, /____/____/\__/\___/\__,_/_/\___/_/     
                                     /____/                                 /____/_____/                                  
--]]

if not CLIENT then return end
zmlab = zmlab or {}
zmlab.f = zmlab.f or {}

local function draw_Circle(x, y, radius, seg)
	local cir = {}

	table.insert(cir, {
		x = x,
		y = y,
		u = 0.5,
		v = 0.5
	})

	for i = 0, seg do
		local a = math.rad((i / seg) * -360)

		table.insert(cir, {
			x = x + math.sin(a) * radius,
			y = y + math.cos(a) * radius,
			u = math.sin(a) / 2 + 0.5,
			v = math.cos(a) / 2 + 0.5
		})
	end

	local a = math.rad(0) -- This is needed for non absolute segment counts

	table.insert(cir, {
		x = x + math.sin(a) * radius,
		y = y + math.cos(a) * radius,
		u = math.sin(a) / 2 + 0.5,
		v = math.cos(a) / 2 + 0.5
	})

	surface.DrawPoly(cir)
end

local activeIndicators = {}

net.Receive("zmlab_AddDropOffHint", function()
	local dropoffPos = net.ReadVector()

	table.insert(activeIndicators, {
		pos = dropoffPos,
		created = CurTime()
	})

	timer.Simple(zmlab.config.MethBuyer_DeliverTime, function()
		if activeIndicators[1] then
			table.remove(activeIndicators, 1)
		end
	end)
end)

net.Receive("zmlab_RemoveDropOffHint", function()
	if activeIndicators[1] then
		table.remove(activeIndicators, 1)
	end
end)

function zmlab.f.methdropoff_indicator2d()
	local ply = LocalPlayer()

	if IsValid(ply) and ply:Alive() then
		for k, v in pairs(activeIndicators) do
			local pos = v.pos:ToScreen()
			local time = math.Round((v.created + zmlab.config.MethBuyer_DeliverTime) - CurTime())
			local text = zmlab.language.dropoffpoint_title
			if (ply:GetPos():Distance(v.pos) < 100) then return end
			surface.SetDrawColor(zmlab.config.DropOffPoint_CircleColor)
			draw.NoTexture()
			draw_Circle(pos.x, pos.y, 45, 25)
			draw.DrawText("Time: " .. time, "zmlab_font5", pos.x, pos.y + 5, zmlab.config.DropOffPoint_TextColor, TEXT_ALIGN_CENTER)
			draw.DrawText(text, "zmlab_font5", pos.x, pos.y - 10, zmlab.config.DropOffPoint_TextColor, TEXT_ALIGN_CENTER)
		end
	end
end

hook.Add("HUDPaint", "zmlab_methdropoff_indicator2d", zmlab.f.methdropoff_indicator2d)
