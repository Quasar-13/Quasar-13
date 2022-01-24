//#define LOWMEMORYMODE //uncomment this to load centcom and runtime station and thats it.

#include "map_files\generic\CentCom.dmm"

#ifndef LOWMEMORYMODE
	#ifdef ALL_MAPS
		//Mining Z levels
		#include "map_files\Mining\Lavaland.dmm"
		#include "map_files\Mining\Icemoon.dmm"
		#include "map_files\Mining\Rockplanet.dmm"
		#include "map_files\Mining\Jungle.dmm"
		#include "map_files\Mining\Tidalmoon.dmm"

		//SMC Missions
		#include "map_files\Mining\mission_phobos.dmm"

		//Debug Z Levels
		#include "map_files\debug\runtimestation.dmm"
		#include "map_files\debug\multiz.dmm"

		//Rotation maps
		#include "map_files\Deltastation\DeltaStation2.dmm"
		#include "map_files\MetaStation\MetaStation.dmm"
		#include "map_files\PackedStation\PackedStation.dmm"
		#include "map_files\GalaxyStation\GalaxyStation.dmm" //marg
		#include "map_files\GalaxyStation\Galaxystation_LVL2.dmm"
		#include "map_files\RemoraStation\RemoraStation.dmm"
		#include "map_files\Fermistation\Fermistation.dmm"
		#include "map_files\BoxStation\BoxStation.dmm"
		#include "map_files\PubbyStation\PubbyStation.dmm"
		#include "map_files\CasioStation\Casiostation.dmm"
		#include "map_files\ChimeraStation\ChimeraStation.dmm"

		//Admin only maps
		#include "map_files\RemusFacility\RemusFacility.dmm"
		#include "map_files\AndromedaStation\Andromeda.dmm"
		#include "map_files\NTBlacksite\NTBlacksite.dmm"

		#ifdef CIBUILDING
			#include "templates.dm"
		#endif
	#endif
#endif
