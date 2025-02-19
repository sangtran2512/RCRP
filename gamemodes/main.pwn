#define SERVER_GM_TEXT "RC:RP 1.0"

#define	NO_TAGS
#include <open.mp>

#include <a_mysql>
#include <streamer>
#include <yom_buttons>
#include <zcmd>
#include <sscanf2>
#pragma warning disable 239 //Ignore warning literal array/string passed to a non-const parameter
#define YSI_NO_HEAP_MALLOC
#define YSI_NO_MODE_CACHE
#define YSI_NO_OPTIMISATION_MESSAGE

#define CGEN_MEMORY		(40000)

//YSI
#include <YSI_Data\y_foreach>
#include <YSI_Coding\y_timers>
#include <YSI_Coding\y_va>
#include <YSI_Core\y_utils>
#include <YSI_Game\y_vehicledata>

#if defined SOCKET_ENABLED
	#include <socket>
#endif

#include "./includes/callbacks.pwn"
#include "./includes/defines.pwn"
#include "./includes/functions.pwn"
#include "./includes/enums.pwn"
#include "./includes/variables.pwn"
#include "./includes/timers.pwn"
//
#include "./includes/commands.pwn"
#include "./includes/mysql.pwn"
#include "./includes/OnPlayerLoad.pwn"
#include "./includes/streamer.pwn"

#include "./includes/OnDialogResponse.pwn"
#include "./includes/textdraws.pwn"
main() {}

public OnGameModeInit()
{
	print("Dang tai game mode, xin cho...");
	g_mysql_Init();
	return 1;
}

public OnGameModeExit()
{
    g_mysql_Exit();
	return 1;
}
