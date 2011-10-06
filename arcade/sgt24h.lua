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
	I960_WriteWord(RAMBASE+0x10F78,99*60); -- 99 seconds always
end
function firstplacefunc(value)
	I960_WriteWord(RAMBASE+0x15A34,0); -- competitors in front
end
function onelapfunc(value)
	I960_WriteWord(RAMBASE+0x10F6C,1); -- 1 lap
end
Options =
{
	timecheat={name="Infinite Time",values={"Off","On"},runfunc=timecheatfunc},
	firstplace={name="First Place",values={"Off","On"},runfunc=firstplacefunc},
	onelap={name="1 Lap",values={"Off","On"},runfunc=onelapfunc}
}