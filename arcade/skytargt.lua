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
	I960_WriteWord(RAMBASE+0x272EC,0); -- 0 damage
end
Options =
{
	health_cheat={name="1P Infinite Health",values={"Off","On"},runfunc=health_cheat_f}
}