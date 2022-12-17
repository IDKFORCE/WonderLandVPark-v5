BumpedCraze = {}

function BumpedCraze.unload()
end

function BumpedCraze.init()
	Bumpkid = PLAYER.PLAYER_PED_ID(); -- < -------------------------- Our term used here assigns our Player as Bumpkid.
	Bmpdrvr = PLAYER.GET_PLAYER_PED(Bumpkid);
	BMPrLoc = ENTITY.GET_ENTITY_COORDS(Bumpkid, nil);
	Bumber1 = 0;
	Bumber2 = 0;
	Bumber3 = 0;
	Bumber4 = 0;
	Bumber5 = 0;
	Bumber6 = 0;
	Bumber7 = 0;
	Bumber8 = 0;
	Rider_1 = 0;
	Rider_2 = 0;
	Rider_3 = 0;
	Rider_4 = 0;
	Rider_5 = 0;
	Rider_6 = 0;
	Bsha1 = false;
	B_1 = false;
	B_2 = false;
	B_3 = false;
	B_4 = false;
	B_5 = false;
	B_1a = false;
	B_2a = false;
	B_3a = false;
	B_4a = false;
	B_5a = false;
	CartRyd = false;
	dark = false;
	fake1 = 0;
	fake2 = 0;
	fake3 = 0;
	fake4 = 0;
	Sparkun = 0;
	Sparkun_0 = 0;
	Sparkun_1 = 0;
	Sparkun_2 = 0;
	Sparkun_3 = 0;
end

function BumpedCraze.place_Bcarz1()
	STREAMING.REQUEST_MODEL(GAMEPLAY.GET_HASH_KEY("bumpercar1"));
	while (not STREAMING.HAS_MODEL_LOADED(GAMEPLAY.GET_HASH_KEY("bumpercar1"))) do
		wait(50);
	end
	if(STREAMING.HAS_MODEL_LOADED(GAMEPLAY.GET_HASH_KEY("bumpercar1"))) then
		Bumber1 = VEHICLE.CREATE_VEHICLE(GAMEPLAY.GET_HASH_KEY("bumpercar1"), 1013.883, 6991.106, 6.510, 346.951, true, true);
		Bumber5 = Bumber1;
	end
	STREAMING.REQUEST_MODEL(GAMEPLAY.GET_HASH_KEY("bumpercar2"));
	while (not STREAMING.HAS_MODEL_LOADED(GAMEPLAY.GET_HASH_KEY("bumpercar2"))) do
		wait(50);
	end
	if(STREAMING.HAS_MODEL_LOADED(GAMEPLAY.GET_HASH_KEY("bumpercar2"))) then
		Bumber2 = VEHICLE.CREATE_VEHICLE(GAMEPLAY.GET_HASH_KEY("bumpercar2"), 1014.774, 6998.237, 6.510, 192.816, true, true);
		Bumber6 = Bumber2;
	end
	STREAMING.REQUEST_MODEL(GAMEPLAY.GET_HASH_KEY("bumpercar3"));
	while (not STREAMING.HAS_MODEL_LOADED(GAMEPLAY.GET_HASH_KEY("bumpercar3"))) do
		wait(50);
	end
	if(STREAMING.HAS_MODEL_LOADED(GAMEPLAY.GET_HASH_KEY("bumpercar3"))) then
		Bumber3 = VEHICLE.CREATE_VEHICLE(GAMEPLAY.GET_HASH_KEY("bumpercar3"), 1026.788, 6995.414, 6.510, 95.513, true, true);
		Bumber7 = Bumber3;
	end
	STREAMING.REQUEST_MODEL(GAMEPLAY.GET_HASH_KEY("bumpercar4"));
	while (not STREAMING.HAS_MODEL_LOADED(GAMEPLAY.GET_HASH_KEY("bumpercar4"))) do
		wait(50);
	end
	if(STREAMING.HAS_MODEL_LOADED(GAMEPLAY.GET_HASH_KEY("bumpercar4"))) then
		Bumber4 = VEHICLE.CREATE_VEHICLE(GAMEPLAY.GET_HASH_KEY("bumpercar4"), 1024.883, 6986.748, 6.510, 73.538, true, true);
		Bumber8 = Bumber4;
	end
end

