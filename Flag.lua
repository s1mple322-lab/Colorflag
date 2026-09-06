-- ====================================================
-- GOBAARSCR15 - FLAG PREVIEW + HEX COMPLETO
-- Todos los países incluidos
-- ====================================================

local Players = game:GetService("Players")
local UIS = game:GetService("UserInputService")
local RS = game:GetService("RunService")
local LP = Players.LocalPlayer
local PG = LP:WaitForChild("PlayerGui")

-- ====================================================
-- TABLA COMPLETA DE COLORES HEX
-- ====================================================
local FlagColors = {
    ["Afghanistan"] = {"#000000", "#D32011", "#007A36", "#FFFFFF"},
    ["Albania"] = {"#E41E20", "#000000"},
    ["Algeria"] = {"#006233", "#FFFFFF", "#D21034"},
    ["Andorra"] = {"#0018A8", "#FEDF00", "#D0103A"},
    ["Angola"] = {"#CE1126", "#000000", "#F9D616"},
    ["Antigua and Barbuda"] = {"#CE1126", "#000000", "#0072C6", "#FFFFFF", "#FCD116"},
    ["Argentina"] = {"#74ACDF", "#FFFFFF", "#F6B40E"},
    ["Armenia"] = {"#D90012", "#0033A0", "#F2A800"},
    ["Australia"] = {"#00008B", "#FFFFFF", "#FF0000"},
    ["Austria"] = {"#ED2939", "#FFFFFF"},
    ["Azerbaijan"] = {"#00B5E2", "#EF3340", "#509E2F", "#FFFFFF"},
    ["Bahamas"] = {"#00ABC9", "#FAE042", "#000000"},
    ["Bahrain"] = {"#FFFFFF", "#CE1126"},
    ["Bangladesh"] = {"#006A4E", "#F42A41"},
    ["Barbados"] = {"#00267F", "#FFC726", "#000000"},
    ["Belarus"] = {"#C8313E", "#4AA657", "#FFFFFF"},
    ["Belgium"] = {"#000000", "#FAE042", "#ED2939"},
    ["Belize"] = {"#003F87", "#CE1126", "#FFFFFF"},
    ["Benin"] = {"#008751", "#FCD116", "#E8112D"},
    ["Bhutan"] = {"#FFD520", "#FF4E12", "#FFFFFF"},
    ["Bolivia"] = {"#D52B1E", "#F9E300", "#007934"},
    ["Bosnia and Herzegovina"] = {"#002395", "#FECB00", "#FFFFFF"},
    ["Botswana"] = {"#75AADB", "#FFFFFF", "#000000"},
    ["Brazil"] = {"#009B3A", "#FEDF00", "#002776", "#FFFFFF"},
    ["Brunei"] = {"#F7E017", "#FFFFFF", "#000000", "#CF1126"},
    ["Bulgaria"] = {"#FFFFFF", "#00966E", "#D62612"},
    ["Burkina Faso"] = {"#EF2B2D", "#009E49", "#FCD116"},
    ["Burundi"] = {"#CE1126", "#1EB53A", "#FFFFFF"},
    ["Cabo Verde"] = {"#003893", "#FFFFFF", "#CF2027", "#F7D116"},
    ["Cambodia"] = {"#032EA1", "#E00025", "#FFFFFF"},
    ["Cameroon"] = {"#007A5E", "#CE1126", "#FCD116"},
    ["Canada"] = {"#FF0000", "#FFFFFF"},
    ["Central African Republic"] = {"#003082", "#289728", "#FFCE00", "#FFFFFF", "#D21034"},
    ["Chad"] = {"#002664", "#FECB00", "#C60C30"},
    ["Chile"] = {"#D52B1E", "#FFFFFF", "#0039A6"},
    ["China"] = {"#DE2910", "#FFDE00"},
    ["Colombia"] = {"#FCD116", "#003893", "#CE1126"},
    ["Comoros"] = {"#3A75C4", "#CE1126", "#FFFFFF", "#FFC61E", "#3D8E33"},
    ["Congo"] = {"#009543", "#FBDE4A", "#DC241F"},
    ["Costa Rica"] = {"#002B7F", "#FFFFFF", "#CE1126"},
    ["Croatia"] = {"#171796", "#FFFFFF", "#FF0000"},
    ["Cuba"] = {"#002A8F", "#FFFFFF", "#CF142B"},
    ["Cyprus"] = {"#FFFFFF", "#D47600", "#435125"},
    ["Czech Republic"] = {"#D7141A", "#FFFFFF", "#11457E"},
    ["Czechia"] = {"#D7141A", "#FFFFFF", "#11457E"},
    ["Denmark"] = {"#C60C30", "#FFFFFF"},
    ["Djibouti"] = {"#6AB2E7", "#12AD2B", "#FFFFFF", "#D7141A"},
    ["Dominica"] = {"#006B3F", "#FCD116", "#FFFFFF", "#000000", "#D41C30"},
    ["Dominican Republic"] = {"#002D62", "#CE1126", "#FFFFFF"},
    ["DR Congo"] = {"#007FFF", "#F7D618", "#CE1021"},
    ["Ecuador"] = {"#FFDD00", "#034EA2", "#ED1C24"},
    ["Egypt"] = {"#CE1126", "#FFFFFF", "#000000", "#C09300"},
    ["El Salvador"] = {"#0F47AF", "#FFFFFF"},
    ["Equatorial Guinea"] = {"#E32118", "#FFFFFF", "#3E9A00", "#0073CE"},
    ["Eritrea"] = {"#EA0437", "#4189DD", "#12AD2B", "#FFC726"},
    ["Estonia"] = {"#0072CE", "#000000", "#FFFFFF"},
    ["Eswatini"] = {"#3E5EB9", "#FFB20D", "#FF1E14", "#000000", "#FFFFFF"},
    ["Ethiopia"] = {"#078930", "#FCDD09", "#DA121A", "#0F47AF"},
    ["Fiji"] = {"#69B3E7", "#FFFFFF"},
    ["Finland"] = {"#FFFFFF", "#003580"},
    ["France"] = {"#002395", "#FFFFFF", "#ED2939"},
    ["Gabon"] = {"#009E60", "#FCD116", "#3A75C4"},
    ["Gambia"] = {"#CE1126", "#0C1C8C", "#3A7728", "#FFFFFF"},
    ["Georgia"] = {"#FFFFFF", "#FF0000"},
    ["Germany"] = {"#000000", "#DD0000", "#FFCE00"},
    ["Ghana"] = {"#CE1126", "#FCD116", "#006B3F", "#000000"},
    ["Greece"] = {"#0D5EAF", "#FFFFFF"},
    ["Grenada"] = {"#CE1126", "#FCD116", "#007A5E"},
    ["Guatemala"] = {"#4997D0", "#FFFFFF"},
    ["Guinea"] = {"#CE1126", "#FCD116", "#009460"},
    ["Guinea-Bissau"] = {"#CE1126", "#FCD116", "#009E49", "#000000"},
    ["Guyana"] = {"#CE1126", "#FCD116", "#009E49", "#FFFFFF"},
    ["Haiti"] = {"#00209F", "#D21034"},
    ["Honduras"] = {"#0D3B99", "#FFFFFF"},
    ["Hungary"] = {"#CE2939", "#FFFFFF", "#477050"},
    ["Iceland"] = {"#02529C", "#FFFFFF", "#DC1E35"},
    ["India"] = {"#FF9933", "#FFFFFF", "#138808", "#000080"},
    ["Indonesia"] = {"#FF0000", "#FFFFFF"},
    ["Iran"] = {"#239F40", "#FFFFFF", "#DA0000"},
    ["Iraq"] = {"#CE1126", "#FFFFFF", "#000000", "#007A3D"},
    ["Ireland"] = {"#169B62", "#FFFFFF", "#FF883E"},
    ["Israel"] = {"#0038B8", "#FFFFFF"},
    ["Italy"] = {"#009246", "#FFFFFF", "#CE2B37"},
    ["Ivory Coast"] = {"#F77F00", "#FFFFFF", "#009E60"},
    ["Jamaica"] = {"#000000", "#FFB81C", "#009B3A"},
    ["Japan"] = {"#FFFFFF", "#BC002D"},
    ["Jordan"] = {"#CE1126", "#000000", "#007A3D", "#FFFFFF"},
    ["Kazakhstan"] = {"#00AFCA", "#FEC50C"},
    ["Kenya"] = {"#000000", "#FFFFFF", "#BB0000", "#006600"},
    ["Kiribati"] = {"#CE1126", "#FCD116", "#003F87", "#FFFFFF"},
    ["Kuwait"] = {"#007A3D", "#FFFFFF", "#CE1126", "#000000"},
    ["Kyrgyzstan"] = {"#E8112D", "#FFEF00"},
    ["Laos"] = {"#CE1126", "#002868", "#FFFFFF"},
    ["Latvia"] = {"#9E3039", "#FFFFFF"},
    ["Lebanon"] = {"#ED1C24", "#FFFFFF", "#00A651"},
    ["Lesotho"] = {"#00209F", "#FFFFFF", "#009543", "#000000"},
    ["Liberia"] = {"#002868", "#FFFFFF", "#BF0A30"},
    ["Libya"] = {"#000000", "#FFFFFF", "#E70013", "#239E46"},
    ["Liechtenstein"] = {"#002B7F", "#CE1126", "#FFD700"},
    ["Lithuania"] = {"#FDB913", "#006A44", "#C1272D"},
    ["Luxembourg"] = {"#00A1DE", "#FFFFFF", "#ED2939"},
    ["Madagascar"] = {"#FFFFFF", "#FC3D32", "#007E3A"},
    ["Malawi"] = {"#CE1126", "#000000", "#339E35"},
    ["Malaysia"] = {"#CC0001", "#FFFFFF", "#010066", "#FCD116"},
    ["Maldives"] = {"#D21034", "#007E3A", "#FFFFFF"},
    ["Mali"] = {"#14B53A", "#FCD116", "#CE1126"},
    ["Malta"] = {"#FFFFFF", "#CF142B"},
    ["Marshall Islands"] = {"#003087", "#FFFFFF", "#FF7500"},
    ["Mauritania"] = {"#00A95C", "#FFC400", "#D21034"},
    ["Mauritius"] = {"#EA2839", "#1A206D", "#FFD500", "#00A551"},
    ["Mexico"] = {"#006847", "#FFFFFF", "#CE1126"},
    ["Micronesia"] = {"#75B2DD", "#FFFFFF"},
    ["Moldova"] = {"#0046AE", "#FFD200", "#CC092F"},
    ["Monaco"] = {"#CE1126", "#FFFFFF"},
    ["Mongolia"] = {"#C4272F", "#015197", "#F9CF02"},
    ["Montenegro"] = {"#C40308", "#D4AF37"},
    ["Morocco"] = {"#C1272D", "#006233"},
    ["Mozambique"] = {"#007168", "#000000", "#FCE100", "#D21034", "#FFFFFF"},
    ["Myanmar"] = {"#FECB00", "#34B233", "#EA2839", "#FFFFFF"},
    ["Namibia"] = {"#003580", "#D21034", "#009543", "#FFCE00", "#FFFFFF"},
    ["Nauru"] = {"#002B7F", "#FFC61E", "#FFFFFF"},
    ["Nepal"] = {"#DC143C", "#003893", "#FFFFFF"},
    ["Netherlands"] = {"#AE1C28", "#FFFFFF", "#21468B"},
    ["New Zealand"] = {"#00247D", "#FFFFFF", "#CC142B"},
    ["Nicaragua"] = {"#0067C6", "#FFFFFF"},
    ["Niger"] = {"#E05206", "#FFFFFF", "#0DB02B"},
    ["Nigeria"] = {"#008751", "#FFFFFF"},
    ["North Korea"] = {"#024FA2", "#FFFFFF", "#ED1C27"},
    ["North Macedonia"] = {"#D20000", "#FFE600"},
    ["Norway"] = {"#BA0C2F", "#FFFFFF", "#00205B"},
    ["Oman"] = {"#DB161B", "#FFFFFF", "#008000"},
    ["Pakistan"] = {"#01411C", "#FFFFFF"},
    ["Palau"] = {"#4AADD6", "#FFDE00"},
    ["Palestine"] = {"#000000", "#FFFFFF", "#007A3D", "#CE1126"},
    ["Panama"] = {"#DA121A", "#FFFFFF", "#072357"},
    ["Papua New Guinea"] = {"#000000", "#CE1126", "#FCD116", "#FFFFFF"},
    ["Paraguay"] = {"#D52B1E", "#FFFFFF", "#0038A8"},
    ["Peru"] = {"#D91023", "#FFFFFF"},
    ["Philippines"] = {"#0038A8", "#CE1126", "#FFFFFF", "#FCD116"},
    ["Poland"] = {"#FFFFFF", "#DC143C"},
    ["Portugal"] = {"#006600", "#FF0000", "#FFFF00", "#FFFFFF", "#003399"},
    ["Qatar"] = {"#8A1538", "#FFFFFF"},
    ["Romania"] = {"#002B7F", "#FCD116", "#CE1126"},
    ["Russia"] = {"#FFFFFF", "#0039A6", "#D52B1E"},
    ["Rwanda"] = {"#00A1DE", "#FAD201", "#20603D"},
    ["Saint Kitts and Nevis"] = {"#009739", "#CE1126", "#000000", "#FCD116", "#FFFFFF"},
    ["Saint Lucia"] = {"#66CCFF", "#FCD116", "#000000", "#FFFFFF"},
    ["Saint Vincent and the Grenadines"] = {"#007B3A", "#FCD116", "#00267F"},
    ["Samoa"] = {"#CE1126", "#002B7F", "#FFFFFF"},
    ["San Marino"] = {"#5EB6E4", "#FFFFFF"},
    ["Sao Tome and Principe"] = {"#12AD2B", "#FFCE00", "#D21034", "#000000"},
    ["Saudi Arabia"] = {"#006C35", "#FFFFFF"},
    ["Senegal"] = {"#00853F", "#FDEF42", "#E31B23"},
    ["Serbia"] = {"#C6363C", "#0C4076", "#FFFFFF"},
    ["Seychelles"] = {"#D62828", "#FCD856", "#007E3A", "#003D79", "#FFFFFF"},
    ["Sierra Leone"] = {"#1EB53A", "#FFFFFF", "#0072C6"},
    ["Singapore"] = {"#EF3340", "#FFFFFF"},
    ["Slovakia"] = {"#FFFFFF", "#0B4EA2", "#EE1C25"},
    ["Slovenia"] = {"#FFFFFF", "#0000FF", "#FF0000"},
    ["Solomon Islands"] = {"#0051BA", "#215B33", "#FCD116", "#FFFFFF"},
    ["Somalia"] = {"#4189DD", "#FFFFFF"},
    ["South Africa"] = {"#007A4D", "#000000", "#FFB612", "#DE3831", "#002395", "#FFFFFF"},
    ["South Korea"] = {"#FFFFFF", "#CD2E3A", "#0047A0", "#000000"},
    ["South Sudan"] = {"#000000", "#FFFFFF", "#078930", "#DA121A", "#0F47AF", "#FCDD09"},
    ["Spain"] = {"#AA151B", "#F1BF00"},
    ["Sri Lanka"] = {"#FFB700", "#8D153A", "#00534E", "#FFFFFF"},
    ["Sudan"] = {"#D21034", "#FFFFFF", "#000000", "#007A3D"},
    ["Suriname"] = {"#377E3F", "#FFFFFF", "#B40A2D", "#ECC81D"},
    ["Sweden"] = {"#006AA7", "#FECC00"},
    ["Switzerland"] = {"#FF0000", "#FFFFFF"},
    ["Syria"] = {"#CE1126", "#FFFFFF", "#000000", "#007A3D"},
    ["Taiwan"] = {"#FE0000", "#000095", "#FFFFFF"},
    ["Tajikistan"] = {"#CC0000", "#FFFFFF", "#006600", "#F8C300"},
    ["Tanzania"] = {"#1EB53A", "#00A3DD", "#FCD116", "#000000"},
    ["Thailand"] = {"#A51931", "#F4F5F8", "#2D2A4A"},
    ["Timor-Leste"] = {"#DC241F", "#FFC726", "#000000", "#FFFFFF"},
    ["Togo"] = {"#006A4E", "#FFCE00", "#D21034", "#FFFFFF"},
    ["Tonga"] = {"#C10000", "#FFFFFF"},
    ["Trinidad and Tobago"] = {"#CE1126", "#FFFFFF", "#000000"},
    ["Tunisia"] = {"#E70013", "#FFFFFF"},
    ["Turkey"] = {"#E30A17", "#FFFFFF"},
    ["Turkmenistan"] = {"#00843D", "#FFFFFF", "#D22630"},
    ["Tuvalu"] = {"#00247D", "#FFFFFF", "#FFCC00", "#CF142B"},
    ["Uganda"] = {"#000000", "#FCDC04", "#D90000", "#FFFFFF"},
    ["Ukraine"] = {"#005BBB", "#FFD500"},
    ["United Arab Emirates"] = {"#FF0000", "#00732F", "#FFFFFF", "#000000"},
    ["United Kingdom"] = {"#012169", "#FFFFFF", "#C8102E"},
    ["United States"] = {"#B22234", "#FFFFFF", "#3C3B6E"},
    ["Uruguay"] = {"#0038A8", "#FFFFFF", "#FCD116"},
    ["Uzbekistan"] = {"#1EB53A", "#0099B5", "#CE1126", "#FFFFFF"},
    ["Vanuatu"] = {"#000000", "#FDCE12", "#009543", "#D21034"},
    ["Vatican City"] = {"#FFE000", "#FFFFFF"},
    ["Venezuela"] = {"#FFCC00", "#00247D", "#CF142B", "#FFFFFF"},
    ["Vietnam"] = {"#DA251D", "#FFFF00"},
    ["Yemen"] = {"#CE1126", "#FFFFFF", "#000000"},
    ["Zambia"] = {"#198A00", "#DE2010", "#000000", "#EF7D00"},
    ["Zimbabwe"] = {"#006400", "#FFD200", "#D40000", "#000000", "#FFFFFF", "#00ADEF"},
}

