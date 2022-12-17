DunkClown = {}

function Pay_Dunk()
	AI.TASK_PLAY_ANIM(Ballvnd,"mp_am_hold_up","purchase_energydrink_shopkeeper", 8, 8, -1, 0, 0, true, true, true);
	wait(700);
	AI.TASK_TURN_PED_TO_FACE_COORD(DunkClownkid, 1046.611, 7053.927, 6.440, 200);
	wait(823);
	AI.TASK_PLAY_ANIM(DunkClownkid,"mini@sprunk@first_person","plyr_buy_drink_pt1", -4, 8, 600, 0, 0, true, true, true);
	wait(400);
	AUDIO._PLAY_AMBIENT_SPEECH2(Ballvnd, "GENERIC_THANKS", "SPEECH_PARAMS_FORCE_NORMAL");
	WEAPON.GIVE_WEAPON_TO_PED(Ballvnd, GAMEPLAY.GET_HASH_KEY("WEAPON_UNARMED"), 1000, true, true);
	wait(420);
	WEAPON.GIVE_WEAPON_TO_PED(DunkClownkid, GAMEPLAY.GET_HASH_KEY("WEAPON_SNOWBALL"), 1000, true, true);
	PLAYER.SET_PLAYER_WEAPON_DAMAGE_MODIFIER(DunkClownkid, 5);
	AI.TASK_GO_STRAIGHT_TO_COORD(DunkClownkid, 1047.961, 7061.518, 6.440, 2, -1, 400, 0);
	STREAMING.REQUEST_ANIM_DICT("veh@boat@speed@fds@base");
	wait(400);
	AI.TASK_GO_STRAIGHT_TO_COORD(DunkClownkid, 1046.92, 7060.303, 6.440, 2, -1, 100, 0); 
	AI.TASK_TURN_PED_TO_FACE_COORD(DunkClownkid, 1043.001, 7060.039, 7.292, 700);
	WEAPON.GIVE_WEAPON_TO_PED(DunkClownkid, GAMEPLAY.GET_HASH_KEY("WEAPON_SNOWBALL"), 1000, true, true);
	PLAYER.SET_PLAYER_WEAPON_DAMAGE_MODIFIER(DunkClownkid, 5);
	STREAMING.REQUEST_ANIM_DICT("amb@code_human_cower@female@react_cowering");
	AUDIO._PLAY_AMBIENT_SPEECH1(DunkClownkid, "GENERIC_THANKS", "SPEECH_PARAMS_FORCE_SHOUTED");
-------------- try making clown climb onto tank
	STREAMING.REQUEST_MODEL(GAMEPLAY.GET_HASH_KEY("prop_ping_pong"));
	while(not STREAMING.HAS_MODEL_LOADED(GAMEPLAY.GET_HASH_KEY("prop_ping_pong"))) do
		wait(50);
	end
	if(STREAMING.HAS_MODEL_LOADED(GAMEPLAY.GET_HASH_KEY("prop_ping_pong"))) then
		Seatmrk1 = OBJECT.CREATE_OBJECT(GAMEPLAY.GET_HASH_KEY("prop_ping_pong"), 1043.340, 7057.933, 8.030, false, false, true);
		ENTITY.SET_ENTITY_ALPHA(Seatmrk1, 0, false);
	end
	STREAMING.REQUEST_MODEL(GAMEPLAY.GET_HASH_KEY("s_m_y_clown_01"));
	while(not STREAMING.HAS_MODEL_LOADED(GAMEPLAY.GET_HASH_KEY("s_m_y_clown_01"))) do
		wait(50);
	end
	if(STREAMING.HAS_MODEL_LOADED(GAMEPLAY.GET_HASH_KEY("s_m_y_clown_01"))) then
		SplashGuy_1 = PED.CREATE_PED(12, GAMEPLAY.GET_HASH_KEY("s_m_y_clown_01"), 1043.084, 7057.798, 7.952, 292.628, true, true);
		ENTITY.ATTACH_ENTITY_TO_ENTITY(SplashGuy_1, Seatmrk1, PED.GET_PED_BONE_INDEX(Seatmrk1, 0x0), -0.0, 0.0, -0.09, 0.0, 0.0, -69.0, false, false, false, true, 0, true);
		AI.TASK_PLAY_ANIM(SplashGuy_1,"veh@boat@speed@fds@base", "sit_slow", 6, -4, -1, 1, 0, true, true, true);
		AI.TASK_SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(SplashGuy_1, true);
		AUDIO.SET_AMBIENT_VOICE_NAME(SplashGuy_1, "S_M_Y_Clown_01");
		SplashGuy = SplashGuy_1;
		Seatmrk = Seatmrk1;
	end
