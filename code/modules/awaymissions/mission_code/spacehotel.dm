#define PAY_INTERVAL 6000	// amount of ticks between payment

/area/awaymission/spacehotel
	name = "Deep Space Hotel 419"
	requires_power = FALSE

/area/awaymission/spacehotel/kitchen
	name = "Hotel Kitchen"
	icon_state = "kitchen"

/area/awaymission/spacehotel/reception
	name = "Hotel Reception"
	icon_state = "entry"

/area/awaymission/spacehotel/amazing_place
	name = "Amazing Place"
	static_lighting = FALSE
	base_lighting_alpha = 255
	base_lighting_color = COLOR_WHITE

/area/awaymission/spacehotel/snowland
	name = "Snowland"

/area/awaymission/spacehotel/undersea
	name = "Undersea"
	icon_state = "undersea"

// "Directional" map template loader for N or S hotel room
/obj/effect/landmark/map_loader/hotel_room
	icon = 'icons/misc/Testing/turf_analysis.dmi'
	icon_state = "arrow"

/obj/item/paper/crumpled/hotel_scrap_1
	name = "paper scrap"
	info = "Я не могу поверить, что этот дерьмовый отель выделил мне фиолетовой фиолетовый. <i>Почему в душе повсюду разливается виноградный напиток??</i>"

/obj/item/paper/hotel_scrap_2
	name = "Journal Entry #2"
	info = "<h3>День 7:</h3>Сегодня я зашла в свою ванную и обнаружила, что она превратилась в дикую местность, на склоне горы. Я попыталась вымыть руки снегом, но из этого ничего не вышло. Я обратилась на ресепшн по этому поводу, но администратор просто уставилась на меня мертвыми глазами и изрыгала в мой адрес неповторимые проклятия. Тем не менее, я убедила их перевести меня в номер повышенной комфортности."

/obj/item/paper/hotel_scrap_3
	name = "Journal Entry #3"
	info = "<h3>День 26:</h3>Что ж, это был настоящий отстой. Двуспальная кровать была хороша, но джакузи в комнате было, по словам моей жены, \"порталом в ад\". Не знаю, наверное, такое впечатление создавали лава и странная кровь, но там было довольно тепло. Тем не менее, <i>\"мы\"</i> решили переехать в другую комнату. Что угодно."

/obj/item/paper/hotel_scrap_4
	name = "Diary Page"
	info = "<b>7-й день неудачных каникул</b><br>Хвала Qzx, потому что этот дерьмовый отпуск заканчивается сегодня. Новизна дрянного бассейна закончилась через 2 дня, и меня не пускают в бар. Крошечной коробкой они называли комнату, в которую нам пришлось втиснуться, там были только плакат и пара кроватей. У нас была только одна лишняя простыня. В душе была коричневая вода, а раковина каким-то образом просто сливала воду обратно с потолка.<br><br>PS: Администратор не обращает на нас внимания, когда мы пытаемся выписаться. По-видимому, мы остаемся еще на день."

/obj/item/paper/hotel_scrap_5
	name = "Journal Entry #5"
	info = "<h3>День 185:</h3>У меня такое чувство, что шеф-повар ресторана готовит блюда наугад, чтобы подразнить меня. Я заказываю что-то из меню, а он выбрасывает на прилавок то, чего никто не просил. Бармен ненамного лучше. По крайней мере, они оба умеют готовить вкусную еду и напитки. Я бы пожаловался руководству... но им, похоже, все равно."

/obj/item/paper/crumpled/hotel_scrap_6
	name = "Journal Entry #6"
	info = "<h3>День 386:</h3><span style='font-family: wingdings; color: red'>AMBGAT MEZLBNU</span>. Что-то не так. Не могу перестать обнимать плюшевые игрушки."

/obj/item/paper/crumpled/hotel_scrap_7
	name = "Journal Entry #8"
	info = "<span style='font-family: wingdings; color: red'>ASGATDHU NAMSPA KER OKS O OKDOFLI OSDSFKO OASKDAFO AOSDKF OINAIS ISJDDEF OSKFEREAODIK OSI ODIFOSA OEKRRO ASODFKAO PSSDOF SDFK OSDKF OSDKFSASPODFIOSASD UHGU DFYG FPO ASDFOS DFOASSD FAPSO FSPDFOIER OPWASDSA PS DODIOF OSDI</span> pizza <span style='font-family: wingdings; color: red'>OKSDFO AL OKEWORK CVBUASO SDFO AOE RAOWEIK SODDFI</span>"

