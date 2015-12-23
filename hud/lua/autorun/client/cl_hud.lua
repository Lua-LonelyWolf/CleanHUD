surface.CreateFont( "hudfont", {
	font = "Lato",
	size = 25,
	weight = 500,
	antialias = true,
} )

surface.CreateFont( "hudfont1",
{
	font = "Default", 
	size = 24,
	weight = 500,
	antialias = true,

} )

hook.Add("HUDPaint","DrawMyHUD",function ()


	local health = LocalPlayer():Health()

	draw.RoundedBox(0,8,ScrH() - 100,300 + 4, 30 + 4, Color(40,40,40))
	draw.RoundedBox(0,10,ScrH() - 98,health * 3,30, Color(255,120,120))
	draw.SimpleText(health.. "%","hudfont", 10 + 150, ScrH() - 85,Color(0,0,0), 1, 1)

	
	local armor = LocalPlayer():Armor()

	draw.RoundedBox(0,8,ScrH() - 55,300 + 4, 30 + 4, Color(168,185,255))
	draw.RoundedBox(0,10,ScrH() - 53,armor * 3,30, Color(58,98,255))
	draw.SimpleText(armor.. "%","hudfont", 10 + 150, ScrH() - 40,Color(0,0,0), 1, 1)

	local money = LocalPlayer():getDarkRPVar("money")

	draw.SimpleText(money.."$","hudfont", 10 + 120, ScrH() - 135,Color(0,0,0), 1, 1)
	draw.SimpleText("Wallet:","hudfont1", 10 + 40, ScrH() - 135,Color(0,0,0), 1, 1)


	local job = LocalPlayer():getDarkRPVar("job")

	draw.SimpleText(job ,"hudfont", 10 + 270, ScrH() - 135,Color(0,0,0), 1, 1)
	draw.SimpleText("Job:","hudfont", 10 + 190, ScrH() - 135,Color(0,0,0), 1, 1)

	local salary = LocalPlayer():getDarkRPVar("salary")
	
	draw.SimpleText(salary.."$" ,"hudfont", 10 + 110, ScrH() - 165,Color(0,0,0), 1, 1)
	draw.SimpleText("Salary:","hudfont", 10 + 40, ScrH() - 165,Color(0,0,0), 1, 1)

end)


local hideHUDElements = {
        ["DarkRP_HUD"] = true,
}
hook.Add("HUDShouldDraw", "HideDefaultDarkRPHud", function(name)
        if hideHUDElements[name] then return false end
end)
