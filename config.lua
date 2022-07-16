Config                            = {}

Config.DrawDistance               = 10.0
Config.MarkerType                 = {OffDuty = 20, BossActions = 21}
Config.MarkerSize                 = {x = 1.5, y = 1.5, z = 0.5}
Config.MarkerColor                = {r = 50, g = 50, b = 204}

Config.EnablePlayerManagement     = true -- Enable if you want society managing.
Config.EnableESXIdentity          = true -- Enable if you're using esx_identity.

Config.EnableJobBlip              = true -- Enable blips for cops on duty, requires esx_society.

Config.EnableESXService           = false -- Enable esx service?
Config.MaxInService               = -1 -- How much people can be in service at once?

Config.Locale = "de"

Config.PoliceStations = {

	LSPD = {
		Blip = {
			Coords  = vector3(425.1, -979.5, 30.7),
			Sprite  = 60,
			Display = 4,
			Scale   = 1.2,
			Colour  = 4
		},

		OffDuty = {
			vector3(440.3465, -975.7399, 30.6896)
		},

		BossActions = {
			vector3(448.1988, -973.0396, 30.6896)
		}
	}
}