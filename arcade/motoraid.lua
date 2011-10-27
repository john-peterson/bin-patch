require("model2");
function Init()
end
function Frame()
	Model2_SetWideScreen(1)
	Model2_SetStretchALow(1)
	Model2_SetStretchBLow(1)
	Model2_SetStretchAHigh(1)
	Model2_SetStretchBHigh(1)
end
function time_left(value)
	I960_WriteWord(RAMBASE+0x17BD0,99*60); -- 99 seconds always
end
function infinite_turbo(value)
	I960_WriteWord(RAMBASE+0x7BEFE,16256); -- full turbo level 1 and 2
	I960_WriteWord(RAMBASE+0x7BF32,16256); -- full turbo level 3
end
Options =
{
	_time_left={name="Infinite Time",values={"Off","On"},runfunc=time_left},
	_infinite_turbo={name="Infinite Turbo",values={"Off","On"},runfunc=infinite_turbo}
}