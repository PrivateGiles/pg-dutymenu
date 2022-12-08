Config                            = {}
Config.DrawDistance               = 10.0
Config.DistanceMethod             = 'LuaMethod'  -- Vdist / LuaMethod
Config.Locale                     = 'en'

Config.JustCanSeeOne              = true -- If you make this false you can have any zones so near to each other but it will get higher usage

Config.HelpText                   = 'Floating'  -- 3DText / Floating / Normal

Config.Notify_Type                = 'custom' -- chat / mythic_old / mythic_new / pNotify / esx / custom

Config.Notify = function(type, message, time)
    if not time then time = 5000 end
    if Config.Notify_Type == 'chat' then
        TriggerEvent('chat:addMessage', {
        template = '<div class="chat-message info"> <div class="chat-message-header"> <class="chat-message-body"> <i class="fas fa-house-user"></i> '..message})
    elseif Config.Notify_Type == 'mythic_old' then
        exports['mythic_notify']:DoCustomHudText(type, message, time)
    elseif Config.Notify_Type == 'mythic_new' then
        exports['mythic_notify']:DoHudText(type, message, { ['background-color'] = '#ffffff', ['color'] = '#000000' })
    elseif Config.Notify_Type == 'pNotify' then
		TriggerEvent("pNotify:SendNotification",{
			text = "<b style='color:#1E90FF'>"..message.."</b>",
			type = "info",
			timeout = (time),
			layout = "topright",
			queue = "global"
		})
    elseif Config.Notify_Type == 'esx' then
        ESX.ShowNotification(message)
    elseif Config.Notify_Type == 'custom' then
    end
end

Config.Zones = { -- MRPD Sign on system
  police = {
    job = 'police',
    offjob = 'offpolice',
    Pos   = { x = 457.67, y = -989.39, z = 30.69 },
    Size  = { x = 1.5, y = 1.5, z = 1.5 },
  },
  
  redline = {
    job = 'redline',
    offjob = 'offredline',
    Pos   = { x = 53.16, y = -2572.94, z = 6.26 },
    Size  = { x = 1.5, y = 1.5, z = 1.5 },
  },
  
  lsmotors = {
    job = 'lsmotors',
    offjob = 'offlsmotors',
    Pos   = { x = 145.48, y = -1105.0, z = 29.2 },
    Size  = { x = 0.8, y = 0.8, z = 0.8 },
  },
  
  risingsuncustoms = {
    job = 'risingsuncustoms',
    offjob = 'offrisingsuncustoms',
    Pos   = { x = -324.11, y = -109.23, z = 39.06 },
    Size  = { x = 0.8, y = 0.8, z = 0.8 },
  },
  
  aa = {
    job = 'aa',
    offjob = 'offaa',
    Pos   = { x = 875.77, y = -2103.75, z = 34.89 },
    Size  = { x = 1.5, y = 1.5, z = 1.5 },
  },

	whitewidow = {
    job = 'whitewidow',
    offjob = 'offwhitewidow',
    Pos   = { x = 178.63, y = -251.03, z = 54.07 },
    Size  = { x = 1.5, y = 1.5, z = 1.5 },
  },
  nhs = { -- Ambulance Sign on System
    job = 'ambulance',
    offjob = 'offambulance',
    Pos   = { x = 309.48, y = -602.88, z = 43.28 },
    Size  = { x = 1.5, y = 1.5, z = 1.5 },
  },
  
  impound = { -- Impound sign on system
    job = 'impound',
    offjob = 'offimpound',
    Pos   = { x = -193.31, y = -1164.17, z = 23.67 },
    Size  = { x = 1.5, y = 1.5, z = 1.5 },
  },
  
  sailaway = { -- Ambulance Sign on System
    job = 'sailaway',
    offjob = 'offsailaway',
    Pos   = { x = -793.69, y = -1349.41, z = 5.18 },
    Size  = { x = 1.5, y = 1.5, z = 1.5 },
  },
  
   kwikfit = { -- Kwikfit Sign On System
    job = 'kwikfit',
    offjob = 'offkwikfit',
    Pos   = { x = 1125.41, y = -778.65, z = 57.62 },
    Size  = { x = 1.5, y = 1.5, z = 1.5 },
  },
  
  dunkin = { -- Kwikfit Sign On System
    job = 'dunkin',
    offjob = 'offdunkin',
    Pos   = { x = -591.72, y = -890.85, z = 25.94 },
    Size  = { x = 1.5, y = 1.5, z = 1.5 },
  },
  
  bodyarmouruk = { -- Body Armour UK Sign On System
    job = 'bodyarmouruk',
    offjob = 'offbodyarmouruk',
    Pos   = { x = -323.95, y = 6079.68, z = 31.45 },
    Size  = { x = 1.5, y = 1.5, z = 1.5 },
  },
  
  deluxemotors = { -- Body Armour UK Sign On System
    job = 'deluxemotors',
    offjob = 'offdeluxemotors',
    Pos   = { x = 114.32, y = -136.5, z = 54.86 },
    Size  = { x = 1.5, y = 1.5, z = 1.5 },
  },

  pdm = { -- Body Armour UK Sign On System
  job = 'pdm',
  offjob = 'offpdm',
  Pos   = { x = -28.39, y = -1101.86, z = 27.28 },
  Size  = { x = 1.5, y = 1.5, z = 1.5 },
},
  
  coreinsurance = { -- Core Insurance
    job = 'coreinsurance',
    offjob = 'offcoreinsurance',
    Pos   = { x = 461.74, y = -564.48, z = 28.53 },
    Size  = { x = 1.5, y = 1.5, z = 1.5 },
  },
  
  scrappys = { -- Body Armour UK Sign On System
    job = 'scrappys',
    offjob = 'offscrappys',
    Pos   = { x = 153.37, y = -3008.46, z = 7.04 },
    Size  = { x = 1.5, y = 1.5, z = 1.5 },
  },
  
  mcrfitness = { -- MCR Fitness Sign On System
    job = 'mcrfitness',
    offjob = 'offmcrfitness',
    Pos   = { x = 260.35, y = -275.39, z = 53.86 },
    Size  = { x = 1.5, y = 1.5, z = 1.5 },
  },

  ambulance = {
    job = 'ambulance',
    offjob = 'offambulance',
    Pos = { x = -708.55487060547, y = 617.35668945313, z = 155.33862304688 },
    Size = { x = 1.5, y = 1.5, z = 1.5 },
  },
  
  mechanic = {
    job = 'mechanic',
    offjob = 'offmechanic',
    Pos = { x = -711.89306640625, y = 617.20672607422, z = 155.21899414063 },
    Size = { x = 1.5, y = 1.5, z = 1.5 },
  },
  
  taxi = {
    job = 'taxi',
    offjob = 'offtaxi',
    Pos = { x = -712.44293212891, y = 614.49835205078, z = 155.16439819336 },
    Size = { x = 1.5, y = 1.5, z = 1.5 },
  },
  
  reporter = {
    job = 'reporter',
    offjob = 'offreporter',
    Pos = { x = -708.90130615234, y = 614.45910644531, z = 155.24998474121 },
    Size = { x = 1.5, y = 1.5, z = 1.5 },
  },
}
