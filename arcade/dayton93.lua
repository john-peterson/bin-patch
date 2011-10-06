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
	I960_WriteWord(RAMBASE+0x10D0,99*64); -- 99 seconds always
end
function firstplacefunc(value)
	I960_WriteWord(RAMBASE+0x4E6A,0); -- competitors in front
	I960_WriteWord(RAMBASE+0x311D,20566); -- screen display 1
	I960_WriteWord(RAMBASE+0x30CD,20566); -- screen display 2
	I960_WriteWord(RAMBASE+0x30ED,20566); -- screen display 3
end
function onelapfunc(value)
	I960_WriteWord(RAMBASE+0x10EC,1); -- 1 lap
end
Options =
{
	timecheat={name="Infinite Time",values={"Off","On"},runfunc=timecheatfunc},
	firstplace={name="1st Place",values={"Off","On"},runfunc=firstplacefunc},
	onelap={name="1 Lap",values={"Off","On"},runfunc=onelapfunc}
}
