// items
/obj/item/storage/firstaid/ancient
	icon_state = "firstaid"
	desc = "A first aid kit with the ability to heal common types of injuries."

/obj/item/storage/firstaid/ancient/populate_contents()
	for(var/I in 1 to 4)
		new /obj/item/stack/medical/bruise_pack(src)
	new /obj/item/stack/medical/ointment(src)
	new /obj/item/stack/medical/ointment(src)
	new /obj/item/stack/medical/ointment(src)

/obj/item/card/id/away/old
	name = "A perfectly retrograde identification card"
	desc = "A perfectly retrograde identification card. Looks like it could use some flavor."
	icon = 'icons/obj/card.dmi'
	icon_state = "retro"
	access = list(ACCESS_AWAY01, ACCESS_MINERAL_STOREROOM, ACCESS_CHEMISTRY, ACCESS_RESEARCH)

/obj/item/card/id/away/old/sec
	name = "Security Officer ID"
	desc = "A clip on ID Badge, has one of those fancy new magnetic strips built in. This one is encoded for the Security Dept."
	icon_state = "retro_security"

/obj/item/card/id/away/old/sci
	name = "Scientist ID"
	desc = "A clip on ID Badge, has one of those fancy new magnetic strips built in. This one is encoded for the Science Dept."
	icon_state = "retro_research"

/obj/item/card/id/away/old/med
	name = "Medical ID"
	desc = "A clip on ID Badge, has one of those fancy new magnetic strips built in. This one is encoded for the Medical Dept."
	icon_state = "retro_medical"

/obj/item/card/id/away/old/eng
	name = "Engineer ID"
	desc = "A clip on ID Badge, has one of those fancy new magnetic strips built in. This one is encoded for the Engineering Dept."
	icon_state = "retro_engineering"

/obj/item/card/id/away/old/midengi
	name = "Engineering Middle Access ID"
	desc = "A special ID card that allows access to APC terminals, Emitters, some other engineering equipment."
	icon_state = "centcom_old"
	access = list(ACCESS_ENGINE_EQUIP, ACCESS_MECHANIC)

/obj/item/card/id/away/old/mechatron
	name = "Mechatronic Access ID"
	desc = "An old special ID card in retro style that allows access to Cyborg and Mech panels."
	icon_state = "retro"
	access = list(ACCESS_ROBOTICS)

/obj/item/storage/backpack/old
	max_combined_w_class = 12

// Equipment
/obj/item/clothing/head/helmet/space/nasavoid/old
	name = "Engineering Void Helmet"
	desc = "A CentCom engineering dark red space suit helmet. While old and dusty, it still gets the job done."
	icon_state = "void-red"
	item_state = "void"

/obj/item/clothing/suit/space/nasavoid/old
	name = "Engineering Voidsuit"
	icon_state = "void-red"
	item_state = "void"
	desc = "A CentCom engineering dark red space suit. Age has degraded the suit making is difficult to move around in."
	slowdown = 4
	allowed = list(/obj/item/flashlight, /obj/item/tank/internals, /obj/item/multitool)

/obj/item/clothing/head/helmet/old
	name = "degrading helmet"
	desc = "Standard issue security helmet. Due to degradation the helmet's visor obstructs the users ability to see long distances."
	tint = 2

/obj/item/clothing/suit/armor/vest/old
	name = "degrading armor vest"
	desc = "Older generation Type 1 armored vest. Due to degradation over time the vest is far less maneuverable to move in."
	icon_state = "armor"
	item_state = "armor"
	slowdown = 1

/obj/item/gun/energy/laser/retro/old
	name ="laser gun"
	icon_state = "retro"
	desc = "First generation lasergun, developed by Nanotrasen. Suffers from ammo issues but its unique ability to recharge its ammo without the need of a magazine helps compensate. You really hope someone has developed a better lasergun while you were in cryo."
	ammo_type = list(/obj/item/ammo_casing/energy/lasergun/old)
	ammo_x_offset = 3