function BumpedCraze.place_Bcarz()
	STREAMING.REQUEST_MODEL(GAMEPLAY.GET_HASH_KEY("bmpride"));
	while (not STREAMING.HAS_MODEL_LOADED(GAMEPLAY.GET_HASH_KEY("bmpride"))) do
		wait(50);
	end
	if(STREAMING.HAS_MODEL_LOADED(GAMEPLAY.GET_HASH_KEY("bmpride"))) then
		Bumber1 = VEHICLE.CREATE_VEHICLE(GAMEPLAY.GET_HASH_KEY("bmpride"), 1013.883, 6991.106, 6.510, 346.951, true, true);
		ENTITY.SET_ENTITY_ALPHA(Bumber1, 0, false);
		Bumber2 = VEHICLE.CREATE_VEHICLE(GAMEPLAY.GET_HASH_KEY("bmpride"), 1014.774, 6998.237, 6.510, 192.816, true, true);
		ENTITY.SET_ENTITY_ALPHA(Bumber2, 0, false);
		Bumber3 = VEHICLE.CREATE_VEHICLE(GAMEPLAY.GET_HASH_KEY("bmpride"), 1026.788, 6995.414, 6.510, 95.513, true, true);
		ENTITY.SET_ENTITY_ALPHA(Bumber3, 0, false);
		Bumber4 = VEHICLE.CREATE_VEHICLE(GAMEPLAY.GET_HASH_KEY("bmpride"), 1024.883, 6986.748, 6.510, 73.538, true, true);
		ENTITY.SET_ENTITY_ALPHA(Bumber4, 0, false);
		Bumber5 = Bumber1;
		Bumber6 = Bumber2;
		Bumber7 = Bumber3;
		Bumber8 = Bumber4;
	end
	STREAMING.REQUEST_MODEL(GAMEPLAY.GET_HASH_KEY("bcar4"));
	while (not STREAMING.HAS_MODEL_LOADED(GAMEPLAY.GET_HASH_KEY("bcar4"))) do
		wait(50);
	end
	if(STREAMING.HAS_MODEL_LOADED(GAMEPLAY.GET_HASH_KEY("bcar4"))) then
		fake4 = OBJECT.CREATE_OBJECT(GAMEPLAY.GET_HASH_KEY("bcar4"), BMPrLoc.x, BMPrLoc.y, BMPrLoc.z, false, false, true);
		ENTITY.ATTACH_ENTITY_TO_ENTITY(fake4, Bumber8, PED.GET_PED_BONE_INDEX(Bumber8, 0x0), -0.0, 0.0, -0.09, 0.0, 0.0, 180.0, false, false, false, true, 0, true);
	end
	STREAMING.REQUEST_MODEL(GAMEPLAY.GET_HASH_KEY("bcar3"));
	while (not STREAMING.HAS_MODEL_LOADED(GAMEPLAY.GET_HASH_KEY("bcar3"))) do
		wait(50);
	end
	if(STREAMING.HAS_MODEL_LOADED(GAMEPLAY.GET_HASH_KEY("bcar3"))) then
		fake1 = OBJECT.CREATE_OBJECT(GAMEPLAY.GET_HASH_KEY("bcar3"), BMPrLoc.x, BMPrLoc.y, BMPrLoc.z, false, false, true);
		ENTITY.ATTACH_ENTITY_TO_ENTITY(fake1, Bumber5, PED.GET_PED_BONE_INDEX(Bumber5, 0x0), -0.0, 0.0, -0.09, 0.0, 0.0, 180.0, false, false, false, true, 0, true);
	end
	STREAMING.REQUEST_MODEL(GAMEPLAY.GET_HASH_KEY("bcar1"));
	while (not STREAMING.HAS_MODEL_LOADED(GAMEPLAY.GET_HASH_KEY("bcar1"))) do
		wait(50);
	end
	if(STREAMING.HAS_MODEL_LOADED(GAMEPLAY.GET_HASH_KEY("bcar1"))) then
		fake3 = OBJECT.CREATE_OBJECT(GAMEPLAY.GET_HASH_KEY("bcar1"), BMPrLoc.x, BMPrLoc.y, BMPrLoc.z, false, false, true);
		ENTITY.ATTACH_ENTITY_TO_ENTITY(fake3, Bumber7, PED.GET_PED_BONE_INDEX(Bumber7, 0x0), -0.0, 0.0, -0.09, 0.0, 0.0, 180.0, false, false, false, true, 0, true);
	end
	STREAMING.REQUEST_MODEL(GAMEPLAY.GET_HASH_KEY("bcar2"));
	while (not STREAMING.HAS_MODEL_LOADED(GAMEPLAY.GET_HASH_KEY("bcar2"))) do
		wait(50);
	end
	if(STREAMING.HAS_MODEL_LOADED(GAMEPLAY.GET_HASH_KEY("bcar2"))) then
		fake2 = OBJECT.CREATE_OBJECT(GAMEPLAY.GET_HASH_KEY("bcar2"), BMPrLoc.x, BMPrLoc.y, BMPrLoc.z, false, false, true);
		ENTITY.ATTACH_ENTITY_TO_ENTITY(fake2, Bumber6, PED.GET_PED_BONE_INDEX(Bumber6, 0x0), -0.0, 0.0, -0.09, 0.0, 0.0, 180.0, false, false, false, true, 0, true);
	end
end

function BumpedCraze.tick()
	if(get_key_pressed(Keys.Multiply)) then
		wait(400);
		ENTITY.SET_ENTITY_COORDS(Bumpkid, 1048.431, 7056.358, 6.440, true, true, true, true);--dnktnk
--		ENTITY.SET_ENTITY_COORDS(Bumpkid, 1008.975, 6969.759, 12.440, true, true, true, true);--bumper
--		ENTITY.SET_ENTITY_COORDS(Bumpkid, 906.030, 6855.040, 10.440, true, true, true, true);--detonator
--		ENTITY.SET_ENTITY_COORDS(Bumpkid, 968.7567, 7195.855, 22.99422, true, true, true, true);--waterslide
--		ENTITY.SET_ENTITY_COORDS(Bumpkid, 997.701, 6410.678, 30.163, true, true, true, true);--train tracks
		STREAMING.REQUEST_MODEL(GAMEPLAY.GET_HASH_KEY("bmpride"));
		while (not STREAMING.HAS_MODEL_LOADED(GAMEPLAY.GET_HASH_KEY("bmpride"))) do
			wait(450);
		end
	end 
	if(get_key_pressed(Keys.NumPad7)) then
		wait(400);
		STREAMING.REQUEST_NAMED_PTFX_ASSET("core");
		while (not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED("core")) do
			wait(200);
		end
		if(STREAMING.HAS_NAMED_PTFX_ASSET_LOADED("core")) then
			GRAPHICS._SET_PTFX_ASSET_NEXT_CALL("core");
			Sparkun_2 = GRAPHICS.START_PARTICLE_FX_LOOPED_ON_ENTITY("ent_amb_fbi_fire_wall_lg", Bumpkid, -0.17, 0.19, 1.17, -90.0, 0.0, 90.0, 1.265, false, false, false);
--			wait(400);
--			Sparkun_2 = GRAPHICS.START_PARTICLE_FX_LOOPED_ON_ENTITY("exp_hydrant", Bumpkid, -0.07, -1.19, 0.07, -90.0, 0.0, 0.0, 1.765, false, false, false);
--			wait(400);
--			Sparkun_2 = GRAPHICS.START_PARTICLE_FX_LOOPED_ON_ENTITY("exp_hydrant", Bumpkid, 0.07, -0.09, 0.07, -90.0, 0.0, 0.0, 1.265, false, false, false);
--			Sparkun_2 = GRAPHICS.START_PARTICLE_FX_LOOPED_ON_ENTITY("ent_amb_sprinkler_golf", Bumber1, -0.27, 0.019, 0.21, 0.0, 0.0, 0.0, 0.3, false, false, false);
			wait(1500);
			GRAPHICS.STOP_PARTICLE_FX_LOOPED(Sparkun_2, true);
		end
	end
	if(ENTITY.IS_ENTITY_AT_COORD(Bumpkid, 1013.714, 6982.064, 7.250, 29, 29, 29, false, false, 0)) and(not CartRyd) then
		CartRyd = true;
		BumpedCraze.place_Bcarz();
