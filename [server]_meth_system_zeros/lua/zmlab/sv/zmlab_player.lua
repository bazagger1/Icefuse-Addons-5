--[[
Server Name: ▌ Icefuse.net ▌ DarkRP 100k Start ▌ Bitminers-Slots-Unbox ▌
Server IP:   208.103.169.42:27015
File Path:   addons/[server]_meth_system_zeros/lua/zmlab/sv/zmlab_player.lua
		 __        __              __             ____     _                ____                __             __         
   _____/ /_____  / /__  ____     / /_  __  __   / __/____(_)__  ____  ____/ / /_  __     _____/ /____  ____ _/ /__  _____
  / ___/ __/ __ \/ / _ \/ __ \   / __ \/ / / /  / /_/ ___/ / _ \/ __ \/ __  / / / / /    / ___/ __/ _ \/ __ `/ / _ \/ ___/
 (__  ) /_/ /_/ / /  __/ / / /  / /_/ / /_/ /  / __/ /  / /  __/ / / / /_/ / / /_/ /    (__  ) /_/  __/ /_/ / /  __/ /    
/____/\__/\____/_/\___/_/ /_/  /_.___/\__, /  /_/ /_/  /_/\___/_/ /_/\__,_/_/\__, /____/____/\__/\___/\__,_/_/\___/_/     
                                     /____/                                 /____/_____/                                  
--]]

if (not SERVER) then return end
zmlab = zmlab or {}
zmlab.f = zmlab.f or {}
util.AddNetworkString("zmlab_stop_screeneffects")

hook.Add("PlayerDeath", "zmlab_PlayerDeath", function(victim, inflictor, attacker)
    net.Start("zmlab_stop_screeneffects")
    net.Send(victim)

    if (zmlab.config.player_DropMeth_OnDeath) then
        zmlab.f.PlayerDeath(victim, inflictor, attacker)
    end
end)

local function spawnMethBox(pos)
    local ent = ents.Create("zmlab_collectcrate")
    ent:SetAngles(Angle(0, 0, 0))
    ent:SetPos(pos)
    ent:Spawn()
    ent:Activate()

    return ent
end

function zmlab.f.PlayerDeath(victim, inflictor, attacker)
    if (IsValid(victim) and victim.zmlab_meth ~= nil and victim.zmlab_meth > 0) then
        local meth = spawnMethBox(victim:GetPos() + Vector(0, 0, 10))
        meth:SetMethAmount(victim.zmlab_meth)
        meth:UpdateVisuals()
        victim.zmlab_meth = 0
        victim.zmlab_OnMeth = false

        if (ply.zmlab_old_RunSpeed) then
            victim:SetRunSpeed(ply.zmlab_old_RunSpeed)
        end

        if (ply.zmlab_old_WalkSpeed) then
            victim:SetWalkSpeed(ply.zmlab_old_WalkSpeed)
        end
    end
end

hook.Add("EntityTakeDamage", "zmlab_PlayerOnMeth_EntityTakeDamage", function(target, dmginf)
    if target:IsPlayer() and target.zmlab_OnMeth then
        dmginf:ScaleDamage(0.5)
    end
end)

local function PlayerCleanUp(pl)
    if (IsValid(pl.DropOffPoint)) then
        pl.DropOffPoint:DropOff_Close()
    end
end

hook.Add("OnPlayerChangedTeam", "zmlab_OnPlayerChangedTeam", function(pl, before, after)
    PlayerCleanUp(pl)
end)

hook.Add("PostPlayerDeath", "zmlab_PostPlayerDeath", function(pl, text)
    PlayerCleanUp(pl)
end)

hook.Add("PlayerSilentDeath", "zmlab_PlayerSilentDeath", function(pl, text)
    PlayerCleanUp(pl)
end)