/obj/item/ammo_casing/energy/lasergun/old
	projectile_type = /obj/item/projectile/beam/laser
	e_cost = 200
	select_name = "kill"

/obj/item/gun/energy/e_gun/old
	name = "prototype energy gun"
	desc = "NT-P:01 Prototype Energy Gun. Early stage development of a unique laser rifle that has multifaceted energy lens allowing the gun to alter the form of projectile it fires on command."
	icon_state = "protolaser"
	ammo_x_offset = 2
	ammo_type = list(/obj/item/ammo_casing/energy/laser, /obj/item/ammo_casing/energy/electrode/old)

/obj/item/ammo_casing/energy/electrode/old
	e_cost = 1000

// Papers
/obj/item/paper/fluff/ruins/oldstation
	name = "Cryo Awakening Alert"
	language = LANGUAGE_SOL_COMMON
	info = "<B>**ПРЕДУПРЕЖДЕНИЕ**</B><BR><BR>Станции были нанесёны катастрофические повреждения. Энергосеть исчерпала себя, чтобы разбудить экипаж.<BR><BR>Ближайшие цели<br><br>1: Включить аварийный генератор энергии<br>2: Снять карантин станции на мостике<br><br>Пожалуйста, найдите 'Отчет о повреждениях' на мостике, чтобы получить подробный отчет о ситуации."

/obj/item/paper/fluff/ruins/oldstation/damagereport
	name = "Damage Report"
	info = "<b>Отчет о повреждениях</b><br><br><b>Станция 'Омега'</b> – Уничтожена<br><br><b>Станция 'Альфа'</b> – Уничтожена<br><br><b>Станция 'Бега'</b> – Катастрофические повреждения. Медицинское оборудование частично разрушено. Атмосферное оборудование частично разрушено. Ядро двигателя разрушено.<br><br><b>Станция 'Чарли'</b> – Не тронута. Потеря кислорода в восточной части главного коридора.<br><br><b>Станция 'Тета'</b> – Не тронута. <b>ПРЕДУПРЕЖДЕНИЕ</b>: Неизвестная сила захватила станцию Тэта. Намерения: неизвестны. Вид: неизвестен. Численность: неизвестна.<br><br>Рекомендация – Восстановите подачу энергии на станцию с помощью солнечной батареи. Восстановите атмосферную систему станции для восстановления циркуляции воздуха."

/obj/item/paper/fluff/ruins/oldstation/protosuit
	name = "B01-RIG Hardsuit Report"
	info = "<b>Прототип РИГа</b><br><br>B01-РИГ прототип силового экзоскелета. Созданный на основе восстановленного военного экзоскелета объединенного правительства Земли времен довоенной эпохи. РИГ экзоскелета является прорывом в технологии, и первым защитным костюмом эпохи после войны в космосе, который может безопасно использоваться оператором.<br><br>Однако у B01 есть множество недостатков. Он медленный и громоздкий в передвижении, у него отсутствует какая-либо существенная защита от прямых атак, а его внутренний дисплей не доработан, в результате чего пользователь не может видеть на большом расстоянии.<br><br>Модель B01 вряд ли попадет в массовое производство, но послужит основой для будущих разработок экзоскелетов."

/obj/item/paper/fluff/ruins/oldstation/protohealth
	name = "Health Analyser Report"
	info = "<b>Анализатор состояния здоровья</b><br><br>Портативный анализатор состояния здоровья – это, по сути, переносной вариант анализатора здоровья. Результатом многолетних исследований стало создание этого устройства, которое способно диагностировать даже самые серьезные, малоизвестные или технические повреждения, от которых страдает любое гуманоидное существо, в легком для понимания формате, доступном даже неподготовленному медицинскому работнику.<br><br>Ожидается, что анализатор состояния здоровья поступит в серийное производство в качестве стандартного медицинского комплекта."

