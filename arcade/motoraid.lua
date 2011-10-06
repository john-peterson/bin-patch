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
function timecheatfunc(value)
	I960_WriteWord(RAMBASE+0x17BD0,99*60); -- 99 seconds always
end
function infiniteturbo_f(value)
	I960_WriteWord(RAMBASE+0x7BEFE,16256); -- full turbo
end
Options =
{
	timecheat={name="Infinite Time",values={"Off","On"},runfunc=timecheatfunc},
	infiniteturbo={name="Infinite Turbo",values={"Off","On"},runfunc=infiniteturbo_f}
}