-- Limpiar GUI anterior
if PG:FindFirstChild("GOBAARSCR15_FlagGUI") then
    PG.GOBAARSCR15_FlagGUI:Destroy()
end

local gui = Instance.new("ScreenGui")
gui.Name = "GOBAARSCR15_FlagGUI"
gui.ResetOnSpawn = false
gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
gui.Parent = PG

-- Contenedor principal
local main = Instance.new("Frame")
main.Name = "Main"
main.Size = UDim2.new(0, 270, 0, 230)
main.Position = UDim2.new(0, 20, 0.22, 0)
main.BackgroundColor3 = Color3.fromRGB(18, 18, 22)
main.BackgroundTransparency = 0.12
main.BorderSizePixel = 0
main.Active = true
main.Parent = gui

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 12)
corner.Parent = main

local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(0, 255, 150)
stroke.Thickness = 2.5
stroke.Parent = main

-- Título
local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 30)
title.BackgroundTransparency = 1
title.Text = "FLAG + HEX"
title.TextColor3 = Color3.fromRGB(0, 255, 150)
title.Font = Enum.Font.GothamBold
title.TextSize = 17
title.Parent = main

-- Imagen de la bandera
local img = Instance.new("ImageLabel")
img.Name = "FlagImage"
img.Size = UDim2.new(0, 230, 0, 115)
img.Position = UDim2.new(0.5, -115, 0, 38)
img.BackgroundColor3 = Color3.fromRGB(8, 8, 8)
img.BackgroundTransparency = 0.25
img.ScaleType = Enum.ScaleType.Fit
img.Parent = main

