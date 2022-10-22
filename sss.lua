local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Test", "Midnight")
local me = Window:NewTab("Chatlines")
local mee = me:NewSection("Maple Hospital Chat lines")

-- Chatline stuff --

mee:NewButton("Maple Hospital Welcome message","Makes you chat the line",function()
local args = {
    [1] = "We are pleased to welcome you to Maple Hospital, where lives are saved every day! How may I help you?",
    [2] = "All"
}

game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
end)
local dee = me:NewSection("Other Chat Lines")
dee:NewButton("What is happening over here?","Makes you chat the line",function()
local args = {
    [1] = "What is happening over here?",
    [2] = "All"
}

game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
end)
dee:NewButton("I give up, I dont get paid enough to do this!","Makes you chat the line",function()
local args = {
    [1] = "I give up, I dont get paid enough to do this!",
    [2] = "All"
}

game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
end)
dee:NewButton("Just checking in...","Makes you chat the line",function()
local args = {
    [1] = "Just checking in...",
    [2] = "All"
}

game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
end)

local I_Was_Running_Far_Away = Window:NewTab("Chat")
local pp = I_Was_Running_Far_Away:NewSection("")
pp:NewTextBox("Message to chat","",function(txt)
local args = {
    [1] = txt,
    [2] = "All"
}

game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
end)



-- Settings Tab --

local Tab = Window:NewTab("Settings")
local UI = Tab:NewSection("UI Settings")
UI:NewKeybind("Toggle UI", "Toggles UI", Enum.KeyCode.Home, function()
	Library:ToggleUI()
end)