--------------
	STREAMING.REQUEST_MODEL(GAMEPLAY.GET_HASH_KEY("prop_ping_pong"));
	local Whtschnce = GAMEPLAY.GET_RANDOM_INT_IN_RANGE(0, 4); -- <------------- Whtschnce is our term the function GAMEPLAY.GET_RANDOM_INT_IN_RANGE will check in the range
	while(not STREAMING.HAS_MODEL_LOADED(GAMEPLAY.GET_HASH_KEY("prop_ping_pong"))) do
		wait(50);
	end
	if(STREAMING.HAS_MODEL_LOADED(GAMEPLAY.GET_HASH_KEY("prop_ping_pong"))) then
		if(Whtschnce == 0) then
			Bottun = OBJECT.CREATE_OBJECT(GAMEPLAY.GET_HASH_KEY("prop_ping_pong"), 1043.116, 7060.009, 7.409, false, false, true);
			ENTITY.SET_ENTITY_ALPHA(Bottun, 0, false);--pong alphas
			ENTITY.FREEZE_ENTITY_POSITION(Bottun, true);
			Butten = Bottun;
			fall = true;
			DunkClown.NoCntrl(false);
			return fall;
		end
		if(Whtschnce == 1) then
			Bottun = OBJECT.CREATE_OBJECT(GAMEPLAY.GET_HASH_KEY("prop_ping_pong"), 1043.116, 7059.209, 7.292, false, false, true);
			ENTITY.SET_ENTITY_ALPHA(Bottun, 0, false);--pong alphas
			ENTITY.FREEZE_ENTITY_POSITION(Bottun, true);
			Butten = Bottun;
			fall = true;
			DunkClown.NoCntrl(false);
			return fall;
		end
		if(Whtschnce == 2) then
			Bottun = OBJECT.CREATE_OBJECT(GAMEPLAY.GET_HASH_KEY("prop_ping_pong"), 1043.116, 7060.039, 7.162, false, false, true);
			ENTITY.SET_ENTITY_ALPHA(Bottun, 0, false);--pong alphas
			ENTITY.FREEZE_ENTITY_POSITION(Bottun, true);
			Butten = Bottun;
			fall = true;
			DunkClown.NoCntrl(false);
			return fall;
		end
		if(Whtschnce == 3) then
			Bottun = OBJECT.CREATE_OBJECT(GAMEPLAY.GET_HASH_KEY("prop_ping_pong"), 1043.016, 7060.190, 7.422, false, false, true);
			ENTITY.SET_ENTITY_ALPHA(Bottun, 0, false);--pong alphas
			ENTITY.FREEZE_ENTITY_POSITION(Bottun, true);
			Butten = Bottun;
			fall = true;
			DunkClown.NoCntrl(false);
			return fall;
		end
		if(Whtschnce == 4) then
			Bottun = OBJECT.CREATE_OBJECT(GAMEPLAY.GET_HASH_KEY("prop_ping_pong"), 1043.116, 7059.939, 7.409, false, false, true);
			ENTITY.SET_ENTITY_ALPHA(Bottun, 0, false); --pong alphas
			ENTITY.FREEZE_ENTITY_POSITION(Bottun, true);
			Butten = Bottun;
			fall = true;
			DunkClown.NoCntrl(false);
			return fall;
		end
	end
end

------------------------ DISABLE PLAYER CONTROLS
function DunkClown.NoCntrl(loop)-- < ---------------------------------------------------------------------------- This is a looped function. It will run each frame when looped. We use a true or false value. ie: Hunting.NoCntrl(true) will start the loop. Hunting.NoCntrl(false) will stop looping.
	PLAYER.SET_PLAYER_CONTROL(PLAYER.PLAYER_ID(), false, 0);-- < ------------------------------------------------ This will pass the control of the character to the character not the player.
--
------------------------------ Assigning our default argument as false we take control of the player away until our loop is closed.
	
	if(not loop) then-- < --------------------------------------------------------------------------------------- This argument will clear our default argument above if the loop is closed. ie: if a false is passed to the function.
		PLAYER.SET_PLAYER_CONTROL(PLAYER.PLAYER_ID(), true, 0); -- This will pass the control of the character to the Player not the character.
	end-- < ----------------------------------------------------------------------------------------------------- Close of if loop false argument.
end-- < --------------------------------------------------------------------------------------------------------- Close of our function.
------ END DISABLE PLAYER CONTROLS

