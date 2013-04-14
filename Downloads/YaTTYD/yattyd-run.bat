@start /b YaTTYD.exe -t dump

@rem By default:
@rem   YaTTYD does not show the data come from "serail port or TCP socket"
@rem   in the message window
@rem   The command line option "-t dump" enable the all data into the window
@rem   This command can also be sent from TCP control socket:"<cmd>dump=1</cmd>"
@rem   	    