/obj/item/paper/fluff/ruins/oldstation/protogun
	name = "K14 Energy Gun Report"
	info = "<b>K14-Мультифазная энергетическая пушка</b><br><br>Прототип энергетического пистолета K14 – первая энергетическая винтовка, которая не только содержит больший больший объем батареи, чем другие модели оружия, но и способна переключаться между различными типами энергетических снарядов по команде без каких-либо инцидентов.<br><br>Оружие по-прежнему имеет ряд недостатков, его альтернативный, не лазерный режим стрельбы, позволяет произвести только один выстрел, прежде чем разрядится энергетический элемент, оружие также остается непомерно дорогим, тем не менее, компания NT Market Research полностью уверена, что это оружие станет основой нашего каталога энергетического оружия.<br><br>Ожидается, что K14 подвергнется доработке, чтобы устранить проблемы с боеприпасами, а в K15, будет изменена настройка 'тазера' на 'дизейблер' в попытке обойти проблемы с боеприпасами."

/obj/item/paper/fluff/ruins/oldstation/protosing
	name = "Singularity Generator"
	info = "<b>Генератор Сингулярности</b><br><br>Современная энергетика, как правило, представлена в двух вариантах: термоядерный генератор или генератор на основе ядерного деления. Термоядерный реактор обеспечивает наилучшее соотношение площади и мощности и обычно используется на военных кораблях и станциях повышенной безопасности, однако для изготовления реакторов на ядерном делении требуются дорогостоящие и редкие материалы.. Ядерные генераторы массивны и громоздки, и для их работы требуется большой запас урана, однако они чрезвычайно дешевы в эксплуатации и часто не требуют особого обслуживания после ввода в эксплуатацию. Сингулярность призвана изменить это, функциональная сингулярность - это, по сути, управляемая Черная дыра, которая генерирует гораздо больше энергии, чем могут когда-либо получить термоядерные генераторы."

/obj/item/paper/fluff/ruins/oldstation/report
	name = "Crew Reawakening Report"
	info = "Отчет искусственной программы выжившим членам экипажа.<br><br>Экипаж был помещен в криостаз 10 марта 2445 года.<br><br>Экипаж был выведен из криостаза примерно в июне 2557 года.<br><br> \
	<b>ВАЖНЫЕ СОБЫТИЯ, ЗАСЛУЖИВАЮЩИЕ ВНИМАНИЯ</b><br>1: Первичные детекторы излучения были отключены через 112 лет из-за перебоев в подаче электроэнергии, вторичные детекторы излучения не выявили остаточного излучения на станции. Вывод: первичный детектор был неисправен и подавал сигнал излучения, когда его не было.<br><br>2: Получен пакет данных с близлежащей космической станции Nanotrasen, содержащий исследовательские данные, которые были загружены в наши лаборатории RnD.<br><br>3: Неизвестные силы вторжения захватили станцию 'Тета'."

/obj/item/paper/fluff/ruins/oldstation/generator_manual
	name = "S.U.P.E.R.P.A.C.M.A.N.-type portable generator manual"
	info = "Вы едва можете разобрать выцветшее предложение... <br><br> Закрепите генератор гаечным ключом поверх узла проводов, подключенного либо к входному терминалу SMES, либо к электросети. \
	Не *вь мо* *ы**е **и..<br><br> Последние слова полностью выцвели." // yep, the temperature overheat, some players set power to 5 and make the gen to blow up, rip oldstation.

/obj/item/paper/ruins/oldstation
	language = LANGUAGE_SOL_COMMON

/obj/item/paper/ruins/oldstation/protoinventory
	name = "Theta RnD Prototype Inventory Secure Storage"
	info = "<b>Инвентарь</b><br><br>(1) Прототип экзоскелета<br><br>(1)Анализатор здоровья<br><br>(1)Прототип энерговинтовки<br><br>(1)Стержень генерации Теслы<br><br><b>НЕ ПРИСТУПАЙТЕ К РАБОТЕ БЕЗ РАЗРЕШЕНИЯ КАПИТАНА И ДИРЕКТОРА ИССЛЕДОВАНИЙ.</b>"

