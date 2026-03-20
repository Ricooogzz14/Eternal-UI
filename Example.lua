local EternalUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/Ricooogzz14/Eternal-UI/refs/heads/main/script.lua"))()

EternalUI.SetTheme("Void")

local Window = EternalUI.CreateWindow({
    Title = "Eternal UI",
    Subtitle = "Cosmic Interface",
    ToggleKey = Enum.KeyCode.RightShift
})

local Home = Window:CreateTab({
    Name = "Home",
    Icon = "✦"
})

local Main = Home:CreateSection({
    Name = "Main Controls"
})

Main:CreateButton({
    Name = "Execute",
    Callback = function()
        print("Executed safely")
    end
})

local Toggle = Main:CreateToggle({
    Name = "Enabled",
    Default = false,
    Callback = function(state)
        print(state)
    end
})

Main:CreateSlider({
    Name = "Power",
    Min = 0,
    Max = 100,
    Default = 25,
    Callback = function(v)
        print(v)
    end
})

Main:CreateDropdown({
    Name = "Mode",
    Options = {"Alpha", "Beta", "Gamma"},
    Default = "Alpha",
    Callback = function(option)
        print(option)
    end
})

Main:CreateTextBox({
    Name = "Name",
    Placeholder = "Enter name",
    Callback = function(text)
        print(text)
    end
})

Main:CreateKeybind({
    Name = "Open Menu",
    Default = Enum.KeyCode.RightShift,
    Callback = function(key)
        print(key.Name)
    end
})

Main:CreateLabel({
    Text = "Eternal UI is alive."
})

Window:Notify({
    Title = "Welcome",
    Content = "Theme loaded and UI ready.",
    Duration = 4
})
