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
	I960_WriteWord(RAMBASE+0x830B0,99*70); -- 99 seconds always
end
function maxpointsfunc(value)
	I960_WriteDWord(RAMBASE+0x82FC0,999999); -- max points
end
Options =
{
	timecheat={name="Infinite Time",values={"Off","On"},runfunc=timecheatfunc},
	maxpoints={name="Max Points",values={"Off","On"},runfunc=maxpointsfunc}
}