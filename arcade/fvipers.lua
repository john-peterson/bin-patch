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
function timecheatfunc(value)
	I960_WriteWord(RAMBASE+0x28,99*64); -- 99 seconds always
end
function health_1p_f(value)
	I960_WriteWord(RAMBASE+0x10DAC,220); -- 1P full health
end
function health_2p_f(value)
	I960_WriteWord(RAMBASE+0x12DAC,220); -- 2P full health
end
function mahler_f(value)
	I960_WriteWord(RAMBASE+0x15DC7,2048); -- 1P mahler
	I960_WriteWord(RAMBASE+0x15DC9,8); -- 2P mahler
end
Options =
{
	timecheat={name="Infinite Time",values={"Off","On"},runfunc=timecheatfunc},
	health_1p={name="1P Infinite Health",values={"Off","On"},runfunc=health_1p_f},
	health_2p={name="2P Infinite Health",values={"Off","On"},runfunc=health_2p_f},
	mahler={name="Mahler Enabled",values={"Off","On"},runfunc=mahler_f}
}
