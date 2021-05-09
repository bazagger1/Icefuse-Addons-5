--[[
Server Name: ▌ Icefuse.net ▌ DarkRP 100k Start ▌ Bitminers-Slots-Unbox ▌
Server IP:   208.103.169.42:27015
File Path:   addons/[server]_meth_system_zeros/lua/zmlab/sh/zmlab_config.lua
		 __        __              __             ____     _                ____                __             __         
   _____/ /_____  / /__  ____     / /_  __  __   / __/____(_)__  ____  ____/ / /_  __     _____/ /____  ____ _/ /__  _____
  / ___/ __/ __ \/ / _ \/ __ \   / __ \/ / / /  / /_/ ___/ / _ \/ __ \/ __  / / / / /    / ___/ __/ _ \/ __ `/ / _ \/ ___/
 (__  ) /_/ /_/ / /  __/ / / /  / /_/ / /_/ /  / __/ /  / /  __/ / / / /_/ / / /_/ /    (__  ) /_/  __/ /_/ / /  __/ /    
/____/\__/\____/_/\___/_/ /_/  /_.___/\__, /  /_/ /_/  /_/\___/_/ /_/\__,_/_/\__, /____/____/\__/\___/\__,_/_/\___/_/     
                                     /____/                                 /____/_____/                                  
--]]

zmlab = zmlab || {}
zmlab.config = zmlab.config || {}

zmlab.config.EnableResourceAddfile = false
zmlab.config.debug = false
zmlab.config.SelectedLanguage = "en"

-- These Ranks are allowed do use the Chat Command  !savezmlab  which saves all the NPCs and DropOff Points
zmlab.config.allowedRanks = {
	"c_e_o",
	"developer",
}

zmlab.config.NoEffects = true
zmlab.config.GameMode = "DarkRP"
zmlab.config.MethBuyer_Currency = "$"

-- The Damage the entitys have do take before they get destroyed. Setting it to -1 disables it

zmlab.config.Damageable = {}
zmlab.config.Damageable["Combiner"] = {EntityHealth = 200}
zmlab.config.Damageable["Frezzer"] = {EntityHealth = 150}
zmlab.config.Damageable["MethylaminBarrel"] = {EntityHealth = 25}
zmlab.config.Damageable["Filter"] = {EntityHealth = 100}

-- How much MethSludge do we get if we dont use a filter 1 = 100%, 0.5 = 50%, 0.25 = 25%
zmlab.config.NoFilterPenalty = 0.25

-- The Health of the Filter (Setting it to 0 disables the Filter losing Health)
zmlab.config.FilterHealth = 100
-- *Note* When the Combiner is in the Filtering Process then the Filter is gonna lose Health every Second if he is installed.

-- The damage a player in distance gets per Second if there is no filter installed (Setting it to 0 disables the Damage)
zmlab.config.PoisenDamage = 1





-- Meth

-- Should the player drop all of his meth on Death?
zmlab.config.player_DropMeth_OnDeath = true

-- Should the meth be consumable?
zmlab.config.meth_Consumable = true

-- The Damage a player gets when consuming meth
zmlab.config.meth_ConsumableDamage = 10

-- The duration a bag of meth can get you high, This can stack by multiple consumbtion
zmlab.config.meth_EffectDuration = 30

-- This enables the music that plays while the player is high
-- *Note The music can only be heard from the player that uses the drug
zmlab.config.meth_EffectMusic = true

zmlab.config.swep_extractor_disable = false

-- How much Meth do we extract per click
-- *Note This extracts a small bag of meth from a transport crate or Big Bag
zmlab.config.swep_extractor_amount = 25




-- Production
-- This Values Defines needed Methylamin amount
zmlab.config.MaxMethylamin = 5

-- Do we want do randomize the needed Methylamin amount for each Cook? (If yes then it will use zmlab.config.MaxMethylamin as max value)
zmlab.config.RndMethylamin = false

-- This Values Defines needed Aluminium amount
zmlab.config.MaxAluminium = 5

-- Do we want do randomize the needed Aluminium amount for each Cook? (If yes then it will use zmlab.config.MaxAluminium as max value)
zmlab.config.RndAluminium = false

-- This Values Defines the Producing Time in seconds
zmlab.config.MixProcessingTime = 60 -- default value = 60

-- This Values Defines the Finishing MethSludge Time in seconds
zmlab.config.FinishProcessingTime = 100 -- default value = 100

-- This Values Defines the Filtering Time in seconds.
zmlab.config.FilterProcessingTime = 200 -- default value = 200

-- *Note* I made FilterProcessingTime as a seperate Value since in this time the Filter can lose Health and the Player can get Damage depending on the Values bellow.

-- Post Production
-- This Values Defines the Meth Sludge the combiner can produce per Cook
zmlab.config.Max_Meth_perBatch = 1200

-- This Values Defines how fast the Meth Sludge gets Pumped out of the Combiner
zmlab.config.Combiner_PumpAmount = 10

-- The amount a frezzing Tray can hold
zmlab.config.TrayCapacity = 120

-- How much dirty gets the combiner per Batch (Setting it to 0 means it never gets dirty)
zmlab.config.Combiner_DirtAmount = 125

-- How much dirt can the player clean per Use/Click
zmlab.config.Combiner_CleanAmount = 10

-- How much Meth do we lose when breaking it (0.05 = 5%)
zmlab.config.MethBreakLoss = 0 -- 0.05

-- How much Meth does remain after its frozen/dry (0.05 = 5%)
zmlab.config.MethFrezzeLoss = 0 -- 0.1

-- The Time in seconds it takes for the Meth do frezze
zmlab.config.FrezzingProcess = 25

-- The amount a Transport crate can hold
zmlab.config.TransportCrate_Capacity = 1200

-- This will let you collect the TransportCrate no matter if its complete full or not (Only works on zmlab.config.MethBuyer_Mode 1 and 3)
zmlab.config.TransportCrate_NoWait = true

-- Should the TransportCrate collide with everything?
zmlab.config.TransportCrate_FullCollide = false


-- Meth Buyer

-- The Model of the Meth Buyer
zmlab.config.MethBuyer_Model = "models/Humans/Group03/male_07.mdl"
-- Note* You need do make sure the Model got compiled with the animations you want to use

-- The Idle Animations of the Meth Buyer
zmlab.config.MethBuyer_anim_idle = {"idle_angry","idle_subtle"} -- "idle_angry","idle_subtle"

-- The Sell Animations of the Meth Buyer
zmlab.config.MethBuyer_anim_sell = {"takepackage","cheer1","cheer2"} -- "takepackage","cheer1","cheer2"

-- Sell Price per unit
zmlab.config.MethBuyer_SellPrice = 15

-- Here you can add all the Jobs that can sell Meth
-- *Note* This has do be the exact name of the Job
zmlab.config.MethBuyer_customers = {
	"Master Meth Cook [T6]",
	"Meth Cook",
	
	"Mob Boss",
	"Gangster",
	"Thug",
	"Thief",
	"Cultist Leader",
	"Cultist Member",
	"Blackhat Hacker",
--	"Coka Plant Farmer",
--	"Opium Cook",
--	"Moonshiner",
	"Ku Klux Klan Leader [T6]",
	"Ku Klux Klan Member [T5]",
	"Ballas [T6]",
	"The Families [T6]",
	"Terrorist Leader [T6]",
	"Terrorist [T5]",
	"Marauder [T4]",
	"Pro Thief [T2]",
	"Pro Hacker [T1]",
}

-- Do we want do Show a Sell/Cash Effect if the user sells something?
zmlab.config.MethBuyer_ShowEffect = false

-- What Sell mode do we want?
zmlab.config.MethBuyer_Mode = 1
-- 1 = Methcrates can be absorbed by Players and sold by the MethBuyer on use
-- 2 = Methcrates cant be absorbed and the MethBuyer tells you a dropoff point instead
-- 3 = Methcrates can be absorbed and the MethBuyer tells you a dropoff point

-- Do we want the DropOff Point do close as soon as it gets a Meth Drop
zmlab.config.MethBuyer_DropOffPoint_OnTimeUse = true

-- The Time in seconds before Dropoff Point closes.
zmlab.config.MethBuyer_DeliverTime = 60

-- The Time in seconds till you can request another dropoff point.
zmlab.config.MethBuyer_DeliverRequest_CoolDown = 60

-- The Color of the Meth Drop Indicator Circle
zmlab.config.DropOffPoint_CircleColor = Color( 0, 200, 255, 255)

-- The Color of the Meth Drop Indicator Text
zmlab.config.DropOffPoint_TextColor = Color( 255, 255, 255, 255)
