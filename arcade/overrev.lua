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
function infinitetime_f(value)
	I960_WriteWord(RAMBASE+0x95CDF,99*256); -- 99 seconds always
end
function firstplace_f(value)
	I960_WriteWord(RAMBASE+0x95CEA,16256); -- first place
	I960_WriteWord(RAMBASE+0xA1772,16256); -- display
end
function onelap_f(value)
	if (I960_ReadWord(0x595C9C)<I960_ReadWord(0x5C9890)-1)
	then
		I960_WriteWord(0x595C9C,I960_ReadWord(0x5C9890)-1); -- one lap
	end
end
Options =
{
	infinitetime={name="Infinite Time",values={"Off","On"},runfunc=infinitetime_f},
	firstplace={name="1st Place",values={"Off","On"},runfunc=firstplace_f},
	onelap={name="One Lap",values={"Off","On"},runfunc=onelap_f}
}
