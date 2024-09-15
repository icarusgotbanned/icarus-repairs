Config = Config or {}

Config.Pay = true -- Dictates if an individual will pay upon repair

Config.Price = 350 -- Dictates price if Config.Pay is true

Config.Location = {                   -- Polyzone Location for where Radial option is added
    vec2(-190.88, -1322.99),
    vec2(-197.52, -1322.89),
    vec2(-197.21, -1331.01),
    vec2(-190.88, -1331.01),
}

Config.MinZ = 25 -- How far down the Z Coord for the Polyzone is
Config.MaxZ = 35 -- How far up the Z Coord for the Polyzone extends

Config.PolyName = "BennysRepair" -- Name for Polyzone, ensure this isnt matching any other




