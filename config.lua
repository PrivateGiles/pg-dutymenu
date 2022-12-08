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
        --enter custom notification here
    end
end

Config.Zones = {
  police = {
    job = 'police',
    offjob = 'offpolice',
    Pos   = { x = 441.22, y = -981.9, z = 30.69 },
    Size  = { x = 1.5, y = 1.5, z = 1.5 },
  },

  ambulance = {
    job = 'ambulance',
    offjob = 'offambulance',
    Pos = { x = 309.8, y = -603.06, z = 43.28 },
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
