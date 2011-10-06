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
	I960_WriteWord(RAMBASE+0x4FC00,160); -- 1P full health
end
function health_2p_cheat_f(value)
	I960_WriteWord(RAMBASE+0x4FC58,160); -- 2P full health
end
Options =
{
	health_1p_cheat={name="1P Infinite Health",values={"Off","On"},runfunc=health_1p_cheat_f},
	health_2p_cheat={name="2P Infinite Health",values={"Off","On"},runfunc=health_2p_cheat_f}
}