require("model2");	-- Import model2 machine globals
function Init()
end
function Frame()
	Model2_SetWideScreen(1)
	Model2_SetStretchALow(1)
	Model2_SetStretchBLow(1)
	Model2_SetStretchAHigh(1)
	Model2_SetStretchBHigh(1)
end

function timecheatfunc(value)
	I960_WriteWord(RAMBASE+0x3A14,0); -- full time
end
function health_1p_cheat_f(value)
	I960_WriteWord(RAMBASE+0x3CA0,1800); -- 1P full health
end
function health_2p_cheat_f(value)
	I960_WriteWord(RAMBASE+0x42A0,1800); -- 2P full health
end
Options =
{
	timecheat={name="Infinite Time",values={"Off","On"},runfunc=timecheatfunc},
	health_1p_cheat={name="1P Infinite Health",values={"Off","On"},runfunc=health_1p_cheat_f},
	health_2p_cheat={name="2P Infinite Health",values={"Off","On"},runfunc=health_2p_cheat_f}
}