--		BumpedCraze.place_Bcarz2();
--
-- 2 dashes comments out a line so notes can be added or in this case so function links can be turned off/on
-- Above is  BumpedCraze.place_Bcarz(); and beneath is a commented out function link      --		BumpedCraze.place_Bcarz2();
--
-- --		BumpedCraze.place_Bcarz2(); is the original I was using. The BumpedCraze.place_Bcarz(); has your vehicles in being used.
-- So after testing just put 2 dashes before BumpedCraze.place_Bcarz(); and delete the 2 comments before --		BumpedCraze.place_Bcarz2();
--
--  --		BumpedCraze.place_Bcarz(); 
--			BumpedCraze.place_Bcarz2();
--
--
	end
	if(ENTITY.IS_ENTITY_AT_COORD(Bumpkid, 1013.883, 6991.106, 6.510, 5, 5, 3, false, false, 0)) and(not B_1) then
		B_1 = true;
		UI._SET_NOTIFICATION_TEXT_ENTRY("STRING");
		UI._ADD_TEXT_COMPONENT_STRING("Press the key G to ride Bumper Cars.");
		UI._DRAW_NOTIFICATION(false, true);
	elseif(ENTITY.IS_ENTITY_AT_COORD(Bumpkid, 1014.774, 6998.237, 6.510, 5, 5, 3, false, false, 0)) and(not B_2) then
		B_2 = true;
		UI._SET_NOTIFICATION_TEXT_ENTRY("STRING");
		UI._ADD_TEXT_COMPONENT_STRING("Press the key G to ride Bumper Cars.");
		UI._DRAW_NOTIFICATION(false, true);
	elseif(ENTITY.IS_ENTITY_AT_COORD(Bumpkid, 1026.788, 6995.414, 6.510, 5, 5, 3, false, false, 0)) and(not B_3) then
		B_3 = true;
		UI._SET_NOTIFICATION_TEXT_ENTRY("STRING");
		UI._ADD_TEXT_COMPONENT_STRING("Press the key G to ride Bumper Cars.");
		UI._DRAW_NOTIFICATION(false, true);
	elseif(ENTITY.IS_ENTITY_AT_COORD(Bumpkid, 1024.883, 6986.748, 6.510, 5, 5, 3, false, false, 0)) and(not B_4) then
		B_4 = true;
		UI._SET_NOTIFICATION_TEXT_ENTRY("STRING");
		UI._ADD_TEXT_COMPONENT_STRING("Press the key G to ride Bumper Cars.");
		UI._DRAW_NOTIFICATION(false, true);
	end
	if(B_1) and(not B_1a) and(get_key_pressed(Keys.G)) then
		B_1a = true;
		CAM.DO_SCREEN_FADE_OUT(100);
		STREAMING.REQUEST_MODEL(GAMEPLAY.GET_HASH_KEY("a_f_m_beach_01"));
		while(not STREAMING.HAS_MODEL_LOADED(GAMEPLAY.GET_HASH_KEY("a_f_m_beach_01"))) do
			wait(50);
		end
		if(STREAMING.HAS_MODEL_LOADED(GAMEPLAY.GET_HASH_KEY("a_f_m_beach_01"))) then
			Rider_1 = PED.CREATE_PED(12, GAMEPLAY.GET_HASH_KEY("a_f_m_beach_01"), 1014.774, 6998.237, 6.510, 0, true, true);
			PED.SET_PED_INTO_VEHICLE(Rider_1, Bumber6, -1);
			STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(Rider_1);
			VEHICLE.SET_VEHICLE_ENGINE_HEALTH(Bumber6, 1000);
			VEHICLE.SET_VEHICLE_STRONG(Bumber6, true);
			AI.SET_DRIVE_TASK_DRIVING_STYLE(Rider_1, 262144);
			PED.SET_DRIVER_ABILITY(Rider_1, 1.0);
			PED.SET_DRIVER_AGGRESSIVENESS(Rider_1, 1.0);
			STREAMING.REQUEST_NAMED_PTFX_ASSET("core");
			while (not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED("core")) do
				wait(200);
			end
			if(STREAMING.HAS_NAMED_PTFX_ASSET_LOADED("core")) then
				GRAPHICS._SET_PTFX_ASSET_NEXT_CALL("core");
				Sparkun_1 = GRAPHICS.START_PARTICLE_FX_LOOPED_ON_ENTITY("ent_amb_sparking_wires", Rider_1, -0.07, -0.19, 3.91, 180.0, 0.0, 0.0, 1.965, false, false, false);
			end
			Rider_4 = Rider_1;
		end
		STREAMING.REQUEST_MODEL(GAMEPLAY.GET_HASH_KEY("a_m_m_beach_02"));
		while(not STREAMING.HAS_MODEL_LOADED(GAMEPLAY.GET_HASH_KEY("a_m_m_beach_02"))) do
			wait(50);
		end
		if(STREAMING.HAS_MODEL_LOADED(GAMEPLAY.GET_HASH_KEY("a_m_m_beach_02"))) then
			Rider_2 = PED.CREATE_PED(12, GAMEPLAY.GET_HASH_KEY("a_m_m_beach_02"), 1014.774, 6998.237, 6.510, 0, true, true);
			PED.SET_PED_INTO_VEHICLE(Rider_2, Bumber7, -1);
			STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(Rider_2);
			VEHICLE.SET_VEHICLE_ENGINE_HEALTH(Bumber7, 1000);
			VEHICLE.SET_VEHICLE_STRONG(Bumber7, true);
			AI.SET_DRIVE_TASK_DRIVING_STYLE(Rider_2, 262144);
			PED.SET_DRIVER_ABILITY(Rider_2, 1.0);
			PED.SET_DRIVER_AGGRESSIVENESS(Rider_2, 1.0);
			STREAMING.REQUEST_NAMED_PTFX_ASSET("core");
			while (not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED("core")) do
				wait(200);
			end
			if(STREAMING.HAS_NAMED_PTFX_ASSET_LOADED("core")) then
				GRAPHICS._SET_PTFX_ASSET_NEXT_CALL("core");
				Sparkun_2 = GRAPHICS.START_PARTICLE_FX_LOOPED_ON_ENTITY("ent_amb_sparking_wires", Rider_2, -0.07, -0.19, 3.91, 180.0, 0.0, 0.0, 1.365, false, false, false);
			end
			Rider_5 = Rider_2;
		end
		STREAMING.REQUEST_MODEL(GAMEPLAY.GET_HASH_KEY("a_f_m_beach_01"));
		while(not STREAMING.HAS_MODEL_LOADED(GAMEPLAY.GET_HASH_KEY("a_f_m_beach_01"))) do
			wait(50);
		end
		if(STREAMING.HAS_MODEL_LOADED(GAMEPLAY.GET_HASH_KEY("a_m_m_beach_02"))) then
			Rider_3 = PED.CREATE_PED(12, GAMEPLAY.GET_HASH_KEY("a_m_m_beach_02"), 1014.774, 6998.237, 6.510, 0, true, true);
			PED.SET_PED_INTO_VEHICLE(Rider_3, Bumber8, -1);
			STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(Rider_3);
			VEHICLE.SET_VEHICLE_ENGINE_HEALTH(Bumber8, 1000);
			VEHICLE.SET_VEHICLE_STRONG(Bumber8, true);
			AI.SET_DRIVE_TASK_DRIVING_STYLE(Rider_3, 262144);
			PED.SET_DRIVER_ABILITY(Rider_3, 1.0);
			PED.SET_DRIVER_AGGRESSIVENESS(Rider_3, 1.0);
			STREAMING.REQUEST_NAMED_PTFX_ASSET("core");
			while (not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED("core")) do
				wait(200);
			end
			if(STREAMING.HAS_NAMED_PTFX_ASSET_LOADED("core")) then
				GRAPHICS._SET_PTFX_ASSET_NEXT_CALL("core");
				Sparkun_3 = GRAPHICS.START_PARTICLE_FX_LOOPED_ON_ENTITY("ent_amb_sparking_wires", Rider_3, -0.07, -0.19, 3.91, 180.0, 0.0, 0.0, 1.365, false, false, false);
			end
			Rider_6 = Rider_3;
		end
		PED.SET_PED_INTO_VEHICLE(Bumpkid, Bumber5, -1);
		wait(600);
		CAM.DO_SCREEN_FADE_IN(600);
		STREAMING.REQUEST_NAMED_PTFX_ASSET("core");
		while (not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED("core")) do
			wait(200);
		end
		if(STREAMING.HAS_NAMED_PTFX_ASSET_LOADED("core")) then
			GRAPHICS._SET_PTFX_ASSET_NEXT_CALL("core");
			Sparkun_0 = GRAPHICS.START_PARTICLE_FX_LOOPED_ON_ENTITY("ent_amb_sparking_wires", Bumpkid, -0.07, -0.19, 3.91, 180.0, 0.0, 0.0, 1.365, false, false, false);
			Sparkun = Sparkun_0;
		end
		AI.TASK_VEHICLE_ESCORT(Rider_5, Bumber7, PED.GET_VEHICLE_PED_IS_USING(Rider_6), -1, 80, 262144, 0, 1, 46);
		AI.TASK_VEHICLE_ESCORT(Rider_6, Bumber8, PED.GET_VEHICLE_PED_IS_USING(Rider_4), -1, 80, 262144, 0, 1, 46);
		AI.TASK_VEHICLE_ESCORT(Rider_4, Bumber6, PED.GET_VEHICLE_PED_IS_USING(Bumpkid), 2, 80, 262144, 0, 1, 46);
		PED.SET_PED_KEEP_TASK(Rider_6, true);
		PED.SET_PED_KEEP_TASK(Rider_5, true);
		PED.SET_PED_KEEP_TASK(Rider_4, true);
		SYSTEM.SETTIMERB(-1);
		Bsha1 = true;
	elseif(B_2) and(not B_4a) and(get_key_pressed(Keys.G)) then
		B_2a = true;
		CAM.DO_SCREEN_FADE_OUT(100);
		STREAMING.REQUEST_MODEL(GAMEPLAY.GET_HASH_KEY("a_f_m_beach_01"));
		while not STREAMING.HAS_MODEL_LOADED(GAMEPLAY.GET_HASH_KEY("a_f_m_beach_01")) do
			wait(50);
		end
		if(STREAMING.HAS_MODEL_LOADED(GAMEPLAY.GET_HASH_KEY("a_f_m_beach_01"))) then
			Rider_1 = PED.CREATE_PED(12, GAMEPLAY.GET_HASH_KEY("a_f_m_beach_01"), 1014.774, 6998.237, 6.510, 0, true, true);
			PED.SET_PED_INTO_VEHICLE(Rider_1, Bumber5, -1);
			STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(Rider_1);
			VEHICLE.SET_VEHICLE_ENGINE_HEALTH(Bumber5, 1000);
			VEHICLE.SET_VEHICLE_STRONG(Bumber5, true);
			AI.SET_DRIVE_TASK_DRIVING_STYLE(Rider_1, 262144);
			PED.SET_DRIVER_ABILITY(Rider_1, 1.0);
			PED.SET_DRIVER_AGGRESSIVENESS(Rider_1, 1.0);
			STREAMING.REQUEST_NAMED_PTFX_ASSET("core");
			while (not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED("core")) do
				wait(200);
			end
			if(STREAMING.HAS_NAMED_PTFX_ASSET_LOADED("core")) then
				GRAPHICS._SET_PTFX_ASSET_NEXT_CALL("core");
				Sparkun_1 = GRAPHICS.START_PARTICLE_FX_LOOPED_ON_ENTITY("ent_amb_sparking_wires", Rider_1, -0.07, -0.19, 3.91, 180.0, 0.0, 0.0, 1.365, false, false, false);
			end
			Rider_4 = Rider_1;
		end
		STREAMING.REQUEST_MODEL(GAMEPLAY.GET_HASH_KEY("a_m_m_beach_02"));
		while(not STREAMING.HAS_MODEL_LOADED(GAMEPLAY.GET_HASH_KEY("a_m_m_beach_02"))) do
			wait(50);
		end
		if(STREAMING.HAS_MODEL_LOADED(GAMEPLAY.GET_HASH_KEY("a_m_m_beach_02"))) then
			Rider_2 = PED.CREATE_PED(12, GAMEPLAY.GET_HASH_KEY("a_m_m_beach_02"), 1014.774, 6998.237, 6.510, 0, true, true);
			PED.SET_PED_INTO_VEHICLE(Rider_2, Bumber7, -1);
			STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(Rider_2);
			VEHICLE.SET_VEHICLE_ENGINE_HEALTH(Bumber7, 1000);
			VEHICLE.SET_VEHICLE_STRONG(Bumber7, true);
			AI.SET_DRIVE_TASK_DRIVING_STYLE(Rider_2, 262144);
			PED.SET_DRIVER_ABILITY(Rider_2, 1.0);
			PED.SET_DRIVER_AGGRESSIVENESS(Rider_2, 1.0);
			STREAMING.REQUEST_NAMED_PTFX_ASSET("core");
			while (not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED("core")) do
				wait(200);
			end
			if(STREAMING.HAS_NAMED_PTFX_ASSET_LOADED("core")) then
				GRAPHICS._SET_PTFX_ASSET_NEXT_CALL("core");
				Sparkun_2 = GRAPHICS.START_PARTICLE_FX_LOOPED_ON_ENTITY("ent_amb_sparking_wires", Rider_2, -0.07, -0.19, 3.91, 180.0, 0.0, 0.0, 1.365, false, false, false);
			end
			Rider_5 = Rider_2;
		end
		STREAMING.REQUEST_MODEL(GAMEPLAY.GET_HASH_KEY("a_f_m_beach_01"));
		while(not STREAMING.HAS_MODEL_LOADED(GAMEPLAY.GET_HASH_KEY("a_f_m_beach_01"))) do
			wait(50);
		end
		if(STREAMING.HAS_MODEL_LOADED(GAMEPLAY.GET_HASH_KEY("a_m_m_beach_02"))) then
			Rider_3 = PED.CREATE_PED(12, GAMEPLAY.GET_HASH_KEY("a_m_m_beach_02"), 1014.774, 6998.237, 6.510, 0, true, true);
			PED.SET_PED_INTO_VEHICLE(Rider_3, Bumber8, -1);
			STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(Rider_3);
			VEHICLE.SET_VEHICLE_ENGINE_HEALTH(Bumber8, 1000);
			VEHICLE.SET_VEHICLE_STRONG(Bumber8, true);
			AI.SET_DRIVE_TASK_DRIVING_STYLE(Rider_3, 262144);
			PED.SET_DRIVER_ABILITY(Rider_3, 1.0);
			PED.SET_DRIVER_AGGRESSIVENESS(Rider_3, 1.0);
			STREAMING.REQUEST_NAMED_PTFX_ASSET("core");
			while (not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED("core")) do
				wait(200);
			end
			if(STREAMING.HAS_NAMED_PTFX_ASSET_LOADED("core")) then
				GRAPHICS._SET_PTFX_ASSET_NEXT_CALL("core");
				Sparkun_3 = GRAPHICS.START_PARTICLE_FX_LOOPED_ON_ENTITY("ent_amb_sparking_wires", Rider_3, -0.07, -0.19, 3.91, 180.0, 0.0, 0.0, 1.365, false, false, false);
			end
			Rider_6 = Rider_3;
		end
		PED.SET_PED_INTO_VEHICLE(Bumpkid, Bumber6, -1);
		wait(600);
		CAM.DO_SCREEN_FADE_IN(600);
		STREAMING.REQUEST_NAMED_PTFX_ASSET("core");
		while (not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED("core")) do
			wait(200);
		end
		if(STREAMING.HAS_NAMED_PTFX_ASSET_LOADED("core")) then
			GRAPHICS._SET_PTFX_ASSET_NEXT_CALL("core");
			Sparkun_0 = GRAPHICS.START_PARTICLE_FX_LOOPED_ON_ENTITY("ent_amb_sparking_wires", Bumpkid, -0.07, -0.19, 3.91, 180.0, 0.0, 0.0, 1.365, false, false, false);
			Sparkun = Sparkun_0;
		end
		AI.TASK_VEHICLE_ESCORT(Rider_5, Bumber7, PED.GET_VEHICLE_PED_IS_USING(Rider_6), -1, 80, 262144, 0, 1, 46);
		AI.TASK_VEHICLE_ESCORT(Rider_6, Bumber8, PED.GET_VEHICLE_PED_IS_USING(Rider_4), -1, 80, 262144, 0, 1, 46);
		AI.TASK_VEHICLE_ESCORT(Rider_4, Bumber5, PED.GET_VEHICLE_PED_IS_USING(Bumpkid), 4, 80, 262144, 0, 1, 46);
		PED.SET_PED_KEEP_TASK(Rider_6, true);
		PED.SET_PED_KEEP_TASK(Rider_5, true);
		PED.SET_PED_KEEP_TASK(Rider_4, true);
		SYSTEM.SETTIMERB(-1);
		Bsha1 = true;
	elseif(B_3) and(not B_3a) and(get_key_pressed(Keys.G)) then
		B_3a = true;
		CAM.DO_SCREEN_FADE_OUT(100);
		STREAMING.REQUEST_MODEL(GAMEPLAY.GET_HASH_KEY("a_f_m_beach_01"));
		while not STREAMING.HAS_MODEL_LOADED(GAMEPLAY.GET_HASH_KEY("a_f_m_beach_01")) do
			wait(50);
		end
		if(STREAMING.HAS_MODEL_LOADED(GAMEPLAY.GET_HASH_KEY("a_f_m_beach_01"))) then
			Rider_1 = PED.CREATE_PED(12, GAMEPLAY.GET_HASH_KEY("a_f_m_beach_01"), 1014.774, 6998.237, 6.510, 0, true, true);
			PED.SET_PED_INTO_VEHICLE(Rider_1, Bumber5, -1);
			STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(Rider_1);
			VEHICLE.SET_VEHICLE_ENGINE_HEALTH(Bumber5, 1000);
			VEHICLE.SET_VEHICLE_STRONG(Bumber5, true);
			AI.SET_DRIVE_TASK_DRIVING_STYLE(Rider_1, 262144);
			PED.SET_DRIVER_ABILITY(Rider_1, 1.0);
			PED.SET_DRIVER_AGGRESSIVENESS(Rider_1, 1.0);
			STREAMING.REQUEST_NAMED_PTFX_ASSET("core");
			while (not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED("core")) do
				wait(200);
			end
			if(STREAMING.HAS_NAMED_PTFX_ASSET_LOADED("core")) then
				GRAPHICS._SET_PTFX_ASSET_NEXT_CALL("core");
				Sparkun_1 = GRAPHICS.START_PARTICLE_FX_LOOPED_ON_ENTITY("ent_amb_sparking_wires", Rider_1, -0.07, -0.19, 3.91, 180.0, 0.0, 0.0, 1.365, false, false, false);
			end
			Rider_4 = Rider_1;
		end
		STREAMING.REQUEST_MODEL(GAMEPLAY.GET_HASH_KEY("a_m_m_beach_02"));
		while not STREAMING.HAS_MODEL_LOADED(GAMEPLAY.GET_HASH_KEY("a_m_m_beach_02")) do
			wait(50);
		end
		if(STREAMING.HAS_MODEL_LOADED(GAMEPLAY.GET_HASH_KEY("a_m_m_beach_02"))) then
			Rider_2 = PED.CREATE_PED(12, GAMEPLAY.GET_HASH_KEY("a_m_m_beach_02"), 1014.774, 6998.237, 6.510, 0, true, true);
			PED.SET_PED_INTO_VEHICLE(Rider_2, Bumber6, -1);
			STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(Rider_2);
			VEHICLE.SET_VEHICLE_ENGINE_HEALTH(Bumber6, 1000);
			VEHICLE.SET_VEHICLE_STRONG(Bumber6, true);
			AI.SET_DRIVE_TASK_DRIVING_STYLE(Rider_2, 262144);
			PED.SET_DRIVER_ABILITY(Rider_2, 1.0);
			PED.SET_DRIVER_AGGRESSIVENESS(Rider_2, 1.0);
			STREAMING.REQUEST_NAMED_PTFX_ASSET("core");
			while (not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED("core")) do
				wait(200);
			end
			if(STREAMING.HAS_NAMED_PTFX_ASSET_LOADED("core")) then
				GRAPHICS._SET_PTFX_ASSET_NEXT_CALL("core");
				Sparkun_2 = GRAPHICS.START_PARTICLE_FX_LOOPED_ON_ENTITY("ent_amb_sparking_wires", Rider_2, -0.07, -0.19, 3.91, 180.0, 0.0, 0.0, 1.365, false, false, false);
			end
			Rider_5 = Rider_2;
		end
		STREAMING.REQUEST_MODEL(GAMEPLAY.GET_HASH_KEY("a_f_m_beach_01"));
		while not STREAMING.HAS_MODEL_LOADED(GAMEPLAY.GET_HASH_KEY("a_f_m_beach_01")) do
			wait(50);
		end
		if(STREAMING.HAS_MODEL_LOADED(GAMEPLAY.GET_HASH_KEY("a_m_m_beach_02"))) then
			Rider_3 = PED.CREATE_PED(12, GAMEPLAY.GET_HASH_KEY("a_m_m_beach_02"), 1014.774, 6998.237, 6.510, 0, true, true);
			PED.SET_PED_INTO_VEHICLE(Rider_3, Bumber8, -1);
			STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(Rider_3);
			VEHICLE.SET_VEHICLE_ENGINE_HEALTH(Bumber8, 1000);
			VEHICLE.SET_VEHICLE_STRONG(Bumber8, true);
			AI.SET_DRIVE_TASK_DRIVING_STYLE(Rider_3, 262144);
			PED.SET_DRIVER_ABILITY(Rider_3, 1.0);
			PED.SET_DRIVER_AGGRESSIVENESS(Rider_3, 1.0);
			STREAMING.REQUEST_NAMED_PTFX_ASSET("core");
			while (not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED("core")) do
				wait(200);
			end
			if(STREAMING.HAS_NAMED_PTFX_ASSET_LOADED("core")) then
				GRAPHICS._SET_PTFX_ASSET_NEXT_CALL("core");
				Sparkun_3 = GRAPHICS.START_PARTICLE_FX_LOOPED_ON_ENTITY("ent_amb_sparking_wires", Rider_3, -0.07, -0.19, 3.91, 180.0, 0.0, 0.0, 1.365, false, false, false);
			end
			Rider_6 = Rider_3;
		end
		PED.SET_PED_INTO_VEHICLE(Bumpkid, Bumber7, -1);
		wait(600);
		CAM.DO_SCREEN_FADE_IN(600);
		STREAMING.REQUEST_NAMED_PTFX_ASSET("core");
		while (not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED("core")) do
			wait(200);
		end
		if(STREAMING.HAS_NAMED_PTFX_ASSET_LOADED("core")) then
			GRAPHICS._SET_PTFX_ASSET_NEXT_CALL("core");
			Sparkun_0 = GRAPHICS.START_PARTICLE_FX_LOOPED_ON_ENTITY("ent_amb_sparking_wires", Bumpkid, -0.07, -0.19, 3.91, 180.0, 0.0, 0.0, 1.365, false, false, false);
			Sparkun = Sparkun_0;
		end
		AI.TASK_VEHICLE_ESCORT(Rider_5, Bumber6, PED.GET_VEHICLE_PED_IS_USING(Rider_6), -1, 80, 262144, 0, 1, 46);
		AI.TASK_VEHICLE_ESCORT(Rider_6, Bumber8, PED.GET_VEHICLE_PED_IS_USING(Rider_4), -1, 80, 262144, 0, 1, 46);
		AI.TASK_VEHICLE_ESCORT(Rider_4, Bumber5, PED.GET_VEHICLE_PED_IS_USING(Bumpkid), 3, 80, 262144, 0, 1, 46);
		PED.SET_PED_KEEP_TASK(Rider_6, true);
		PED.SET_PED_KEEP_TASK(Rider_5, true);
		PED.SET_PED_KEEP_TASK(Rider_4, true);
		SYSTEM.SETTIMERB(-1);
		Bsha1 = true;
	elseif(B_4) and(not B_4a) and(get_key_pressed(Keys.G)) then
		B_4a = true;
		CAM.DO_SCREEN_FADE_OUT(100);
		STREAMING.REQUEST_MODEL(GAMEPLAY.GET_HASH_KEY("a_f_m_beach_01"))
		while not STREAMING.HAS_MODEL_LOADED(GAMEPLAY.GET_HASH_KEY("a_f_m_beach_01")) do
			wait(50);
		end
		if(STREAMING.HAS_MODEL_LOADED(GAMEPLAY.GET_HASH_KEY("a_f_m_beach_01"))) then
			Rider_1 = PED.CREATE_PED(12, GAMEPLAY.GET_HASH_KEY("a_f_m_beach_01"), 1014.774, 6998.237, 6.510, 0, true, true);
			PED.SET_PED_INTO_VEHICLE(Rider_1, Bumber6, -1);
			STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(Rider_1);
			VEHICLE.SET_VEHICLE_ENGINE_HEALTH(Bumber6, 1000);
			VEHICLE.SET_VEHICLE_STRONG(Bumber6, true);
			AI.SET_DRIVE_TASK_DRIVING_STYLE(Rider_1, 262144);
			PED.SET_DRIVER_ABILITY(Rider_1, 1.0);
			PED.SET_DRIVER_AGGRESSIVENESS(Rider_1, 1.0);
			STREAMING.REQUEST_NAMED_PTFX_ASSET("core");
			while (not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED("core")) do
				wait(200);
			end
			if(STREAMING.HAS_NAMED_PTFX_ASSET_LOADED("core")) then
				GRAPHICS._SET_PTFX_ASSET_NEXT_CALL("core");
				Sparkun_1 = GRAPHICS.START_PARTICLE_FX_LOOPED_ON_ENTITY("ent_amb_sparking_wires", Rider_1, -0.07, -0.19, 3.91, 180.0, 0.0, 0.0, 1.365, false, false, false);
			end
			Rider_4 = Rider_1;
		end
		STREAMING.REQUEST_MODEL(GAMEPLAY.GET_HASH_KEY("a_m_m_beach_02"))
		while not STREAMING.HAS_MODEL_LOADED(GAMEPLAY.GET_HASH_KEY("a_m_m_beach_02")) do
			wait(50);
		end
		if(STREAMING.HAS_MODEL_LOADED(GAMEPLAY.GET_HASH_KEY("a_m_m_beach_02"))) then
			Rider_2 = PED.CREATE_PED(12, GAMEPLAY.GET_HASH_KEY("a_m_m_beach_02"), 1014.774, 6998.237, 6.510, 0, true, true);
			PED.SET_PED_INTO_VEHICLE(Rider_2, Bumber5, -1);
			STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(Rider_2);
			VEHICLE.SET_VEHICLE_ENGINE_HEALTH(Bumber5, 1000);
			VEHICLE.SET_VEHICLE_STRONG(Bumber5, true);
			AI.SET_DRIVE_TASK_DRIVING_STYLE(Rider_2, 262144);
			PED.SET_DRIVER_ABILITY(Rider_2, 1.0);
			PED.SET_DRIVER_AGGRESSIVENESS(Rider_2, 1.0);
			STREAMING.REQUEST_NAMED_PTFX_ASSET("core");
			while (not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED("core")) do
				wait(200);
			end
			if(STREAMING.HAS_NAMED_PTFX_ASSET_LOADED("core")) then
				GRAPHICS._SET_PTFX_ASSET_NEXT_CALL("core");
				Sparkun_2 = GRAPHICS.START_PARTICLE_FX_LOOPED_ON_ENTITY("ent_amb_sparking_wires", Rider_2, -0.07, -0.19, 3.91, 180.0, 0.0, 0.0, 1.365, false, false, false);
			end
			Rider_5 = Rider_2;
		end
		STREAMING.REQUEST_MODEL(GAMEPLAY.GET_HASH_KEY("a_m_m_beach_02"))
		while not STREAMING.HAS_MODEL_LOADED(GAMEPLAY.GET_HASH_KEY("a_m_m_beach_02")) do
			wait(50);
		end
		if(STREAMING.HAS_MODEL_LOADED(GAMEPLAY.GET_HASH_KEY("a_m_m_beach_02"))) then
			Rider_3 = PED.CREATE_PED(12, GAMEPLAY.GET_HASH_KEY("a_m_m_beach_02"), 1014.774, 6998.237, 6.510, 0, true, true);
			PED.SET_PED_INTO_VEHICLE(Rider_3, Bumber7, -1);
			STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(Rider_3);
			VEHICLE.SET_VEHICLE_ENGINE_HEALTH(Bumber7, 1000);
			VEHICLE.SET_VEHICLE_STRONG(Bumber7, true);
			AI.SET_DRIVE_TASK_DRIVING_STYLE(Rider_3, 262144);
			PED.SET_DRIVER_ABILITY(Rider_3, 1.0);
			PED.SET_DRIVER_AGGRESSIVENESS(Rider_3, 1.0);
			STREAMING.REQUEST_NAMED_PTFX_ASSET("core");
			while (not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED("core")) do
				wait(200);
			end
			if(STREAMING.HAS_NAMED_PTFX_ASSET_LOADED("core")) then
				GRAPHICS._SET_PTFX_ASSET_NEXT_CALL("core");
				Sparkun_3 = GRAPHICS.START_PARTICLE_FX_LOOPED_ON_ENTITY("ent_amb_sparking_wires", Rider_3, -0.07, -0.19, 3.91, 180.0, 0.0, 0.0, 1.365, false, false, false);
			end
			Rider_6 = Rider_3;
		end
		PED.SET_PED_INTO_VEHICLE(Bumpkid, Bumber8, -1);
		wait(600);
		CAM.DO_SCREEN_FADE_IN(600);
		STREAMING.REQUEST_NAMED_PTFX_ASSET("core");
		while (not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED("core")) do
			wait(200);
		end
		if(STREAMING.HAS_NAMED_PTFX_ASSET_LOADED("core")) then
			GRAPHICS._SET_PTFX_ASSET_NEXT_CALL("core");
			Sparkun_0 = GRAPHICS.START_PARTICLE_FX_LOOPED_ON_ENTITY("ent_amb_sparking_wires", Bumpkid, -0.07, -0.19, 3.91, 180.0, 0.0, 0.0, 1.365, false, false, false);
			Sparkun = Sparkun_0;
		end
		AI.TASK_VEHICLE_ESCORT(Rider_5, Bumber5, PED.GET_VEHICLE_PED_IS_USING(Rider_6), -1, 80, 262144, 0, 1, 46);
		AI.TASK_VEHICLE_ESCORT(Rider_6, Bumber7, PED.GET_VEHICLE_PED_IS_USING(Rider_4), -1, 80, 262144, 0, 1, 46);
		AI.TASK_VEHICLE_ESCORT(Rider_4, Bumber6, PED.GET_VEHICLE_PED_IS_USING(Bumpkid), 1, 80, 262144, 0, 1, 46);
		PED.SET_PED_KEEP_TASK(Rider_6, true);
		PED.SET_PED_KEEP_TASK(Rider_5, true);
		PED.SET_PED_KEEP_TASK(Rider_4, true);
		SYSTEM.SETTIMERB(-1);
		Bsha1 = true;
	end
	if(Bsha1) and(SYSTEM.TIMERA() > 2500) and(SYSTEM.TIMERA() < 2600) then
		Bsha1 = false;
		AI.TASK_VEHICLE_CHASE(Rider_5, Bumpkid);
		AI.TASK_VEHICLE_CHASE(Rider_4, Rider_5);
		AI.TASK_VEHICLE_CHASE(Rider_6, Rider_4);
		PED.SET_PED_KEEP_TASK(Rider_6, true);
		PED.SET_PED_KEEP_TASK(Rider_5, true);
		PED.SET_PED_KEEP_TASK(Rider_4, true);
		Bsha2 = true;
	end
	if(Bsha2) and(SYSTEM.TIMERA() > 5500) and(SYSTEM.TIMERA() < 5600) then
		Bsha2 = false;
		AI.TASK_VEHICLE_DRIVE_WANDER(Rider_5, Bumber5, 335, 262144);
		AI.TASK_VEHICLE_ESCORT(Rider_6, Bumber7, PED.GET_VEHICLE_PED_IS_USING(Rider_4), -1, 80, 262144, 0, 1, 46);
		AI.TASK_VEHICLE_DRIVE_WANDER(Rider_4, Bumber6, 335, 262144);
		PED.SET_PED_KEEP_TASK(Rider_6, true);
		PED.SET_PED_KEEP_TASK(Rider_5, true);
		PED.SET_PED_KEEP_TASK(Rider_4, true);
		Bsha3 = true;
	end
	if(Bsha3) and(SYSTEM.TIMERA() > 9500) and(SYSTEM.TIMERA() < 9600) then
		Bsha3 = false;
		AI.TASK_VEHICLE_ESCORT(Rider_5, Bumber5, PED.GET_VEHICLE_PED_IS_USING(Bumpkid), -1, 80, 262144, 0, 1, 46);
		AI.TASK_VEHICLE_ESCORT(Rider_6, Bumber7, PED.GET_VEHICLE_PED_IS_USING(Rider_4), -1, 80, 262144, 0, 1, 46);
		AI.TASK_VEHICLE_ESCORT(Rider_4, Bumber6, PED.GET_VEHICLE_PED_IS_USING(Bumpkid), 1, 80, 262144, 0, 1, 46);
		PED.SET_PED_KEEP_TASK(Rider_6, true);
		PED.SET_PED_KEEP_TASK(Rider_5, true);
		PED.SET_PED_KEEP_TASK(Rider_4, true);
		Bsha4 = true;
	end
	if(Bsha4) and(SYSTEM.TIMERA() > 9500) and(SYSTEM.TIMERA() < 9600) then
		AI.TASK_VEHICLE_ESCORT(Rider_5, Bumber7, PED.GET_VEHICLE_PED_IS_USING(Rider_6), -1, 80, 262144, 0, 1, 46);
		AI.TASK_VEHICLE_ESCORT(Rider_6, Bumber8, PED.GET_VEHICLE_PED_IS_USING(Rider_4), -1, 80, 262144, 0, 1, 46);
		AI.TASK_VEHICLE_ESCORT(Rider_4, Bumber6, PED.GET_VEHICLE_PED_IS_USING(Bumpkid), 2, 80, 262144, 0, 1, 46);
		PED.SET_PED_KEEP_TASK(Rider_6, true);
		PED.SET_PED_KEEP_TASK(Rider_5, true);
		PED.SET_PED_KEEP_TASK(Rider_4, true);
		Bsha4 = false;
	end
	if(get_key_pressed(Keys.G)) and(B_1) then
		B_1 = false;
		UI._SET_NOTIFICATION_TEXT_ENTRY("STRING");
		UI._ADD_TEXT_COMPONENT_STRING("Press the O key to get Out of Bumper Cars.");
		UI._DRAW_NOTIFICATION(false, true);
	end
	if(get_key_pressed(Keys.G)) and(B_2) then
		B_2 = false;
		UI._SET_NOTIFICATION_TEXT_ENTRY("STRING");
		UI._ADD_TEXT_COMPONENT_STRING("Press the O key to get Out of Bumper Cars.");
		UI._DRAW_NOTIFICATION(false, true);
	end
	if(get_key_pressed(Keys.G)) and(B_3) then
		B_3 = false;
		UI._SET_NOTIFICATION_TEXT_ENTRY("STRING");
		UI._ADD_TEXT_COMPONENT_STRING("Press the O key to get Out of Bumper Cars.");
		UI._DRAW_NOTIFICATION(false, true);
	end
	if(get_key_pressed(Keys.G)) and(B_4) then
		B_4 = false;
		UI._SET_NOTIFICATION_TEXT_ENTRY("STRING");
		UI._ADD_TEXT_COMPONENT_STRING("Press the O key to get Out of Bumper Cars.");
		UI._DRAW_NOTIFICATION(false, true);
	end
	if(get_key_pressed(Keys.O)) then
		B_1 = false;
		B_2 = false;
		B_3 = false;
		B_4 = false;
--		B_5 = false;
		B_1a = false;
		B_2a = false;
		B_3a = false;
		B_4a = false;
		B_5a = false;
		ENTITY.DELETE_ENTITY(Rider_4);
		ENTITY.DELETE_ENTITY(Rider_5);
		ENTITY.DELETE_ENTITY(Rider_6);
		VEHICLE.DELETE_VEHICLE(Bumber5);
		VEHICLE.DELETE_VEHICLE(Bumber6);
		VEHICLE.DELETE_VEHICLE(Bumber7);
		VEHICLE.DELETE_VEHICLE(Bumber8);
		GRAPHICS.STOP_PARTICLE_FX_LOOPED(Sparkun, true);
	end
end


return BumpedCraze;