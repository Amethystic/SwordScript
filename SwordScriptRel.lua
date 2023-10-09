-- // Script made by @athena.software \\ -- 
local Menu = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()
local p = game:GetService("Players").LocalPlayer
local Username = game:GetService("Players").LocalPlayer.DisplayName
local char = game:GetService("Players").LocalPlayer.Character or nil
local cheatname = "SFOTH:IV Sword Script | "
local sds = "User:"

local Window = Menu:CreateWindow({
    Title = cheatname .. sds,
    SubTitle = Username,
    TabWidth = 160,
    Size = UDim2.fromOffset(500, 350),
    Acrylic = false,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.Delete -- Used when theres no MinimizeKeybind
})

local Tabs = {
    Main = Window:AddTab({ Title = "Main", Icon = "sword" }),
}

local Options = Menu.Options do
    Tabs.Main:AddParagraph({ Title = "Get REALLY to the point", Content = "Activate the script" })

    local Toggle = Tabs.Main:AddToggle("MyToggle", {Title = "inf Reach", Default = false })

    Toggle:OnChanged(function()
    if Options.MyToggle.Value then
        while Options.MyToggle.Value and wait() do
            for _, tool in ipairs(p.Backpack:GetChildren()) do
                if tool:IsA("Tool") then
                    tool.Parent = char
                    char.Sword.Handle.Size = Vector3.new(99999999,99999999,99999999)
                    char.Sword.Handle.Massless = true
                end
            end
        end
    else
        char.Sword.Handle.Size = Vector3.new(1, 0.800000011920929, 4)
        char.Sword.Handle.Massless = false

        for i,v in pairs(char:GetChildren()) do
            if v:IsA'Tool' then
                v.Parent = p.Backpack;
            end
        end
        char.Humanoid.Health = 0
    end end)
end
