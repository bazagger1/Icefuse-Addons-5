--[[
Server Name: ▌ Icefuse.net ▌ DarkRP 100k Start ▌ Bitminers-Slots-Unbox ▌
Server IP:   208.103.169.42:27015
File Path:   addons/[server]_meth_system_zeros/lua/zmlab_languages/sh_zmlab_language_es.lua
		 __        __              __             ____     _                ____                __             __         
   _____/ /_____  / /__  ____     / /_  __  __   / __/____(_)__  ____  ____/ / /_  __     _____/ /____  ____ _/ /__  _____
  / ___/ __/ __ \/ / _ \/ __ \   / __ \/ / / /  / /_/ ___/ / _ \/ __ \/ __  / / / / /    / ___/ __/ _ \/ __ `/ / _ \/ ___/
 (__  ) /_/ /_/ / /  __/ / / /  / /_/ / /_/ /  / __/ /  / /  __/ / / / /_/ / / /_/ /    (__  ) /_/  __/ /_/ / /  __/ /    
/____/\__/\____/_/\___/_/ /_/  /_.___/\__, /  /_/ /_/  /_/\___/_/ /_/\__,_/_/\__, /____/____/\__/\___/\__,_/_/\___/_/     
                                     /____/                                 /____/_____/                                  
--]]

zmlab = zmlab or {}
zmlab.language = zmlab.language or {}

if (zmlab.config.SelectedLanguage == "es") then
    --General Information
    zmlab.language.General_Interactjob = "No tienes el trabajo correcto para interactuar con esto!"
    --TransportCrate Information
    zmlab.language.transportcrate_collect = "+$methAmountg Metanfetamina"
    -- Meth Buyer Npc
    zmlab.language.methbuyer_title = "Comprador de Metanfetamina"
    zmlab.language.methbuyer_wrongjob = "Maldito bastardo!"
    zmlab.language.methbuyer_nometh = "Vuelve de vuelta cuando tengas algo para mí!"
    zmlab.language.methbuyer_soldMeth = "Has vendido $methAmountg metanfetamina por $earning$currency"
    zmlab.language.methbuyer_requestfail = "Ya tienes actualmente un punto de entrega establecido!"
    zmlab.language.methbuyer_requestfail_cooldown = "Actualmente está demaciado caliente, vuelve de vuelta en $DropRequestCoolDown segundos!"
    zmlab.language.methbuyer_requestfail_nonfound = "No hay ningún punto de entrega actualmente, vuelve aquí mas tarde."
    zmlab.language.methbuyer_dropoff_assigned = "Te he asignado un punto de entrega, date prisa."
    zmlab.language.methbuyer_dropoff_wrongguy = "Hemos esperado a alguien mas \n pero gracias, hemos enviado el dinero a $deliverguy"
    -- Meth DropOffPoint
    zmlab.language.dropoffpoint_title = "Punto de Entrega"
    -- Combiner
    zmlab.language.combiner_nextstep = "Paso siguiente:"
    zmlab.language.combiner_filter = "Filtro instalado!"
    zmlab.language.combiner_danger = "PELIGRO!"
    zmlab.language.combiner_processing = "Procesando.."
    zmlab.language.combiner_methsludge = "Lote de Meta: "
    zmlab.language.combiner_step01 = "Agrega metilamina"
    zmlab.language.combiner_step02 = "Procesando"
    zmlab.language.combiner_step03 = "Agrega aluminio"
    zmlab.language.combiner_step04 = "Procesando"
    zmlab.language.combiner_step05 = "Agrega el filtro para reducir \nel gas de hidruro de litio!"
    zmlab.language.combiner_step06 = "Terminando el lote de meta"
    zmlab.language.combiner_step07 = "El lote está listo,\nrecolectalo con la bandeja de congelación!"
    zmlab.language.combiner_step08 = "Limpia el combinador \nantes de usarlo de nuevo"
end