/obj/item/paper/ruins/oldstation/prototesla // eh, im bad in eng anyway but i tried. mb somebody will fix it later
	name = "Tesla Generator Report"
	info = "<b>Тесла генератор</b><br><br>В стенах отдела исследований и разработок Тета создан новый прототип двигателя, предназначенного для выработки энергии!<br><br>После ужасной аварии, произошедшей на Альфа, новая команда НИО получила факс от Центрального Командования, о перспективных исследованиях в области производства энергии следующего поколения. В результате, благодаря данным, полученным от Центрального Командования, и неустанной работе, нашим отважным сотрудникам НИМ удалось воплотить в жизнь новую надежду для каждой станции, давнюю мечту – обуздать молнии!<br><br> По нашим прогнозам, этот 'двигатель' обладает большим потенциалом для обеспечения энергией небольших, средних и даже крупных станций. Он довольно гибок в настройке, а также может стать самым дешевым двигателем в обслуживании в наши дни."

/obj/item/paper/ruins/oldstation/singwarn // the engine is bugged, at least on ss220, so ic warning may prevent people to use it, at least untill it will be fixed, then this note will gone
	name = "Old note"
	info = "<b>В память об Альфреде</b><br><br><b>Я предупреждаю тебя!</b><br><br> \
	<b>НИКОГДА не используйте этот двигатель!</b> Клянусь, я больше никогда не подам питание на эту проклятую штуковину! Мне до сих пор снятся кошмары — темнота, тишина, кровь... \ Каждый месяц, а то и каждую неделю я снова вижу эту ужасную картину. Всё началось с НИО и их адской машины. <br><br> \
	Дальше — хуже. В фойе инженерии Альфа появился свинцовый контейнер и наш главный инженер, Якоб Т., вдруг заговорил о пенсии. \
	НИО, вооруженные заверенными бумагами и рассказами о 'секретном проекте двигателя', потребовали срочно построить защитную зону для отчетности в ЦК об 'успешных достижениях в области производства энергии'. \
	Мы, как идиоты, поверили… Если бы я только знал тогда, что скрывается в этом контейнере!<br><br>\
	Строили все по инструкциям НИО: каждый провод, каждый стержень. Перестраховался, запросил дополнительное оборудование — излучатели, SMES, даже P.A.C.M.A.N. на всякий случай. \
	НИО, кстати, без вопросов всё прислали. Словно сами сомневались в безопасности своей штуковины.<br><br> \
	И вот настал момент Х. На Альфе отключились все системы: консоли, датчики, радио, силовые поля. Внутри отсека раздался грохот, будто рушился мир. \
	Череp десять секунд в Альфу врезалось что-то крупное. Как я узнаю позже, это был прибывший грузовой шаттл снабжения с ЦК, заказанный 2 недели назад. \
	Половина грузового отдела была разгромлена, пара сотрудников погибли в считанные секунды в космосе и под дрейфующим шаттлом, еще семеро получили легкие ранения. Крики и тьма... \
	Сама сингулярность, к счастью, оставалась стабильной. Мы успели отключить ускоритель, предотвратив полную катастрофу. Но зрелище пульсирующей пустоты меня до сих пор преследует. \
	Клянусь, я слышал смех... и наши имена, доносящиеся отовсюду и одновременно ниоткуда. Подумал тогда, что это радиация действует…<br><br> \
	Послал Альфреда (уверен, что он мог бы стать хорошим или даже выдающимся специалистом) проверить излучатели. Остальные кинулись восстанавливать системы Альфы. \
	Полтора часа мучений! Возвращаюсь к пультам, и тут на меня налетает один из инженеров, весь в крови, обожженный, кричит про Альфреда… \
	Тот, оказывается, полетел прямо к сингулярности, раскинув руки…<br><br>\
	В этот момент включилось радио. Мы услышали смех Альфреда и какой-то невнятный бред. Я бросился наружу, кричал ему в канал… В последний момент он вроде очнулся… но было поздно.\
	Его кровь разлетелась по всему отсеку. Помню только его крик, а потом - тишина. Пустота поглотилаего. И начала расти…<br><br> \
	Дальше – как в тумане. Почти вся Альфа исчезла. Как мы выжили - не знаю. ЦК прислало ремонтную бригаду. Половина экипажа эвакуировалась. Я остался восстанавливать станцию…<br><br> \
	Семь месяцев спустя приходит факс от нового директора НИО: они разработали 'НОВЫЙ, БОЛЕЕ СТАБИЛЬНЫЙ ДВИГАТЕЛЬ СИНГУЛЯРНОСТИ'! Это была последняя капля. Я написал заявление и уволился.<br><br> \
	Не повторяйте моих ошибок. НИКОГДА не устанавливайте этот двигатель. Если мой рассказ вас не убедил, то я не знаю, что ещё может. Вы предупреждены."

