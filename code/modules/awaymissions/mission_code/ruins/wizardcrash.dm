//stuff for the crashed wizard shuttle space ruin (wizardcrash.dmm)

/obj/item/paper/fluff/ruins/wizardcrash
	name = "Mission Briefing"
	info = "<b>За великолепного З.А.П.</br><br><br>Беспалочковые отбросы создали на нашей территории небольшую шахтерскую базу. Отправьте им сообщение от федерации магов, которое они не забудут!<br><br>Я знаю, что ваш вид довольно хрупкий, но группа легковооруженных шахтеров не должна представлять для вас никакой угрозы.<br><br>Просто имейте в виду, что у них есть киборг-охранник для самообороны, возможно, вы захотите настроить свои заклинания на эту угрозу.<br><br>Я с нетерпением жду новостей о вашем успехе!<br><br><i>Великий маг Абра Чудесная</i>"

/obj/item/spellbook/oneuse/emp
	spell = /obj/effect/proc_holder/spell/emplosion/disable_tech
	spellname = "Disable Technology"
	icon_state = "bookcharge"	//it's a lightning bolt, seems appropriate enough
	desc = "For the tech-hating wizard on the go."

/obj/item/spellbook/oneuse/emp/used
	used = TRUE	//spawns used

/obj/effect/spawner/lootdrop/wizardcrash
	loot = list(
				/obj/item/guardiancreator = 1,   //jackpot.
				/obj/item/spellbook/oneuse/knock = 1,    //tresspassing charges incoming
				/obj/item/gun/magic/wand/resurrection = 1,   //medbay's best friend
				/obj/item/spellbook/oneuse/charge = 20,  //and now for less useful stuff to dilute the good loot chances
				/obj/item/spellbook/oneuse/summonitem = 20,
				/obj/item/spellbook/oneuse/forcewall = 10,
				/obj/item/soulstone = 15      //spooky wizard stuff
				)
