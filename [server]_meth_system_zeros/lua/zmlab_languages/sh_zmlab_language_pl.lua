--[[
Server Name: ▌ Icefuse.net ▌ DarkRP 100k Start ▌ Bitminers-Slots-Unbox ▌
Server IP:   208.103.169.42:27015
File Path:   addons/[server]_meth_system_zeros/lua/zmlab_languages/sh_zmlab_language_pl.lua
		 __        __              __             ____     _                ____                __             __         
   _____/ /_____  / /__  ____     / /_  __  __   / __/____(_)__  ____  ____/ / /_  __     _____/ /____  ____ _/ /__  _____
  / ___/ __/ __ \/ / _ \/ __ \   / __ \/ / / /  / /_/ ___/ / _ \/ __ \/ __  / / / / /    / ___/ __/ _ \/ __ `/ / _ \/ ___/
 (__  ) /_/ /_/ / /  __/ / / /  / /_/ / /_/ /  / __/ /  / /  __/ / / / /_/ / / /_/ /    (__  ) /_/  __/ /_/ / /  __/ /    
/____/\__/\____/_/\___/_/ /_/  /_.___/\__, /  /_/ /_/  /_/\___/_/ /_/\__,_/_/\__, /____/____/\__/\___/\__,_/_/\___/_/     
                                     /____/                                 /____/_____/                                  
--]]

zmlab = zmlab or {}
zmlab.language = zmlab.language or {}

if (zmlab.config.SelectedLanguage == "pl") then
	--General Information
	zmlab.language.General_Interactjob = "Nie posiadasz odpowiednej pracy, aby użyć tego!"
	--TransportCrate Information
	zmlab.language.transportcrate_collect = "+$methAmountg Mety"
	-- Meth Buyer Npc
	zmlab.language.methbuyer_title = "Kupca Mety"
	zmlab.language.methbuyer_wrongjob = "Nie ta praca, kolego!"
	zmlab.language.methbuyer_nometh = "Wróc do mnie jak zdobędziesz coś dla mnie!"
	zmlab.language.methbuyer_soldMeth = "Sprzedałeś $methAmountg Mety za $earning$currency"
	zmlab.language.methbuyer_requestfail = "Już masz miejsce do zrzutu zaznaczone"
	zmlab.language.methbuyer_requestfail_cooldown = "To jest zbyt ryzykowne, wróc za $DropRequestCoolDown sekund!"
	zmlab.language.methbuyer_requestfail_nonfound = "Chwilowo nie jest wyznaczony punkt zrzutu, wróc później"
	zmlab.language.methbuyer_dropoff_assigned = "Wyznaczyłem Ci miejsce zrzutu, śpiesz się!"
	zmlab.language.methbuyer_dropoff_wrongguy = "Spodziewaliśmy się kogoś innego \n ale dzięki, my również wysyłamy pieniądze $deliverguy"
	-- Meth DropOffPoint
	zmlab.language.dropoffpoint_title = "Punkt zrzutu Mety"
	-- Combiner
	zmlab.language.combiner_nextstep = "Następny Krok:"
	zmlab.language.combiner_filter = "Filtr zainstalowany!"
	zmlab.language.combiner_danger = "UWAGA!"
	zmlab.language.combiner_processing = "Procesowanie.."
	zmlab.language.combiner_methsludge = "Płynna Meta: "
	zmlab.language.combiner_step01 = "Dodaj Metyloaminę"
	zmlab.language.combiner_step02 = "Procesowanie.."
	zmlab.language.combiner_step03 = "Dodaj Aluminium"
	zmlab.language.combiner_step04 = "Procesowanie.."
	zmlab.language.combiner_step05 = "Dodaj Filtr aby zredukować emisję \nTetrahydroglinianu"
	zmlab.language.combiner_step06 = "Kończenie płynnej Mety"
	zmlab.language.combiner_step07 = "Płynna Meta gotowa,\nZbierz za pomocą tacki do mrożenia"
	zmlab.language.combiner_step08 = "Wyczyśc Mikser Chemiczy \nprzed kolejnym użytkiem!"
end