/obj/item/paper/ruins/oldstation/slimesexperiments //many people asked about slimes xeno, i tried to make it possible with the special report note
	name = "Xeno Core Research Report"
	info = "<b>Записи наблюдений за биологическим ядром ксеносов</b><br /><br />Данные: Биологический образец неизвестной формы ксеносов, полученный в результате извлечения из мертвого взрослого экземпляра ксеносов, найденного нашими шахтерами на одном из астероидов местного скопления во время регулярных экспедиций по добыче полезных ископаемых.<br><br> \
	Мы предполагаем, что это все еще может быть полезно для исследований, поскольку после гибели экземпляра, произошедшей 20-25 лет назад, его внутренние органы были полностью сохранены под полупрозрачной эластичной кожей, как если бы смерть наступила пару минут назад. Внутри мы проследили низкую электрическую активность в теле, и центром ее было это ядро.<br><br> \
	Директор Исследований провел поиск любой информации о ксено-форме во всех доступных базах данных, которые он запросил у Центрального Командования. Позже он получил факс от ЦК, в котором они просили продолжить исследования вручную, поскольку у нас достаточно образцов этих ксеносов, используя весь спектр химических веществ, которые мы можем позволить себе потратить на них.<br><br> \
	<b>Записи и примечания по химическим реакциям</b><br><br> \
	Все химические вещества, используемые без введения шприца за пределы ядра, будь то газ или жидкость в виде порошка при повышении или понижении температуры, не давали никаких результатов. Исследование продолжается.<br><br>\
	Примечание 1: Один из наших ученых заметил, что ядро поражает его статическим электричеством и колеблется после того, как он случайно коснулся их своей кожей, когда снимал свои латексные перчатки. Он обработал ядро обычной дистиллированной водой, чтобы посмотреть, не связано ли это каким-то образом со специальными жидкостями. Результат был не слишком впечатляющим, но, тем не менее, ядро просто колебалось, и эффект был менее интенсивным, чем раньше...<br><br> \
	Большинство введенных химикатов не вызывали никаких реакций. Единственным реагентом была вода, ядро смешивало воду с внутренней жидкостью и меняло цвет. Химические соединения, которые мы извлекли при ближайшем рассмотрении, имитируют один из фармакологических препаратов в медицине под названием адреналин. По крайней мере, это хорошая новость. Отчет отправлен.<br><br> \
	Наше руководство запросило новые химические вещества, и одно из них очень дорогое – плазму, твердое вещество и газ. Лично я уверен, что это даст нам то, чего мы ждем от ядер. Химический анализ показывает, что реагенты, близкие к параметрам плазмы, наиболее эффективно повышают электрическую активность внутри. Это и должно быть ответом."


	//Old Prototype Hardsuit