function DunkClown.buyticket()
	if (PED.IS_PED_MODEL(DunkClownkid, GAMEPLAY.GET_HASH_KEY("player_zero"))) then-- < ------------------------------ Argument checks if the player ped is = to the Dnk1model of player 0 or Michael.
		Dnk1model = 0;-- < ------------------------------------------------------------------------------------- "Dnk1model" identifies who gets paid. 0 or player_zero is Michael.
	elseif (PED.IS_PED_MODEL(DunkClownkid, GAMEPLAY.GET_HASH_KEY("player_one"))) then-- < --------------------------- Argument checks if the player ped is = to the Dnk1model of player 1 or Franklin.
		Dnk1model = 1;-- < -------------------------------------------------------------------------------------- "Dnk1model" identifies who gets paid. 1 or player_one is Franklin.                                         
	elseif (PED.IS_PED_MODEL(DunkClownkid, GAMEPLAY.GET_HASH_KEY("player_two"))) then-- < --------------------------- Argument checks if the player ped is = to the Dnk1model of player 2 or Trevor.
		Dnk1model = 2;-- < -------------------------------------------------------------------------------------- "Dnk1model" identifies who gets paid. 2 or player_two is Trevor.
	end
------------------------------ We identify the functions required to be included in order to give money as an award.
	local statname = "SP"..Dnk1model.."_TOTAL_CASH"-- < --------------------------------------------------------- "statname" will register your stats to show money. "Dnk1model" identifies who is paid.
	local hash = GAMEPLAY.GET_HASH_KEY(statname);-- < ----------------------------------------------------------- Our term "hash" is identified as the "statname" (see it below?) 
	local bool, val = STATS.STAT_GET_INT(hash, 0, -1);-- < ------------------------------------------------------ Here we identify our terms bool and val as the result of current money.

	STATS.STAT_SET_INT(hash, val - Dnk1ticket, true);-- < ------------------------------------------------------- This will show the value removed on screen with the total amount of money remaining after transaction.	
	AUDIO.PLAY_SOUND_FRONTEND(-1, "CHECKPOINT_UNDER_THE_BRIDGE", "HUD_MINI_GAME_SOUNDSET", false);
end-- < --------------------------------------------------------------------------------------------------------- Close of function.

function DunkClown.Messajuh(text, x, y, scale)-- < --------------------------------------------------------------- Function to write messages on top left of screen; carries values of text, location on screen and size.
  UI.SET_TEXT_FONT(1);-- < --------------------------------------------------------------------------------------- Type of font. 1 = Handwriting
  UI.SET_TEXT_SCALE(0.0, 0.65);-- < ------------------------------------------------------------------------------ Size of font
  UI.SET_TEXT_COLOUR(105, 197, 195, 255);-- < -------------------------------------------------------------------- Color of font
  UI.SET_TEXT_RIGHT_JUSTIFY(true);
  UI.SET_TEXT_WRAP(0.0, 0.5);-- < -------------------------------------------------------------------------------- Does font wrap.
  UI.SET_TEXT_CENTRE(true);-- < ---------------------------------------------------------------------------------- Is font centered on screen.
  UI.SET_TEXT_EDGE(1, 0, 0, 0, 255);------------------------------------------------------------------------------ Where are the edges font can stretch to.
  UI.SET_TEXT_OUTLINE();-- < ------------------------------------------------------------------------------------- Outlines the text to help it stand out when not using a black rectangle.
  UI._SET_TEXT_ENTRY("STRING");-- < ------------------------------------------------------------------------------ Is font written text.
  UI._ADD_TEXT_COMPONENT_STRING(text);---------------------------------------------------------------------------- Ability to insert words in place of (text) to show on screen.
  UI._DRAW_TEXT(0.455, 0.407);-- < ------------------------------------------------------------------------------- Text draw size.
--  GRAPHICS.DRAW_RECT(0.127,0.045,0.22,0.05,0,0,0,170)-- < ------------------------------------------------------ The black rectangle that words can be displayed in is not used here; but I left it to help see how to draw the rectangle.
end	

function DunkClown.Messajuh_2(text, x, y, scale)-- < --------------------------------------------------------------- Function to write messages on top left of screen; carries values of text, location on screen and size.
  UI.SET_TEXT_FONT(1);-- < --------------------------------------------------------------------------------------- Type of font. 1 = Handwriting
  UI.SET_TEXT_SCALE(0.0, 0.65);-- < ------------------------------------------------------------------------------ Size of font
  UI.SET_TEXT_COLOUR(255, 255, 255, 255);-- < -------------------------------------------------------------------- Color of font
  UI.SET_TEXT_RIGHT_JUSTIFY(true);
  UI.SET_TEXT_WRAP(0.0, 0.5);-- < -------------------------------------------------------------------------------- Does font wrap.
  UI.SET_TEXT_CENTRE(true);-- < ---------------------------------------------------------------------------------- Is font centered on screen.
  UI.SET_TEXT_EDGE(1, 0, 0, 0, 255);------------------------------------------------------------------------------ Where are the edges font can stretch to.
  UI.SET_TEXT_OUTLINE();-- < ------------------------------------------------------------------------------------- Outlines the text to help it stand out when not using a black rectangle.
  UI._SET_TEXT_ENTRY("STRING");-- < ------------------------------------------------------------------------------ Is font written text.
  UI._ADD_TEXT_COMPONENT_STRING(text);---------------------------------------------------------------------------- Ability to insert words in place of (text) to show on screen.
  UI._DRAW_TEXT(0.455, 0.357);-- < ------------------------------------------------------------------------------- Text draw size.
