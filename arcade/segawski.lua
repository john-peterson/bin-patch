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
	I960_WriteWord(RAMBASE+0x6E0A8,99*60); -- 99 seconds always
end
function maxpointsfunc(value)
	I960_WriteWord(RAMBASE+0xC6D58,9999); -- max points
end
Options =
{
	timecheat={name="Infinite Time",values={"Off","On"},runfunc=timecheatfunc},
	maxpoints={name="Max Points",values={"Off","On"},runfunc=maxpointsfunc}
}
