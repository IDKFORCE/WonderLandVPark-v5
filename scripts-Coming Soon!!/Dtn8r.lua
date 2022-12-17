Dtn8r = {}

function Dtn8r.unload()
end

function Dtn8r.init()	
	Dtn8rkid = PLAYER.PLAYER_PED_ID(); -- < -------------------------- Our term used here assigns our Player as Dtn8rkid.
	Dtn8rflot = PLAYER.GET_PLAYER_PED(Dtn8rkid);
	Dtn8rLoc = ENTITY.GET_ENTITY_COORDS(Dtn8rkid, nil);
	FrontDtn8r = ENTITY.GET_ENTITY_HEADING(PLAYER.PLAYER_PED_ID())
	Deton = GAMEPLAY.GET_HASH_KEY("detonator2");
	Detoncrz = GAMEPLAY.GET_HASH_KEY("detonatorcars");
	Detonsndz = GAMEPLAY.GET_HASH_KEY("prop_elecbox_10");
	CameraID_1 = 0;
	climbeat = 0;
	clim2beat = 0;
	Costrd = 0;
	Detn8r0 = 0;
	Detn8r1 = 0;
	Detn8r2 = 0;
	Detn8r3 = 0;
	Dtn8rticket = 0;
	Dtn8rprchse = 0;
	cmswp = false;
	cmswp_2 = false;
	ddwnn = false;
	poichse = false;
	uupp = false;
	STREAMING.REMOVE_IPL("detonatorride");
end

function Dtn8r.buyticket()
	if (PED.IS_PED_MODEL(Dtn8rkid, GAMEPLAY.GET_HASH_KEY("player_zero"))) then		        		            -- Argument checks if the player ped is = to the Dtn8rmodel of player 0 or Michael.
		Dtn8rmodel = 0;                                      													-- "Dtn8rmodel" identifies who gets paid. 0 or player_zero is Michael.
	elseif (PED.IS_PED_MODEL(Dtn8rkid, GAMEPLAY.GET_HASH_KEY("player_one"))) then                               -- Argument checks if the player ped is = to the Dtn8rmodel of player 1 or Franklin.
		Dtn8rmodel = 1;                                      													-- "Dtn8rmodel" identifies who gets paid. 1 or player_one is Franklin.                                         
	elseif (PED.IS_PED_MODEL(Dtn8rkid, GAMEPLAY.GET_HASH_KEY("player_two"))) then                               -- Argument checks if the player ped is = to the Dtn8rmodel of player 2 or Trevor.
		Dtn8rmodel = 2;                                      													-- "Dtn8rmodel" identifies who gets paid. 2 or player_two is Trevor.
	end
-- We identify the functions required to be included in order to give money as an award.
	local statname = "SP"..Dtn8rmodel.."_TOTAL_CASH"        													-- "statname" will register your stats to show money. "Dtn8rmodel" identifies who is paid.
	local hash = GAMEPLAY.GET_HASH_KEY(statname);	   															-- Our term "hash" is identified as the "statname" (see it below?) 
	local bool, val = STATS.STAT_GET_INT(hash, 0, -1);  															-- Here we identify our terms bool and val as the result of current money.

	STATS.STAT_SET_INT(hash, val - Dtn8rticket, true);	   													    -- This will show the value removed on screen with the total amount of money remaining after transaction.	
	AUDIO.PLAY_SOUND_FRONTEND(-1, "CHECKPOINT_UNDER_THE_BRIDGE", "HUD_MINI_GAME_SOUNDSET", false);
end																								 				-- Close of function.

function Dtn8r.tick()
	if(ENTITY.IS_ENTITY_AT_COORD(Dtn8rkid, 868.2956, 6874.013, 5.467683, 2, 2, 1, false, false, 0)) then
		UI._SET_NOTIFICATION_TEXT_ENTRY("STRING");
		UI._ADD_TEXT_COMPONENT_STRING("Press G key to buy a ticket to ride Detonator.");
		UI._ADD_TEXT_COMPONENT_STRING("Ticket Price $2.00.");
		UI._DRAW_NOTIFICATION(false, true);
	end
	if(ENTITY.IS_ENTITY_AT_COORD(Dtn8rkid, 868.2956, 6874.012, 5.467682, 4, 4, 4, false, false, 0)) and(get_key_pressed(Keys.G)) then
		Dtn8rprchse = 2;
		Dtn8rticket = Dtn8rprchse;
		Dtn8r.buyticket();
		CAM.DO_SCREEN_FADE_OUT(30);
		STREAMING.REMOVE_IPL("detonatorprk");
		STREAMING.REQUEST_IPL("detonatorride");
		STREAMING.REQUEST_ANIM_DICT("veh@boat@speed@fds@base");
		STREAMING.REQUEST_ANIM_DICT("skydive@parachute@first_person");
		STREAMING.REQUEST_MODEL(Detonsndz);
		while not STREAMING.HAS_MODEL_LOADED(Detonsndz) do
			wait(0)
		end
		wait(400);