--  GRAPHICS.DRAW_RECT(0.127,0.045,0.22,0.05,0,0,0,170)-- < ------------------------------------------------------ The black rectangle that words can be displayed in is not used here; but I left it to help see how to draw the rectangle.
end	

function HitBlz_1()
	STREAMING.REQUEST_ANIM_DICT("anim@mp_player_intcelebrationmale@jazz_hands");
	wait(200);
	CameraDT_1 = CAM.CREATE_CAM("DEFAULT_SCRIPTED_CAMERA", true);
	CAM.RENDER_SCRIPT_CAMS(true, true, 100, true, false);
	CAM.ATTACH_CAM_TO_ENTITY(CameraDT_1, DunkClownkid, 0, 2, 0, true);
	CAM.POINT_CAM_AT_ENTITY(CameraDT_1, DunkClownkid, 0, 0, 0, true);
	AI.TASK_PLAY_ANIM(DunkClownkid, "anim@mp_player_intcelebrationmale@jazz_hands", "jazz_hands", 8, -8, -1, 0, 0, false, false, false);
	wait(75);
	STREAMING.REMOVE_IPL("dunktanks");
	STREAMING.REQUEST_IPL("dunktanks");
	DunkClown.NoCntrl(false);
	wait(1975);
	CAM.RENDER_SCRIPT_CAMS(false, true, 599, true, true);
	CAM.DESTROY_CAM(CameraDT_1, true);
end

function ClrDone()
	STREAMING.REQUEST_ANIM_DICT("anim@mp_player_intcelebrationmale@finger");
	wait(200);
	CameraDT_1 = CAM.CREATE_CAM("DEFAULT_SCRIPTED_CAMERA", true);
	CAM.RENDER_SCRIPT_CAMS(true, true, 100, true, false);
	CAM.ATTACH_CAM_TO_ENTITY(CameraDT_1, DunkClownkid, 0, 2, 0, true);
	CAM.POINT_CAM_AT_ENTITY(CameraDT_1, DunkClownkid, 0, 0, 0, true);
	AI.TASK_PLAY_ANIM(DunkClownkid, "anim@mp_player_intcelebrationmale@finger", "finger", 8, -8, -1, 0, 0, false, false, false);
	wait(75);
	STREAMING.REMOVE_IPL("dunktanks");
	STREAMING.REQUEST_IPL("dunktanks");
	DunkClown.NoCntrl(false);
	wait(1975);
	CAM.RENDER_SCRIPT_CAMS(false, true, 599, true, true);
	CAM.DESTROY_CAM(CameraDT_1, true);
end

function Kissoff()
	STREAMING.REQUEST_ANIM_DICT("anim@mp_player_intcelebrationfemale@finger_kiss");
	wait(200);
	CameraDT_1 = CAM.CREATE_CAM("DEFAULT_SCRIPTED_CAMERA", true);
	CAM.RENDER_SCRIPT_CAMS(true, true, 100, true, false);
	CAM.ATTACH_CAM_TO_ENTITY(CameraDT_1, DunkClownkid, 0, 2, 1, true);
	CAM.POINT_CAM_AT_ENTITY(CameraDT_1, DunkClownkid, 0, 0, 0, true);
	AI.TASK_PLAY_ANIM(DunkClownkid, "anim@mp_player_intcelebrationfemale@finger_kiss", "finger_kiss", 8, -8, -1, 0, 0, false, false, false); 
	wait(75);
	STREAMING.REMOVE_IPL("dunktanks");
	STREAMING.REQUEST_IPL("dunktanks");
	DunkClown.NoCntrl(false);
	wait(1975);
	CAM.RENDER_SCRIPT_CAMS(false, true, 599, true, true);
	CAM.DESTROY_CAM(CameraDT_1, true);
end