/obj/item/clothing/head/helmet/space/hardsuit/ancient
	name = "prototype RIG hardsuit helmet"
	desc = "Early prototype RIG hardsuit helmet, designed to quickly shift over a user's head. Design constraints of the helmet mean it has no inbuilt cameras, thus it restricts the users visability."
	icon_state = "hardsuit0-ancient"
	item_state = "anc_helm"
	armor = list("melee" = 30, "bullet" = 5, "laser" = 5, "energy" = 0, "bomb" = 50, "bio" = 100, "rad" = 100, "fire" = 100, "acid" = 75)
	item_color = "ancient"
	resistance_flags = FIRE_PROOF
	sprite_sheets = null

/obj/item/clothing/suit/space/hardsuit/ancient
	name = "prototype RIG hardsuit"
	desc = "Prototype powered RIG hardsuit. Provides excellent protection from the elements of space while being comfortable to move around in, thanks to the powered locomotives. Remains very bulky however."
	icon_state = "hardsuit-ancient"
	item_state = "anc_hardsuit"
	armor = list("melee" = 30, "bullet" = 5, "laser" = 5, "energy" = 0, "bomb" = 50, "bio" = 100, "rad" = 100, "fire" = 100, "acid" = 75)
	resistance_flags = FIRE_PROOF
	slowdown = 3
	sprite_sheets = null
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/ancient
	var/footstep = 1

/obj/item/clothing/suit/space/hardsuit/ancient/equipped(mob/user, slot, initial)
	. = ..()
	if(slot & slot_flags)
		RegisterSignal(user, COMSIG_MOB_CLIENT_MOVED, PROC_REF(on_mob_move), override = TRUE)

/obj/item/clothing/suit/space/hardsuit/ancient/dropped(mob/user, slot, silent)
	. = ..()
	UnregisterSignal(user, COMSIG_MOB_CLIENT_MOVED)

/obj/item/clothing/suit/space/hardsuit/ancient/on_mob_move(mob/user, dir)
	if(footstep > 1)
		playsound(src, 'sound/effects/servostep.ogg', 100, TRUE)
		footstep = 0
	else
		footstep++

// Chemical bottles
/obj/item/reagent_containers/glass/bottle/aluminum
	name = "aluminum bottle"
	list_reagents = list("aluminum" = 30)

/obj/item/reagent_containers/glass/bottle/hydrogen
	name = "hydrogen bottle"
	list_reagents = list("hydrogen" = 30)

/obj/item/reagent_containers/glass/bottle/lithium
	name = "lithium bottle"
	list_reagents = list("lithium" = 30)

/obj/item/reagent_containers/glass/bottle/carbon
	name = "carbon bottle"
	list_reagents = list("carbon" = 30)

/obj/item/reagent_containers/glass/bottle/nitrogen
	name = "nitrogen bottle"
	list_reagents = list("nitrogen" = 30)

/obj/item/reagent_containers/glass/bottle/oxygen
	name = "oxygen bottle"
	list_reagents = list("oxygen" = 30)

/obj/item/reagent_containers/glass/bottle/fluorine
	name = "fluorine bottle"
	list_reagents = list("fluorine" = 30)

/obj/item/reagent_containers/glass/bottle/sodium
	name = "sodium bottle"
	list_reagents = list("sodium" = 30)

/obj/item/reagent_containers/glass/bottle/silicon
	name = "silicon bottle"
	list_reagents = list("silicon" = 30)

/obj/item/reagent_containers/glass/bottle/phosphorus
	name = "phosphorus bottle"
	list_reagents = list("phosphorus" = 30)

/obj/item/reagent_containers/glass/bottle/sulfur
	name = "sulfur bottle"
	list_reagents = list("sulfur" = 30)

/obj/item/reagent_containers/glass/bottle/chlorine
	name = "chlorine bottle"
	list_reagents = list("chlorine" = 30)

/obj/item/reagent_containers/glass/bottle/potassium
	name = "potassium bottle"
	list_reagents = list("potassium" = 30)

/obj/item/reagent_containers/glass/bottle/iron
	name = "iron bottle"
	list_reagents = list("iron" = 30)

/obj/item/reagent_containers/glass/bottle/copper
	name = "copper bottle"
	list_reagents = list("copper" = 30)

