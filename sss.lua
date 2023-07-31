---@diagnostic disable: deprecated, undefined-global, lowercase-global
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Chatlines", "Midnight")
local me = Window:NewTab("Chatlines")
local mee = me:NewSection("Maple Hospital Chat lines")

function chat(msg,rec)
local args = {
    [1] = msg,
    [2] = rec
}

game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
end	

-- Chatline stuff --

mee:NewButton("Maple Hospital Welcome message","Makes you chat the line",function()
chat("We are pleased to welcome you to Maple Hospital, where lives are saved every day! How may I help you?","All")
end)
mee:NewButton("Privacy Matters.","Makes you chat the line",function()
chat("Privacy Matters.","All")
wait(1)
chat("Close the curtains before and during treatment.","All")		
end)
local dee = me:NewSection("Other Chat Lines")
dee:NewButton("What is happening over here?","Makes you chat the line",function()
chat("What is happening over here?","All")
end)
dee:NewButton("I give up, I dont get paid enough to do this!","Makes you chat the line",function()
chat("I give up, I dont get paid enough to do this!","All")
end)
dee:NewButton("Just checking in...","Makes you chat the line",function()
chat("Just checking in...","All")
end)
dee:NewButton("'Kay.","Makes you chat the line",function()
chat("'Kay.","All")
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
UI:NewKeybind("Toggle UI", "Toggles UI", Enum.KeyCode.Quote, function()
	Library:ToggleUI()
end)