function Outabalz()
	STREAMING.REQUEST_ANIM_DICT("misscommon@response");
	wait(200);
	CameraDT_1 = CAM.CREATE_CAM("DEFAULT_SCRIPTED_CAMERA", true);
	CAM.RENDER_SCRIPT_CAMS(true, true, 100, true, false);
	CAM.ATTACH_CAM_TO_ENTITY(CameraDT_1, DunkClownkid, 0, 2, 0, true);
	CAM.POINT_CAM_AT_ENTITY(CameraDT_1, DunkClownkid, 0, 0, 0, true);
	AI.TASK_PLAY_ANIM(DunkClownkid, "misscommon@response", "damn", 8, -8, -1, 0, 0, false, false, false);
	wait(75);
	STREAMING.REMOVE_IPL("dunktanks");
	STREAMING.REQUEST_IPL("dunktanks");
	DunkClown.NoCntrl(false);
	wait(1975);
	CAM.RENDER_SCRIPT_CAMS(false, true, 599, true, true);
	CAM.DESTROY_CAM(CameraDT_1, true);
end

function DropAnim()
	local Swtch = GAMEPLAY.GET_RANDOM_INT_IN_RANGE(0, 2);
	if(not Dnk_ya) then
		if(Swtch == 0) then
			HitBlz_1();
			Dnk_ya = true;
			return Dnk_ya;
		end
		if(Swtch == 1) then
			Dnk_ya = true;
			ClrDone();
			return Dnk_ya;
		end
		if(Swtch == 2) then
			Dnk_ya = true;
			Kissoff();
			return Dnk_ya;
		end
	end
end

function DunkClown.unload()
	DunkClownkid = PLAYER.PLAYER_PED_ID();-- < ---------------------------- < ----------------------------------=- Our term used here assigns our Player as DunkClownkid.
	DunkClvr = PLAYER.GET_PLAYER_PED(DunkClownkid);
	DunkClownLoc = ENTITY.GET_ENTITY_COORDS(DunkClownkid, nil);
	ENTITY.DELETE_ENTITY(Ballvnd);
	ENTITY.DELETE_ENTITY(SplashGuy);
	ENTITY.DELETE_ENTITY(Seatmrk);
	ENTITY.DELETE_ENTITY(Butten);
	GAMEPLAY.CLEAR_AREA_OF_PROJECTILES(DunkClownLoc.x, DunkClownLoc.y, DunkClownLoc.z, 30, false);
	Ballvnd = 0;
	Ballvnd_0 = 0;
	Bottun = 0;
	Butten = 0;
	Seatmrk = 0;
	Seatmrk1 = 0;
	SplashGuy = 0;
	SplashGuy_1 = 0;
	DunkD = 0;
	Snwbllz = 0;
	PlaRAMo = 0;
	Dabalz = 0;
	STREAMING.REMOVE_ANIM_DICT("mp_am_hold_up");
	STREAMING.REMOVE_ANIM_DICT("mini@sprunk@first_person");
	STREAMING.REMOVE_ANIM_DICT("amb@code_human_cower@female@react_cowering");
	STREAMING.REMOVE_ANIM_DICT("veh@boat@speed@fds@base");
	STREAMING.REMOVE_ANIM_DICT("gestures@m@standing@casual");
	STREAMING.REMOVE_ANIM_DICT("anim@mp_rollarcoaster")
	STREAMING.REMOVE_ANIM_DICT("mini@strip_club@idles@bouncer@go_away");
	STREAMING.REMOVE_ANIM_DICT("RANDOM@MUGGING3");
	STREAMING.REMOVE_ANIM_DICT("anim@mp_player_intcelebrationfemale@finger_kiss");
	STREAMING.REMOVE_ANIM_DICT("misscommon@response");
	STREAMING.REMOVE_ANIM_DICT("anim@mp_player_intcelebrationmale@finger");
	CameraDT_1 = 0;
	chuck1 = false;
	chuck2 = false;
	chuck3 = false;
	chuck4 = false;
	chuck5 = false;
	chuck6 = false;
	chuck7 = false;
	chuck8 = false;
	chuck9 = false;
	CueCk = false;
	Dnk_ya = true;
	fall = false;
	noBooth_1 = true;
end

