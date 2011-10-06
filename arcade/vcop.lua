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

function health_1p_cheat_f(value)
	I960_WriteWord(RAMBASE+0xEE70,9); -- 1P 9 health
end
function ammo_1p_cheat_f(value)
	I960_WriteWord(RAMBASE+0xEE38,6); -- 1P 6 ammo
end
Options =
{
	health_1p_cheat={name="1P Infinite Health",values={"Off","On"},runfunc=health_1p_cheat_f},
	ammo_1p_cheat={name="1P Infinite Ammo",values={"Off","On"},runfunc=ammo_1p_cheat_f}
}