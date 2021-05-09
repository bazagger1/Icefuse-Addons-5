--[[
Server Name: ▌ Icefuse.net ▌ DarkRP 100k Start ▌ Bitminers-Slots-Unbox ▌
Server IP:   208.103.169.42:27015
File Path:   addons/[server]_meth_system_zeros/lua/zmlab/sh/zmlab_particles_precache.lua
		 __        __              __             ____     _                ____                __             __         
   _____/ /_____  / /__  ____     / /_  __  __   / __/____(_)__  ____  ____/ / /_  __     _____/ /____  ____ _/ /__  _____
  / ___/ __/ __ \/ / _ \/ __ \   / __ \/ / / /  / /_/ ___/ / _ \/ __ \/ __  / / / / /    / ___/ __/ _ \/ __ `/ / _ \/ ___/
 (__  ) /_/ /_/ / /  __/ / / /  / /_/ / /_/ /  / __/ /  / /  __/ / / / /_/ / / /_/ /    (__  ) /_/  __/ /_/ / /  __/ /    
/____/\__/\____/_/\___/_/ /_/  /_.___/\__, /  /_/ /_/  /_/\___/_/ /_/\__,_/_/\__, /____/____/\__/\___/\__,_/_/\___/_/     
                                     /____/                                 /____/_____/                                  
--]]

AddCSLuaFile()
game.AddParticles("particles/zerochain_zmlab_vfx.pcf")
game.AddParticles("particles/zerochain_zmlab_filter_vfx.pcf")
game.AddParticles("particles/zerochain_zmlab_meth_vfx.pcf")
game.AddParticles("particles/zerochain_zmlab_liquids_vfx.pcf")
PrecacheParticleSystem("zmlab_aluminium_fill01")
PrecacheParticleSystem("zmlab_cleaning")
PrecacheParticleSystem("zmlab_frozen_tray")
PrecacheParticleSystem("zmlab_meth_filling")
PrecacheParticleSystem("zmlab_meth_breaking")
PrecacheParticleSystem("zmlab_methylamin_fill")
PrecacheParticleSystem("zmlab_aluminium_drops")
PrecacheParticleSystem("zmlab_sell_effect_small")
PrecacheParticleSystem("zmlab_sell_effect_big")
PrecacheParticleSystem("zmlab_methsludge_fill")
PrecacheParticleSystem("zmlab_cleand_gas")
PrecacheParticleSystem("zmlab_poison_gas")
