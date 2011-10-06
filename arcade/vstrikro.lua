require("model2")
function Init()
end
function Frame()
	Model2_SetWideScreen(1)
	Model2_SetStretchALow(1)
	Model2_SetStretchBLow(1)
	Model2_SetStretchAHigh(1)
	Model2_SetStretchBHigh(1)
end
function goals_1p_cheat_f(value)
	I960_WriteWord(RAMBASE+0x1540,99); -- 1P 99 goals
	I960_WriteWord(RAMBASE+0x1544,0); -- 2P 0 goals
end
function goals_2p_cheat_f(value)
	I960_WriteWord(RAMBASE+0x1544,99); -- 2P 99 goals
	I960_WriteWord(RAMBASE+0x1540,0); -- 1P 0 goals
end
function fcsega_cheat_f(value)
	I960_WriteWord(RAMBASE+0xD3EA0,1); -- enable fc sega
end
Options =
{
	goals_1p_cheat={name="1P Wins",values={"Off","On"},runfunc=goals_1p_cheat_f},
	goals_2p_cheat={name="2P Wins",values={"Off","On"},runfunc=goals_2p_cheat_f},
	fcsega_cheat={name="Enable FC Sega",values={"Off","On"},runfunc=fcsega_cheat_f}
}
