
/atom/movable/screen/infection
	icon = 'icons/mob/infection/action_icons.dmi'

/atom/movable/screen/infection/MouseEntered(location,control,params)
	openToolTip(usr,src,params,title = name,content = desc, theme = "blob")

/atom/movable/screen/infection/MouseExited()
	closeToolTip(usr)

/atom/movable/screen/infection/InfectionHelp
	icon_state = "help_hud"
	name = "Infection Help"
	desc = "Help on playing the infection!"

/atom/movable/screen/infection/InfectionHelp/Click()
	if(iscommander(usr))
		var/mob/camera/commander/I = usr
		I.infection_help()

/atom/movable/screen/infection/JumpToNode
	icon_state = "node_hud"
	name = "Jump to Node"
	desc = "Moves your camera to a selected node."

/atom/movable/screen/infection/JumpToNode/Click()
	if(iscommander(usr))
		var/mob/camera/commander/I = usr
		I.jump_to_node()

/atom/movable/screen/infection/JumpToCore
	icon_state = "core_hud"
	name = "Jump to Core"
	desc = "Moves your camera to your core."

/atom/movable/screen/infection/JumpToCore/Click()
	if(iscommander(usr))
		var/mob/camera/commander/I = usr
		I.transport_core()

/atom/movable/screen/infection/Evolve
	icon_state = "upgrade_hud"
	name = "Evolution"
	desc = "Purchase traits that make you stronger."

/atom/movable/screen/infection/Evolve/Click()
	if(iscommander(usr))
		var/mob/camera/commander/I = usr
		I.evolve_menu()

/datum/hud/infection_commander/New(mob/owner)
	..()
	var/atom/movable/screen/using

	infectionpwrdisplay = new /atom/movable/screen()
	infectionpwrdisplay.name = "infection power"
	infectionpwrdisplay.icon_state = "block"
	infectionpwrdisplay.screen_loc = ui_health
	infectionpwrdisplay.mouse_opacity = MOUSE_OPACITY_TRANSPARENT
	infectionpwrdisplay.layer = ABOVE_HUD_LAYER
	infectionpwrdisplay.plane = ABOVE_HUD_PLANE
	infodisplay += infectionpwrdisplay

	healths = new /atom/movable/screen/healths/blob()
	infodisplay += healths

	using = new /atom/movable/screen/infection/JumpToNode()
	using.screen_loc = ui_inventory
	static_inventory += using

	using = new /atom/movable/screen/infection/JumpToCore()
	using.screen_loc = ui_zonesel
	using.hud = src
	static_inventory += using

	using = new /atom/movable/screen/infection/Evolve()
	using.screen_loc = ui_hand_position(1)
	static_inventory += using

	using = new /atom/movable/screen/infection/InfectionHelp()
	using.screen_loc = ui_hand_position(2)
	static_inventory += using