/obj/item/paper/hotel_scrap_8
	name = "Mysterious Note"
	icon_state = "paper_talisman"
	info = "<div style='text-align: center; color: red; font: 24pt comic sans ms'>Есть только один способ уйти.</div>"

/obj/item/paper/pamphlet/hotel
	name = "space hotel pamphlet"
	info = "<h3>Добро пожаловать в Deep Space Hotel 419!</h3>Благодарим вас за выбор нашего отеля. Просто предъявите свою кредитную или дебетовую карту консьержу и получите ключ от номера! Чтобы выписаться, просто предъявите свою кредитную карту.<small><h4>Условия:</h4><ul><li>Отель не несет ответственности за любые убытки, вызванные временными или пространственными аномалиями.<li>Отель не несет ответственности за события, которые происходят за пределами гостиничной станции, включая, но не ограничиваясь, события, которые происходят внутри пространственных карманов.<li>Отель не несет ответственности за переплату средств с вашего счета.<li>Отель не несет ответственности за пропавших без вести лиц.<li>Отель не несет ответственности за психические изменения, вызванные наркотиками, магией, демонами или космическими червями.</ul></small>"

/obj/effect/landmark/map_loader/hotel_room/Initialize()
	. = ..()
	// load and randomly assign rooms
	var/global/list/south_room_templates = list()
	var/global/list/north_room_templates = list()
	var/static/path = "_maps/map_files/templates/spacehotel/"
	var/global/loaded = 0
	if(!loaded)
		loaded = 1
		for(var/map in flist(path))
			if(cmptext(copytext(map, length(map) - 3), ".dmm"))
				var/datum/map_template/T = new(path = "[path][map]", rename = "[map]")
				if(copytext(map, 1, 3) == "n_")
					north_room_templates += T
				else if(copytext(map, 1, 3) == "s_")
					south_room_templates += T
				else
					// omnidirectional rooms are randomly assigned
					if(prob(50))
						north_room_templates += T
					else
						south_room_templates += T

	var/datum/map_template/M = safepick(dir == NORTH ? north_room_templates : south_room_templates)
	if(M)
		template = M
		if(dir == NORTH)
			north_room_templates -= M
		else
			south_room_templates -= M
		load(M)

// The door to a hotel room, but also metadata for the room itself
/obj/machinery/door/unpowered/hotel_door
	name = "Room Door"
	icon = 'icons/obj/doors/doorsand.dmi'
	icon_state = "door_closed"
	autoclose = 1
	var/doorOpen = 'sound/machines/airlock_open.ogg'
	var/doorClose = 'sound/machines/airlock_close.ogg'
	var/doorDeni = 'sound/machines/deniedbeep.ogg'
	var/id									// the room number, eg 101
	var/obj/item/card/hotel_card/card// room's key card
	var/mob/living/occupant = null			// the current room occupant
	var/datum/money_account/account			// Account we're pulling from
	var/roomtimer							// timer PS handle for updating room

/obj/machinery/door/unpowered/hotel_door/New()
	..()
	if(id)
		name = "Room [id]"

	// in case we spawned after hotel
	var/obj/effect/hotel_controller/H
	H = H.controller
	if(H)
		H.add_room(src)

/obj/machinery/door/unpowered/hotel_door/Destroy()
	if(roomtimer)
		deltimer(roomtimer)
		roomtimer = null
	QDEL_NULL(card)
	return ..()

/obj/machinery/door/unpowered/hotel_door/examine(mob/user)
	. = ..()
	. += "<span class='notice'>This room is currently [occupant ? "" : "un"]occupied.</span>"

/obj/machinery/door/unpowered/hotel_door/allowed(mob/living/carbon/user)
	for(var/obj/item/card/hotel_card/C in user.get_all_slots())
		if(C == card && occupant)
			atom_say("Welcome, [occupant.real_name]!")
			return 1
	return 0

/obj/machinery/door/unpowered/hotel_door/update_icon_state()
	if(density)
		icon_state = "door_closed"
	else
		icon_state = "door_open"

/obj/machinery/door/unpowered/hotel_door/do_animate(animation)
	switch(animation)
		if("opening")
			playsound(loc, doorOpen, 30, 1)
			flick("door_opening", src)
		if("closing")
			playsound(loc, doorClose, 30, 1)
			flick("door_closing", src)
		if("deny")
			playsound(src.loc, doorDeni, 50, 0, 3)
			flick("door_deny", src)

