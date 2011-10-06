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
	I960_WriteWord(RAM2BASE+0xB0B0,99*60); -- 99 seconds always
end
function firstplacefunc(value)
	I960_WriteWord(RAM2BASE+0x20C8,0); -- competitors in front
end
Options =
{
	timecheat={name="Infinite Time",values={"Off","On"},runfunc=timecheatfunc},
	firstplace={name="1st Place",values={"Off","On"},runfunc=firstplacefunc}
}