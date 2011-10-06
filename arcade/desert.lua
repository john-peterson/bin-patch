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

function health_cheat_f(value)
	I960_WriteWord(RAMBASE+0x0494,400); -- full health
end
function time_cheat_f(value)
	I960_WriteWord(RAMBASE+0x21040,99*33.3); -- 99 time
end
Options =
{
	health_cheat={name="Infinite Health",values={"Off","On"},runfunc=health_cheat_f},
	time_cheat={name="Infinite Time",values={"Off","On"},runfunc=time_cheat_f}
}