function DunkClown.init()
	DunkClownkid = PLAYER.PLAYER_PED_ID();-- < ---------------------------- < ----------------------------------=- Our term used here assigns our Player as DunkClownkid.
	DunkClownflot = PLAYER.GET_PLAYER_PED(DunkClownkid);
	DunkClownLoc = ENTITY.GET_ENTITY_COORDS(DunkClownkid, nil);
	Dtank = GAMEPLAY.GET_HASH_KEY("dunkt")
	Ballvnd = 0;
	Ballvnd_0 = 0;
	Ballvnd_1 = 0;
	Bottun = 0;
	Butten = 0;
	CameraDT_1 = 0;
	Seatmrk = 0;
	Seatmrk1 = 0;
	SplashGuy = 0;
	SplashGuy_1 = 0;
	DunkD = 0;
	Snwbllz = 0;
	PlaRAMo = 0;
	Dabalz = 0;
	chuck1 = false;
	chuck2 = false;
	chuck3 = false;
	chuck4 = false;
	chuck5 = false;
	chuck6 = false;
	chuck7 = false;
	chuck8 = false;
	chuck9 = false;
	CueCk = false;
	Dnk_ya = true;
	fall = false;
	noBooth_1 = true;
end

function DunkClown.tick()
	if(noBooth_1) and(ENTITY.IS_ENTITY_AT_COORD(DunkClownkid, 1048.432, 7056.357, 6.441, 40, 40, 40, false, false, 0)) and(Ballvnd == 0) then
		noBooth_1 = false;
		STREAMING.REQUEST_MODEL(GAMEPLAY.GET_HASH_KEY("s_m_m_strvend_01"));
		while(not STREAMING.HAS_MODEL_LOADED(GAMEPLAY.GET_HASH_KEY("s_m_m_strvend_01"))) do
			wait(50);
		end
		if(STREAMING.HAS_MODEL_LOADED(GAMEPLAY.GET_HASH_KEY("s_m_m_strvend_01"))) then
			Ballvnd_0 = PED.CREATE_PED(12, GAMEPLAY.GET_HASH_KEY("s_m_m_strvend_01"), 1047.223, 7056.085, 5.540, 276.649, true, true);
			AUDIO.SET_AMBIENT_VOICE_NAME(Ballvnd_0, "s_m_m_strvend_01");
			AI.TASK_SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(Ballvnd_0, true);
			Ballvnd = Ballvnd_0;
		end
	elseif(not noBooth_1) and(not ENTITY.IS_ENTITY_AT_COORD(DunkClownkid, 1048.432, 7056.357, 6.441, 40, 40, 40, false, false, 0)) and(Ballvnd ~= 0) then
		DunkClown.unload();
	end
	if(ENTITY.IS_ENTITY_AT_COORD(DunkClownkid, 1048.431, 7056.358, 6.440, 0.5, 0.5, 1, false, false, 0)) and(not CueCk) then
		DunkClown.Messajuh("Press G key to buy a ticket to Dunk the Clown.");
		DunkClown.Messajuh_2("Ticket Price $2.00.");
	end
	if(ENTITY.IS_ENTITY_AT_COORD(DunkClownkid, 1049.021, 7056.493, 6.440, 2, 2, 2, false, false, 0)) and(get_key_pressed(Keys.G)) then
		AI.TASK_GO_STRAIGHT_TO_COORD(DunkClownkid, 1048.965, 7056.329, 6.440, 2, -1, 400, 0);
		AUDIO._PLAY_AMBIENT_SPEECH2(Ballvnd, "GENERIC_HOWS_IT_GOING", "SPEECH_PARAMS_FORCE_NORMAL");
		CueCk = true;
		DunkClown.NoCntrl(true);
		Dnk1prchse = 2;
		Dnk1ticket = Dnk1prchse;
		DunkClown.buyticket();
		STREAMING.REQUEST_ANIM_DICT("mp_am_hold_up");
		STREAMING.REQUEST_ANIM_DICT("mini@sprunk@first_person");
		AI.TASK_TURN_PED_TO_FACE_COORD(DunkClownkid, 1047.744, 7054.584, 6.440, 600);
		wait(600);
--		AI.TASK_TURN_PED_TO_FACE_ENTITY(DunkClownkid, Ballvnd,1000);
		UI._SET_NOTIFICATION_TEXT_ENTRY("STRING");
		UI._ADD_TEXT_COMPONENT_STRING("~r~You have to hit taget just right to dunk clown.");
		UI._DRAW_NOTIFICATION(false, true);
		chuck2 = true;
		WEAPON.GIVE_WEAPON_TO_PED(Ballvnd, GAMEPLAY.GET_HASH_KEY("WEAPON_SNOWBALL"), 1000, true, true);
