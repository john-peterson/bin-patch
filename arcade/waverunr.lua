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
	I960_WriteWord(RAMBASE+0x12010,99*60); -- 99 seconds always
end
function freezetimefunc(value)
	I960_WriteWord(RAMBASE+0x1204E,1*60); -- freeze time
	I960_WriteWord(RAMBASE+0x12046,1*60); -- screen display
end
Options =
{
	timecheat={name="Infinite Time Left",values={"Off","On"},runfunc=timecheatfunc},
	freezetime={name="Freeze Lap Time",values={"Off","On"},runfunc=freezetimefunc}
end
}
