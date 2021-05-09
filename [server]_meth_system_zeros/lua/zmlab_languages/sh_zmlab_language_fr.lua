--[[
Server Name: ▌ Icefuse.net ▌ DarkRP 100k Start ▌ Bitminers-Slots-Unbox ▌
Server IP:   208.103.169.42:27015
File Path:   addons/[server]_meth_system_zeros/lua/zmlab_languages/sh_zmlab_language_fr.lua
		 __        __              __             ____     _                ____                __             __         
   _____/ /_____  / /__  ____     / /_  __  __   / __/____(_)__  ____  ____/ / /_  __     _____/ /____  ____ _/ /__  _____
  / ___/ __/ __ \/ / _ \/ __ \   / __ \/ / / /  / /_/ ___/ / _ \/ __ \/ __  / / / / /    / ___/ __/ _ \/ __ `/ / _ \/ ___/
 (__  ) /_/ /_/ / /  __/ / / /  / /_/ / /_/ /  / __/ /  / /  __/ / / / /_/ / / /_/ /    (__  ) /_/  __/ /_/ / /  __/ /    
/____/\__/\____/_/\___/_/ /_/  /_.___/\__, /  /_/ /_/  /_/\___/_/ /_/\__,_/_/\__, /____/____/\__/\___/\__,_/_/\___/_/     
                                     /____/                                 /____/_____/                                  
--]]

zmlab = zmlab or {}
zmlab.language = zmlab.language or {}

if (zmlab.config.SelectedLanguage == "fr") then
	--General Information
	zmlab.language.General_Interactjob = "Vous n'avez pas le bon métier pour intéragir avec ce dernier !"
	--TransportCrate Information
	zmlab.language.transportcrate_collect = "+$methAmountg de Meth"
	-- Meth Buyer Npc
	zmlab.language.methbuyer_title = "Acheteur de Meth"
	zmlab.language.methbuyer_wrongjob = "Tu n'as rien à faire ici !"
	zmlab.language.methbuyer_nometh = "Reviens quand tu auras quelque chose pour moi !"
	zmlab.language.methbuyer_soldMeth = "Vous avez vendu $methAmountg de Meth pour $earning$currency"
	zmlab.language.methbuyer_requestfail = "Vous avez déjà un point de chute assigné !"
	zmlab.language.methbuyer_requestfail_cooldown = "C'est trop chaud en ce moment, revenez dans $DropRequestCoolDown secondes !"
	zmlab.language.methbuyer_requestfail_nonfound = "Il n'y a pas de point de chute disponible pour le moment, revenez plus tard."
	zmlab.language.methbuyer_dropoff_assigned = "Je t'ai assigné un point de chute, dépêche-toi"
	zmlab.language.methbuyer_dropoff_wrongguy = "Nous attendions quelqu'un d'autre \n mais merci, nous envoyons l'argent à $deliverguy"
	-- Meth DropOffPoint
	zmlab.language.dropoffpoint_title = "Point de chute de la Meth"
	-- Combiner
	zmlab.language.combiner_nextstep = "Prochaine étape:"
	zmlab.language.combiner_filter = "Filtre installé !"
	zmlab.language.combiner_danger = "DANGER !"
	zmlab.language.combiner_processing = "Traitement.."
	zmlab.language.combiner_methsludge = "Boues de méthyle: "
	zmlab.language.combiner_step01 = "Ajouter de la méthylamine"
	zmlab.language.combiner_step02 = "Traitement.."
	zmlab.language.combiner_step03 = "Ajouter de l'aluminium"
	zmlab.language.combiner_step04 = "Traitement.."
	zmlab.language.combiner_step05 = "Ajoutez un Filtre pour réduire \nle gaz toxique !"
	zmlab.language.combiner_step06 = "Boues de méthyle en cours finition"
	zmlab.language.combiner_step07 = "Boue de méthyle disponible,\nCollecter avec le plateau de congélation"
	zmlab.language.combiner_step08 = "Nettoyez le combineur \navant la prochaine utilisation"
end
