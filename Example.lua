local EternalUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/Ricooogzz14/Eternal-UI/refs/heads/main/UI.lua"))()

local Window = EternalUI.CreateWindow("My UI")

local Tab = Window:AddTab("Main")
local Section = Tab:AddSection("Controls")

Section:AddButton("Click Me", function()
    print("Button clicked!")
end)

Section:AddToggle("God Mode", function(state)
    print("God Mode:", state)
end, false)

local slider = Section:AddSlider("Speed", 0, 100, 50)
slider:OnValue(function(value)
    print("Speed value:", value)
end)

local dd = Section:AddDropdown("Options", {"Option1","Option2","Option3"}, function(selection)
    print("Selected:", selection)
end)

Section:AddTextbox("Name", "Enter name here", function(text)
    print("Textbox:", text)
end)

local kb = Section:AddKeybind("Activate", function()
    print("Key pressed!")
end)

local cp = Section:AddColorPicker("Pick Color", function(col)
    print("Color changed:", col)
end)

Window:Notify("UI Loaded!", 5)
Window:SetTheme({
    Primary = Color3.fromRGB(20, 20, 20),
    Accent = Color3.fromRGB(0, 255, 128),
    Text = Color3.fromRGB(255, 255, 255),
    BackgroundGrid = Color3.fromRGB(6, 6, 6)
})