--		wait(400);
		Pay_Dunk();
	end
	if(ENTITY.HAS_ENTITY_COLLIDED_WITH_ANYTHING(Butten)) and(fall) then
		AUDIO._PLAY_AMBIENT_SPEECH2(SplashGuy, "SHOUT_INSULT", "SPEECH_PARAMS_FORCE_SHOUTED");
		fall = false;
		WEAPON.GIVE_WEAPON_TO_PED(DunkClownkid, GAMEPLAY.GET_HASH_KEY("WEAPON_UNARMED"), 1000, true, true);
		ENTITY.SET_ENTITY_COORDS(SplashGuy, 1043.084, 7057.798, 6.232, true, true, true, true);
		ENTITY.SET_ENTITY_COLLISION(SplashGuy, false, false);
		AI.CLEAR_PED_TASKS_IMMEDIATELY(SplashGuy);
		AUDIO.TRIGGER_MUSIC_EVENT("AH1_STOP");
		STREAMING.REQUEST_NAMED_PTFX_ASSET("core");
		ENTITY.DELETE_ENTITY(Seatmrk);
		while(not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED("core")) do
			wait(50);
		end
		if(STREAMING.HAS_NAMED_PTFX_ASSET_LOADED("core")) then
			GRAPHICS._SET_PTFX_ASSET_NEXT_CALL("core");
			DunkD = GRAPHICS.START_PARTICLE_FX_LOOPED_AT_COORD("exp_hydrant", 1043.084, 7057.798, 1.752, 0.0, 0.0, 0.0, 1.065, false, false, false, false);
		end
		wait(600);
		Dnk_ya = false
		DropAnim();
		GRAPHICS.STOP_PARTICLE_FX_LOOPED(DunkD, true);
		if(PED.IS_PED_MODEL(DunkClownkid, GAMEPLAY.GET_HASH_KEY("Player_zero"))) then
			AUDIO._PLAY_AMBIENT_SPEECH1(DunkClownkid, "ACTIVITY_LEAVING", "SPEECH_PARAMS_FORCE_SHOUTED");
		elseif(PED.IS_PED_MODEL(DunkClownkid, GAMEPLAY.GET_HASH_KEY("Player_one"))) then
			AUDIO._PLAY_AMBIENT_SPEECH1(DunkClownkid, "ACTIVITY_LEAVING", "SPEECH_PARAMS_FORCE_SHOUTED");
		elseif(PED.IS_PED_MODEL(DunkClownkid, GAMEPLAY.GET_HASH_KEY("Player_two"))) then
			AUDIO._PLAY_AMBIENT_SPEECH1(DunkClownkid, "GETTING_OLD", "SPEECH_PARAMS_FORCE_SHOUTED");
		end
		DunkClown.unload();
	end
	Snwbllz = WEAPON.GET_SELECTED_PED_WEAPON(DunkClownkid);
	if(CueCk) and(Snwbllz == GAMEPLAY.GET_HASH_KEY("WEAPON_SNOWBALL")) then 
		PLAYER.SET_PLAYER_WEAPON_DAMAGE_MODIFIER(DunkClownkid, 5);
		PlaRAMo = WEAPON.GET_AMMO_IN_PED_WEAPON(DunkClownkid, GAMEPLAY.GET_HASH_KEY("WEAPON_SNOWBALL"));
		Dabalz = PlaRAMo;
		if(Dabalz < 1) then
			AUDIO._PLAY_AMBIENT_SPEECH1(DunkClownkid, "GENERIC_CURSE_MED", "SPEECH_PARAMS_FORCE_SHOUTED_CRITICAL");
			wait(10)
			Outabalz();
			UI._SET_NOTIFICATION_TEXT_ENTRY("STRING");
			UI._ADD_TEXT_COMPONENT_STRING("Buy more balls to try again.");
			UI._DRAW_NOTIFICATION(false, true);
			AUDIO.TRIGGER_MUSIC_EVENT("AH1_STOP");
			DunkClown.unload();
		end
	end
	if(ENTITY.IS_ENTITY_AT_COORD(DunkClownkid, 1046.93, 7060.304, 6.440, 3, 3, 3, false, false, 0)) and(chuck2) then
--		AUDIO.TRIGGER_MUSIC_EVENT("CAR3_CAR_RESTART");
		AUDIO.TRIGGER_MUSIC_EVENT("AH3B_BURNTOUT_RT");
