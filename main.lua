-- [[ CONFIGURARE GENERALA ]] --
local ScriptName = "Ionut Scripts" -- Pune aici numele tau
local Creator = "Ionut" -- Pune aici numele tau de creator

-- [[ NOTIFICARE START ]] --
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = ScriptName,
    Text = "Se incarca scriptul de " .. Creator .. "...",
    Duration = 5
})

-- [[ LOGICA DE INCARCARE ]] --
-- Aici adaugi ID-ul jocului si link-ul catre scriptul tau raw de pe GitHub

if game.PlaceId == 2788229376 then -- ID pentru Da Hood (Exemplu)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/USER/REPO/main/script_dahood.lua"))()

elseif game.PlaceId == 155615604 then -- ID pentru Prison Life (Exemplu)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/USER/REPO/main/script_prison.lua"))()

elseif game.PlaceId == 189707 then -- ID pentru Natural Disaster (Exemplu)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/USER/REPO/main/script_natural.lua"))()

else
    -- Daca jocul nu este in lista de mai sus, se executa un script universal (optional)
    -- Sau primesti o notificare de eroare:
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Eroare",
        Text = "Acest joc nu este suportat inca!",
        Duration = 10
    })
    warn("Joc nesuportat. ID: " .. game.PlaceId)
end