local imgCorner = Instance.new("UICorner")
imgCorner.CornerRadius = UDim.new(0, 8)
imgCorner.Parent = img

-- Label de hex
local hexLabel = Instance.new("TextLabel")
hexLabel.Name = "HexLabel"
hexLabel.Size = UDim2.new(1, -16, 0, 55)
hexLabel.Position = UDim2.new(0, 8, 1, -60)
hexLabel.BackgroundTransparency = 1
hexLabel.Text = "Esperando bandera..."
hexLabel.TextColor3 = Color3.fromRGB(0, 255, 150)
hexLabel.Font = Enum.Font.Code
hexLabel.TextSize = 14
hexLabel.TextWrapped = true
hexLabel.TextXAlignment = Enum.TextXAlignment.Center
hexLabel.Parent = main

-- Drag
local dragging, dragStart, startPos
main.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = main.Position
    end
end)

main.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = false
    end
end)

UIS.InputChanged:Connect(function(input)
    if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
        local delta = input.Position - dragStart
        main.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end
end)

-- Detectar nombre
local function getCurrentFlagName()
    for _, guiObj in pairs(PG:GetChildren()) do
        if guiObj:IsA("ScreenGui") and guiObj.Name \~= "GOBAARSCR15_FlagGUI" then
            for _, v in pairs(guiObj:GetDescendants()) do
                if v:IsA("TextLabel") and v.Visible and v.Text \~= "" then
                    local txt = v.Text:gsub("%s+", " "):match("^%s*(.-)%s*$") or ""
                    if #txt > 2 and #txt < 45 then
                        for name, _ in pairs(FlagColors) do
                            if txt:lower() == name:lower() or txt:lower():find(name:lower(), 1, true) then
                                return name
                            end
                        end
                        if txt:match("^[A-ZÁÉÍÓÚ]") then
                            return txt
                        end
                    end
                end
            end
        end
    end
    return nil
