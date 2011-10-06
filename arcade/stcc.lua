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
	I960_WriteWord(RAM2BASE+0x22EC,99*64); -- 99 seconds always
end
function freezetimefunc(value)
	I960_WriteWord(RAM2BASE+0x22CE,1*64); -- freeze time
	I960_WriteWord(RAM2BASE+0x22D2,1*64); -- screen display
end
function firstplacefunc(value)
	I960_WriteWord(RAM2BASE+0x2308,0); -- competitors in front
end
Options =
{
	timecheat={name="Infinite Time Left",values={"Off","On"},runfunc=timecheatfunc},
	freezetime={name="Freeze Lap Time",values={"Off","On"},runfunc=freezetimefunc},
	firstplace={name="First Place",values={"Off","On"},runfunc=firstplacefunc}
}