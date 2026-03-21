local EternalUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/Ricooogzz14/Eternal-UI/refs/heads/main/script.lua"))()

local Window = EternalUI:CreateWindow({
    Title = "Eternal Hub",
    Size = UDim2.new(0, 650, 0, 500)
})

local MainTab = Window:CreateTab("Main")
local VisualsTab = Window:CreateTab("Visuals")
local SettingsTab = Window:CreateTab("Settings")

local GeneralSection = MainTab:CreateSection("General")

GeneralSection:AddButton({
    Name = "Print Hello",
    Tooltip = "Click to print message",
    Callback = function()
        print("Hello World!")
        Window:Notify({
            Title = "Success",
            Message = "Button clicked!",
            Duration = 3
        })
    end
})

local AutoFarmToggle = GeneralSection:AddToggle({
    Name = "Auto Farm",
    Default = false,
    Flag = "AutoFarm",
    Tooltip = "Automatically farms resources",
    Callback = function(value)
        print("Auto Farm:", value)
    end
})

GeneralSection:AddSlider({
    Name = "Walk Speed",
    Min = 16,
    Max = 100,
    Default = 16,
    Flag = "WalkSpeed",
    Tooltip = "Adjust movement speed",
    Callback = function(value)
        if game.Players.LocalPlayer.Character then
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
        end
    end
})

GeneralSection:AddDropdown({
    Name = "Select Mode",
    Options = {"Normal", "Hard", "Extreme"},
    Default = "Normal",
    Flag = "GameMode",
    Tooltip = "Select game difficulty",
    Callback = function(option)
        print("Mode:", option)
    end
})

GeneralSection:AddKeybind({
    Name = "Kill Aura Key",
    Default = Enum.KeyCode.X,
    Flag = "KillAuraKey",
    Tooltip = "Press to activate kill aura",
    Callback = function()
        print("Kill Aura activated!")
    end
})

GeneralSection:AddTextbox({
    Name = "Player Name",
    Placeholder = "Enter target...",
    Flag = "TargetName",
    Tooltip = "Enter player to target",
    Callback = function(text, enterPressed)
        if enterPressed then
            print("Target:", text)
        end
    end
})

GeneralSection:AddColorPicker({
    Name = "ESP Color",
    Default = Color3.fromRGB(147, 112, 219),
    Flag = "ESPColor",
    Tooltip = "Choose ESP highlight color",
    Callback = function(color)
        print("Color:", color)
    end
})

local ConfigSection = SettingsTab:CreateSection("Configuration")

ConfigSection:AddButton({
    Name = "Save Config",
    Callback = function()
        Window:SaveConfig("Default")
        Window:Notify({
            Title = "Saved",
            Message = "Configuration saved successfully!",
            Duration = 3
        })
    end
})

ConfigSection:AddButton({
    Name = "Load Config",
    Callback = function()
        Window:LoadConfig("Default")
        Window:Notify({
            Title = "Loaded",
            Message = "Configuration restored!",
            Duration = 3
        })
    end
})

Window:Notify({
    Title = "EternalUI Loaded",
    Message = "Welcome! Press RightControl to toggle UI",
    Duration = 5
})
--]]