end

-- FlagsData
local flagsData = {}
pcall(function()
    flagsData = require(game:GetService("ReplicatedStorage"):WaitForChild("FlagsData", 3)).List
end)

local lastName = ""
RS.RenderStepped:Connect(function()
    local name = getCurrentFlagName()
    
    if name and name \~= lastName then
        lastName = name
        
        local imgId = nil
        for _, f in pairs(flagsData) do
            if f.Name and (f.Name:lower() == name:lower() or name:lower():find(f.Name:lower(), 1, true)) then
                imgId = f.ImageId
                break
            end
        end
        
        if imgId then
            img.Image = "rbxassetid://" .. tostring(imgId)
        end
        
        local colors = FlagColors[name]
        if not colors then
            for k, v in pairs(FlagColors) do
                if k:lower():find(name:lower(), 1, true) or name:lower():find(k:lower(), 1, true) then
                    colors = v
                    break
                end
            end
        end
        
        if colors then
            hexLabel.Text = name .. "\n" .. table.concat(colors, "   ")
            pcall(function() setclipboard(table.concat(colors, " ")) end)
        else
            hexLabel.Text = name .. "\n(sin colores)"
        end
    end
end)

-- Botón toggle
local toggle = Instance.new("TextButton")
toggle.Size = UDim2.new(0, 52, 0, 52)
toggle.Position = UDim2.new(0, 20, 0.13, 0)
toggle.BackgroundColor3 = Color3.fromRGB(18, 18, 22)
toggle.Text = "HEX"
toggle.TextColor3 = Color3.fromRGB(0, 255, 150)
toggle.Font = Enum.Font.GothamBold
toggle.TextSize = 15
toggle.Parent = gui

local tCorner = Instance.new("UICorner")
tCorner.CornerRadius = UDim.new(1, 0)
tCorner.Parent = toggle

local tStroke = Instance.new("UIStroke")
tStroke.Color = Color3.fromRGB(0, 255, 150)
tStroke.Thickness = 2.5
tStroke.Parent = toggle

toggle.MouseButton1Click:Connect(function()
    main.Visible = not main.Visible
end)

print("✅ GOBAARSCR15 Flag + HEX COMPLETO cargado")