/obj/item/reagent_containers/glass/bottle/mercury
	name = "mercury bottle"
	list_reagents = list("mercury" = 30)

/obj/item/reagent_containers/glass/bottle/radium
	name = "radium bottle"
	list_reagents = list("radium" = 30)

/obj/item/reagent_containers/glass/bottle/water
	name = "water bottle"
	list_reagents = list("water" = 30)

/obj/item/reagent_containers/glass/bottle/ethanol
	name = "ethanol bottle"
	list_reagents = list("ethanol" = 30)

/obj/item/reagent_containers/glass/bottle/sugar
	name = "sugar bottle"
	list_reagents = list("sugar" = 30)

/obj/item/reagent_containers/glass/bottle/sacid
	name = "sulphuric acid bottle"
	list_reagents = list("sacid" = 30)

/obj/item/reagent_containers/glass/bottle/welding_fuel
	name = "welding fuel bottle"
	list_reagents = list("fuel" = 30)

/obj/item/reagent_containers/glass/bottle/silver
	name = "silver bottle"
	list_reagents = list("silver" = 30)

/obj/item/reagent_containers/glass/bottle/iodine
	name = "iodine bottle"
	list_reagents = list("iodine" = 30)

/obj/item/reagent_containers/glass/bottle/bromine
	name = "bromine bottle"
	list_reagents = list("bromine" = 30)
// areas
//Ruin of ancient Space Station

/area/ruin/space/ancientstation
	name = "Charlie Station Main Corridor"
	icon_state = "green"
	has_gravity = STANDARD_GRAVITY

/area/ruin/space/ancientstation/powered
	name = "Powered Tile"
	icon_state = "teleporter"
	requires_power = FALSE
	static_lighting = FALSE
	base_lighting_alpha = 255
	base_lighting_color = COLOR_WHITE

/area/ruin/space/ancientstation/space
	name = "Exposed To Space"
	icon_state = "teleporter"
	has_gravity = FALSE

/area/ruin/space/ancientstation/atmos
	name = "Beta Station Atmospherics"
	icon_state = "atmos"
	ambientsounds = ENGINEERING_SOUNDS

/area/ruin/space/ancientstation/betanorth
	name = "Beta Station North Corridor"
	icon_state = "bluenew"

/area/ruin/space/ancientstation/betacargo
	name = "Beta Station Cargo Equipment"
	icon_state = "quartstorage"

/area/ruin/space/ancientstation/betamincorridor
	name = "Beta Station Mining Corridor"
	icon_state = "mining"

/area/ruin/space/ancientstation/betaengi
	name = "Beta Station Engineering"
	icon_state = "storage"
	ambientsounds = ENGINEERING_SOUNDS

/area/ruin/space/ancientstation/atmosfoyer
	name = "Beta Station Atmospherics Foyer"
	icon_state = "engine_control"

/area/ruin/space/ancientstation/engi
	name = "Charlie Station Engineering"
	icon_state = "engine"
	ambientsounds = ENGINEERING_SOUNDS

/area/ruin/space/ancientstation/comm
	name = "Charlie Station Command"
	icon_state = "captain"

/area/ruin/space/ancientstation/hydroponics
	name = "Charlie Station Hydroponics"
	icon_state = "hydro"

/area/ruin/space/ancientstation/kitchen
	name = "Charlie Station Kitchen"
	icon_state = "kitchen"

/area/ruin/space/ancientstation/sec
	name = "Charlie Station Security"
	icon_state = "security"

/area/ruin/space/ancientstation/thetacorridor
	name = "Theta Station Main Corridor"
	icon_state = "yellow"

/area/ruin/space/ancientstation/proto
	name = "Theta Station Prototype Lab"
	icon_state = "toxstorage"

/area/ruin/space/ancientstation/rnd
	name = "Theta Station Research and Development"
	icon_state = "toxlab"

/area/ruin/space/ancientstation/hivebot
	name = "Hivebot Mothership"
	icon_state = "xenocell1"