--- Camera Start Begin
		CameraID_1 = CAM.CREATE_CAM("DEFAULT_SCRIPTED_CAMERA", true);
		CAM.RENDER_SCRIPT_CAMS(true, true, 2500, true, false);
		CAM.ATTACH_CAM_TO_ENTITY(CameraID_1, Dtn8rkid, 0, 1, 5, true);
		CAM.POINT_CAM_AT_ENTITY(CameraID_1, Dtn8rkid, 0, 0, -180, true);
--- Camera Start End
		CAM.DO_SCREEN_FADE_IN(730);
		Detn8r1 = OBJECT.CREATE_OBJECT(Detoncrz, 892.073, 6863.818, 5.279375, false, false, true);
		ENTITY.ATTACH_ENTITY_TO_ENTITY(Dtn8rkid, Detn8r1, PED.GET_PED_BONE_INDEX(Detn8r1, 29846), 2.14, 0.25, 1.970, -24.90, 0, -80, false, false, false, true, 1, true);
		Detn8r2 = OBJECT.CREATE_OBJECT(Detonsndz, 892.074, 6863.817, 5.279375, false, false, true);
		ENTITY.SET_ENTITY_ALPHA(Detn8r2, 0, false);
		ENTITY.ATTACH_ENTITY_TO_ENTITY(Detn8r2, Detn8r1, PED.GET_PED_BONE_INDEX(Detn8r1, 29846), 2.10, 0.25, 1.970, -24.90, 0, -80, false, false, false, true, 1, true);
		AI.TASK_PLAY_ANIM(Dtn8rkid,"veh@boat@speed@fds@base", "sit_slow", 4, -4, -1, 1, 0, true, true, true);
		Detn8r3 = Detn8r1;
		Detn8r0 = Detn8r2;
		Dtn8rLoc = ENTITY.GET_ENTITY_COORDS(Dtn8rkid, nil);
		SYSTEM.SETTIMERA(-1);
		poichse = true;
	end
	if(SYSTEM.TIMERA() > 400) and(poichse) then
		poichse = false;
		local climbeat = AUDIO.GET_SOUND_ID();
		AUDIO.PLAY_SOUND_FROM_ENTITY(climbeat, "TRAIN_COMING", Dtn8rkid, "NIGEL_03_SOUNDSET", true, 0);
		clim2beat = climbeat;
		SYSTEM.SETTIMERB(-1);
		uupp = true;
		cmswp = true;
	end
	if(SYSTEM.TIMERB() > 3700) and(SYSTEM.TIMERB() < 3800) and(cmswp) then
		cmswp = false;
--- Camera Destroy Begin
		CAM.RENDER_SCRIPT_CAMS(false, true, 1000, true, true);
		CAM.DESTROY_CAM(CameraID_1, true);
		CamID = 0;
--- Camera Destroy End
		CAM.SET_FOLLOW_PED_CAM_VIEW_MODE(4);
	end
	if(SYSTEM.TIMERB() > 56800) and(uupp) then
		SYSTEM.SETTIMERB(-1);
		AUDIO.STOP_SOUND(clim2beat);
		AI.TASK_PLAY_ANIM(Dtn8rkid,"skydive@parachute@first_person", "chute_forward", 4, -4, -1, 1, 0, true, true, true);
		uupp = false;
		ddwnn = true;
		Dtn8rLoc = ENTITY.GET_ENTITY_COORDS(Dtn8rkid, nil);
		climbeat = 0;
		clim2beat = 0;
		AUDIO.PLAY_PAIN(Dtn8rkid, 8, 0);
	end
	if(uupp) then
		OBJECT.SLIDE_OBJECT(Detn8r3, 894.213, 6864.068, 192.461, 0, 0, 0.07, false);
	end
	if(ddwnn) then
		OBJECT.SLIDE_OBJECT(Detn8r3, 892.073, 6863.818, 5.279375, 0, 0, 3.43, false);
	end
	if(SYSTEM.TIMERB() > 1500) and(ddwnn) then
		SYSTEM.SETTIMERB(-1);
		uupp = false;
		ddwnn = false;
		ENTITY.DELETE_ENTITY(Detn8r3);
		ENTITY.DELETE_ENTITY(Detn8r0);
		STREAMING.REMOVE_IPL("detonatorride");
		STREAMING.REQUEST_IPL("detonatorprk");
		AI.CLEAR_PED_TASKS(Dtn8rkid);
		STREAMING.REMOVE_ANIM_DICT("veh@boat@speed@fds@base");
		STREAMING.REMOVE_ANIM_DICT("skydive@parachute@first_person");
		Detn8r0 = 0;
		Detn8r2 = 0;
	end
end


return Dtn8r;