/obj/machinery/door/unpowered/hotel_door/autoclose()
	if(!density && !operating && autoclose)
		close()
/obj/item/card/hotel_card
	name = "Key Card"
	icon_state = "guest"
	color = "#0CF"
	var/id

/obj/item/card/hotel_card/New(loc, ID)
	..()
	if(ID)
		id = ID
	if(id)
		name = "Key Card - [id]"
		desc = "A key card to room [id]. Use it to open the door."

/obj/item/card/hotel_card/Destroy()
	var/mob/user = get(loc, /mob)
	if(user)
		to_chat(user, "\The [src] suddenly disappears in a flash!")
	return ..()

/obj/effect/hotel_controller
	var/global/obj/effect/hotel_controller/controller

	name = "Deep Space Hotel 419"
	icon = 'icons/mob/screen_gen.dmi'
	icon_state = "x"
	invisibility = INVISIBILITY_ABSTRACT
	anchored = TRUE
	density = FALSE
	opacity = FALSE
	var/list/room_doors[0]			// assoc list of [room id]=hotel_door
	var/list/vacant_rooms[0]		// list of vacant room doors
	var/list/guests[0]				// assoc list of [guest mob]=room id

	var/obj/item/radio/radio	// for shouting at deadbeats

/obj/effect/hotel_controller/Initialize(mapload)
	. = ..()

	if(controller)
		return INITIALIZE_HINT_QDEL

	controller = src

	radio = new()
	radio.broadcasting = 0
	radio.listening = 0
	var/area/myArea = get_area(src)
	// get room doors
	for(var/obj/machinery/door/unpowered/hotel_door/D in myArea?.machinery_cache)
		add_room(D)

/obj/effect/hotel_controller/proc/add_room(obj/machinery/door/unpowered/hotel_door/D)
	room_doors["[D.id]"] = D
	vacant_rooms += D

/obj/effect/hotel_controller/Destroy()
	room_doors.Cut()
	vacant_rooms.Cut()
	guests.Cut()

	QDEL_NULL(radio)

	return ..()

// to check a person into a room; no financial stuff; returns the keycard
/obj/effect/hotel_controller/proc/checkin(roomid, mob/living/carbon/occupant)
	if(!istype(occupant))
		return null
	var/obj/machinery/door/unpowered/hotel_door/D = room_doors["[roomid]"]
	if(!D || D.occupant || (occupant in guests))
		return null

	D.account = get_card_account(occupant)
	if(!D.account)
		return null
	if(!D.account.charge(100, null, "10 minutes hotel stay", "Biesel GalaxyNet Terminal [rand(111,1111)]", "[name]"))
		return null

	D.occupant = occupant
	D.roomtimer = addtimer(CALLBACK(src, PROC_REF(process_room), roomid), PAY_INTERVAL, TIMER_STOPPABLE)
	vacant_rooms -= D
	guests[occupant] = roomid

	var/obj/item/card/hotel_card/C = new(ID = roomid)
	D.card = C
	return C

/obj/effect/hotel_controller/proc/process_room(roomid)
	var/obj/machinery/door/unpowered/hotel_door/D = room_doors["[roomid]"]
	if(!D || !D.occupant)
		return

	if(D.account.charge(100, null, "10 minutes hotel stay extension", "Biesel GalaxyNet Terminal [rand(111,1111)]", "[name]"))
		D.roomtimer = addtimer(CALLBACK(src, PROC_REF(process_room), roomid), PAY_INTERVAL, TIMER_STOPPABLE)
	else
		force_checkout(roomid)

// Checks a person out of a room; no financial stuff
/obj/effect/hotel_controller/proc/checkout(roomid)
	var/obj/machinery/door/unpowered/hotel_door/D = room_doors["[roomid]"]
	if(!D || !D.occupant)
		return 0

	guests -= D.occupant
	D.occupant = null
	D.account = null
	deltimer(D.roomtimer)
	D.roomtimer = null
	qdel(D.card)
	vacant_rooms += D
	return 1

// The person's card bounced mid-stay
/obj/effect/hotel_controller/proc/force_checkout(roomid)
	var/obj/machinery/door/unpowered/hotel_door/D = room_doors["[roomid]"]
	if(!D || !D.occupant)
		return 0

	var/mob/deadbeat = D.occupant

	radio.autosay("[deadbeat], your card has been rejected. You have 30 seconds to check out.", name)
	spawn(300)
		if(D.occupant == deadbeat)
			// they still haven't checked out...
			checkout(roomid)