--		AUDIO.TRIGGER_MUSIC_EVENT("ARM3_WINDOW");
		STREAMING.REQUEST_ANIM_DICT("gestures@m@standing@casual");
		AUDIO._PLAY_AMBIENT_SPEECH1(SplashGuy, "GENERIC_HOWS_IT_GOING", "SPEECH_PARAMS_FORCE_SHOUTED");
		AI.TASK_PLAY_ANIM(SplashGuy,"veh@boat@speed@fds@base", "sit_slow", 4, -1, -1, 1, 0, true, true, true);
		AI.TASK_PLAY_ANIM(SplashGuy, "gestures@m@standing@casual", "gesture_bye_soft", 8, -2, -1, 48, 0, false, false, false);
		STREAMING.REQUEST_ANIM_DICT("mini@strip_club@idles@bouncer@go_away");
		STREAMING.REQUEST_ANIM_DICT("anim@mp_rollarcoaster");
		chuck2 = false;
		chuck3 = true;
		SYSTEM.SETTIMERA(-1);
	end
	if(chuck3) and (SYSTEM.TIMERA() > 3600) then
		AI.TASK_PLAY_ANIM(SplashGuy,"veh@boat@speed@fds@base", "sit_slow", 4, -1, -1, 1, 0, true, true, true);
		AI.TASK_PLAY_ANIM(SplashGuy,"amb@code_human_cower@female@react_cowering", "base_front", 2, -8, -1, 48, 0, true, true, true);
		chuck3 = false;
		STREAMING.REQUEST_ANIM_DICT("RANDOM@MUGGING3");
		AUDIO._PLAY_AMBIENT_SPEECH2(SplashGuy, "GENERIC_SHOCKED_HIGH", "SPEECH_PARAMS_FORCE_SHOUTED");
		AI.TASK_PLAY_ANIM(SplashGuy,"veh@boat@speed@fds@base", "sit_slow", 2, -.5, -1, 1, 0, true, true, true);
		chuck4 = true;
	end
	if(chuck4) and (SYSTEM.TIMERA() > 8860) then
		chuck4 = false;
		AI.TASK_PLAY_ANIM(SplashGuy, "RANDOM@MUGGING3", "handsup_standing_base", 4, -2, -1, 48, 0, false, false, false);
		AUDIO._PLAY_AMBIENT_SPEECH2(SplashGuy, "GENERIC_SHOCKED_MED", "SPEECH_PARAMS_FORCE_SHOUTED");
		chuck5 = true;
	end
	if(chuck5) and(SYSTEM.TIMERA() > 10200) then
		chuck5 = false;
		AUDIO._PLAY_AMBIENT_SPEECH1(SplashGuy, "DODGE", "SPEECH_PARAMS_FORCE_SHOUTED");
		AI.TASK_PLAY_ANIM(SplashGuy,"amb@code_human_cower@female@react_cowering", "base_front", 4, -1, -1, 48, 0, true, true, true);
		chuck6 = true;
	end
	if(chuck6) and(SYSTEM.TIMERA() > 19200) then
		chuck6 = false;
		AUDIO._PLAY_AMBIENT_SPEECH2(SplashGuy, "BUMP", "SPEECH_PARAMS_FORCE_SHOUTED");
		AI.TASK_PLAY_ANIM(SplashGuy, "gestures@m@standing@casual", "gesture_bye_soft", 8, -2, -1, 48, 0, false, false, false);
		chuck7 = true;
	end
	if(chuck7) and(SYSTEM.TIMERA() > 20700) then
		chuck7 = false;
		AUDIO._PLAY_AMBIENT_SPEECH2(SplashGuy, "GENERIC_SHOCKED_MED", "SPEECH_PARAMS_FORCE_SHOUTED");
		AI.TASK_PLAY_ANIM(SplashGuy, "mini@strip_club@idles@bouncer@go_away", "go_away", 8, -2, -1, 48, 0, false, false, false);
		chuck8 = true;
	end
	if(chuck8) and(SYSTEM.TIMERA() > 28800) then
		chuck8 = false;
		AUDIO._PLAY_AMBIENT_SPEECH2(SplashGuy, "CHALLENGE_THREATEN", "SPEECH_PARAMS_FORCE_SHOUTED");
		AI.TASK_PLAY_ANIM(SplashGuy, "anim@mp_rollarcoaster", "hands_up_enter_player_two", 4, -2, -1, 48, 0.0, false, false, false);
		chuck9 = true;
	end
	if(chuck9) and(SYSTEM.TIMERA() > 30100) then
		chuck9 = false;
		AI.TASK_PLAY_ANIM(SplashGuy,"veh@boat@speed@fds@base", "sit_slow", 2, -4, -1, 1, 0, true, true, true);
		AUDIO.PLAY_PAIN(SplashGuy, 7, 0);	
		AI.TASK_PLAY_ANIM(SplashGuy, "RANDOM@MUGGING3", "handsup_standing_exit", 8, -4, -1, 48, 0, false, false, false);
		chuck3 = true;
		SYSTEM.SETTIMERA(0);
		wait(1);
		SYSTEM.SETTIMERA(-1);
	end
	if(get_key_pressed(Keys.NumPad3)) then--
		ENTITY.SET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID(), 1050.137, 7056.128, 6.440, true, true, true, true); ---dunk tank
	end
end


return DunkClown;