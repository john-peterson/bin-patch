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
function health_1p_cheat_f(value)
	I960_WriteWord(RAMBASE+0x8DC6C,144); -- 1P full health
	I960_WriteWord(RAMBASE+0x8E20C,0);
end
function health_2p_cheat_f(value)
	I960_WriteWord(RAMBASE+0x8E20C,144); -- 2P full health
end
function timecheatfunc(value)
	I960_WriteWord(RAMBASE+0x6BC08,99*60); -- 99 seconds always
end
Options =
{
	health_1p_cheat={name="1P Infinite Health",values={"Off","On"},runfunc=health_1p_cheat_f},
	health_2p_cheat={name="2P Infinite Health",values={"Off","On"},runfunc=health_2p_cheat_f},
	timecheat={name="Infinite Time",values={"Off","On"},runfunc=timecheatfunc}
}
