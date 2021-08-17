-- MarseloShop 
-- https://discord.gg/aUZ3rttjVR
-- marselo.exe #0001

local marselo = {}

marselo.prefix = '[MarseloShop] '


marselo.messages = {   
    'Recordamos que para cualquier tipo de ayuda/soporte enviad /report.',
    'Para pedir la ID de otra persona mediante /ayuda.',
    'Al realizar cualquier acto delictivo debe hacer uso del /entorno',
    'Recuerda repasar la normativa del servidor'
}

local enableMessages = true
local timeout = 1000 * 60 * 15

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        for i in pairs(marselo.messages) do
            if enableMessages then
                chat(i)
            end
            Citizen.Wait(timeout)
        end
    end
end)

function chat(i)
    TriggerEvent('chat:addMessage', { args = { marselo.prefix, marselo.messages[i] }, color = {255, 0, 0} })
end

