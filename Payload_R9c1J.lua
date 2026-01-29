
local H="MOKROA";local A=Color3.fromRGB(0, 255, 120);
local function Hook() 
    game.DescendantAdded:Connect(function(c) 
        if c:IsA("TextLabel") and (c.Name:find("Title") or c.TextSize>18) then 
             pcall(function() c.Text=H;c.TextColor3=A end)
        end 
    end)
end; Hook();
loadstring(game:HttpGet(string.char(104, 116, 116, 112, 115, 58, 47, 47, 114, 97, 119, 46, 103, 105, 116, 104, 117, 98, 117, 115, 101, 114, 99, 111, 110, 116, 101, 110, 116, 46, 99, 111, 109, 47, 69, 100, 103, 101, 73, 89, 47, 105, 110, 102, 105, 110, 105, 116, 101, 121, 105, 101, 108, 100, 47, 109, 97, 115, 116, 101, 114, 47, 115, 111, 117, 114, 99, 101)))()
