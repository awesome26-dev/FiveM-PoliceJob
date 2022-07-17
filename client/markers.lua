--- action functions
local CurrentAction = nil
local CurrentActionMsg = ""
local CurrentActionData = {}
local HasAlreadyEnteredMarker = false
local LastZone = nil

ESX = nil

Citizen.CreateThread(
    function()
        while ESX == nil do
            TriggerEvent(
                "esx:getSharedObject",
                function(obj)
                    ESX = obj
                end
            )
            Citizen.Wait(0)
        end
    end
)

-- Display markers
Citizen.CreateThread(
    function()
        while true do
            Wait(0)

            local coords = GetEntityCoords(GetPlayerPed(-1))

            for k, v in pairs(Config.Zones) do
                if
                    (v.Type ~= -1 and
                        GetDistanceBetweenCoords(coords, v.Pos.x, v.Pos.y, v.Pos.z, true) < Config.DrawDistance)
                 then
                    DrawMarker(
                        v.Type,
                        v.Pos.x,
                        v.Pos.y,
                        v.Pos.z,
                        0.0,
                        0.0,
                        0.0,
                        0,
                        0.0,
                        0.0,
                        v.Size.x,
                        v.Size.y,
                        v.Size.z,
                        v.Color.r,
                        v.Color.g,
                        v.Color.b,
                        100,
                        false,
                        true,
                        2,
                        false,
                        false,
                        false,
                        false
                    )
                end
            end
        end
    end
)

-- Enter / Exit marker events
Citizen.CreateThread(
    function()
        while true do
            Wait(0)

            local coords = GetEntityCoords(GetPlayerPed(-1))
            local isInMarker = false
            local currentZone = nil

            for k, v in pairs(Config.Zones) do
                if (GetDistanceBetweenCoords(coords, v.Pos.x, v.Pos.y, v.Pos.z, true) < v.Size.x) then
                    isInMarker = true
                    currentZone = k
                end
            end

            if (isInMarker and not HasAlreadyEnteredMarker) or (isInMarker and LastZone ~= currentZone) then
                HasAlreadyEnteredMarker = true
                LastZone = currentZone
                TriggerEvent("policejob:hasEnteredMarker", currentZone)
            end

            if not isInMarker and HasAlreadyEnteredMarker then
                HasAlreadyEnteredMarker = false
                TriggerEvent("policejob:hasExitedMarker", LastZone)
            end
        end
    end
)

----markers
AddEventHandler(
    "policejob:hasEnteredMarker",
    function(zone)
        if zone == "PoliceDuty" then
            CurrentAction = "police_duty"
            CurrentActionMsg = "Test message"
            CurrentActionData = {}

            ESX.ShowHelpNotification(CurrentActionMsg)
        end
    end
)

---- Exit markers
AddEventHandler(
    "policejob:hasExitedMarker",
    function(zone)
        CurrentAction = nil
    end
)

--notification
function sendNotification(color, title, message)
    TriggerEvent("notifications", color, title, message)
end
