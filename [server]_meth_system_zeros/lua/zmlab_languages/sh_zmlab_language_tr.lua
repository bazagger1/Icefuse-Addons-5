--[[
Server Name: ▌ Icefuse.net ▌ DarkRP 100k Start ▌ Bitminers-Slots-Unbox ▌
Server IP:   208.103.169.42:27015
File Path:   addons/[server]_meth_system_zeros/lua/zmlab_languages/sh_zmlab_language_tr.lua
		 __        __              __             ____     _                ____                __             __         
   _____/ /_____  / /__  ____     / /_  __  __   / __/____(_)__  ____  ____/ / /_  __     _____/ /____  ____ _/ /__  _____
  / ___/ __/ __ \/ / _ \/ __ \   / __ \/ / / /  / /_/ ___/ / _ \/ __ \/ __  / / / / /    / ___/ __/ _ \/ __ `/ / _ \/ ___/
 (__  ) /_/ /_/ / /  __/ / / /  / /_/ / /_/ /  / __/ /  / /  __/ / / / /_/ / / /_/ /    (__  ) /_/  __/ /_/ / /  __/ /    
/____/\__/\____/_/\___/_/ /_/  /_.___/\__, /  /_/ /_/  /_/\___/_/ /_/\__,_/_/\__, /____/____/\__/\___/\__,_/_/\___/_/     
                                     /____/                                 /____/_____/                                  
--]]

zmlab = zmlab or {}
zmlab.language = zmlab.language or {}

if (zmlab.config.SelectedLanguage == "tr") then
	--General Information
	zmlab.language.General_Interactjob = "Bunu yapabilecek bir meslekte değilsin!"
	--TransportCrate Information
	zmlab.language.transportcrate_collect = "+$methAmountg Meth"
	-- Meth Buyer Npc
	zmlab.language.methbuyer_title = "Meth Aracısı"
	zmlab.language.methbuyer_wrongjob = "Bir sey bilmiyorum!"
	zmlab.language.methbuyer_nometh = "Satacak bir seyin yoksa beni rahatsiz etme!"
	zmlab.language.methbuyer_soldMeth = "$methAmountg Meth $earning$currency liraya satildi!"
	zmlab.language.methbuyer_requestfail = "Zaten teslimat noktan var!"
	zmlab.language.methbuyer_requestfail_cooldown = "Henuz satis yapamazsin, $DropRequestCoolDown saniye sonra tekrar gel!"
	zmlab.language.methbuyer_requestfail_nonfound = "Suan alicim yok, daha sonra tekrar gel."
	zmlab.language.methbuyer_dropoff_assigned = "Teslimat noktani isaretledim, acele et!"
	zmlab.language.methbuyer_dropoff_wrongguy = "Baska birisini bekliyorduk \n parayi $deliverguy kisisine yolluyoruz."
	-- Meth DropOffPoint
	zmlab.language.dropoffpoint_title = "Meth Teslimat Noktası"
	-- Combiner
	zmlab.language.combiner_nextstep = "Sıradaki adım:"
	zmlab.language.combiner_filter = "Filtre takıldı!"
	zmlab.language.combiner_danger = "TEHLİKE!"
	zmlab.language.combiner_processing = "İşleniyor.."
	zmlab.language.combiner_methsludge = "Meth sıvısı: "
	zmlab.language.combiner_step01 = "Metilamin ekle"
	zmlab.language.combiner_step02 = "İşleniyor"
	zmlab.language.combiner_step03 = "Alüminyum ekle"
	zmlab.language.combiner_step04 = "İşleniyor"
	zmlab.language.combiner_step05 = "Gazı azaltmak için \nFiltre tak!"
	zmlab.language.combiner_step06 = "Meth sıvısı hazırlanıyor"
	zmlab.language.combiner_step07 = "Meth sıvısı hazır,\nTepsiyi yerleştirin"
	zmlab.language.combiner_step08 = "Tekrar kullanmadan önce \nkazanı temizle"
end
