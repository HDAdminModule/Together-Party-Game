local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local localchar = game.Players.LocalPlayer.Character
local Window = Rayfield:CreateWindow({
   Name = "Together [Party Game] ",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "lulz",
   LoadingSubtitle = "cgi",
   Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = false,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})
local Tab1 = Window:CreateTab("Teleport", 9943307899)
  local Button = Tab1:CreateButton({
   Name = "TP to Door",
   Callback = function()
       for i, v in game.workspace.Level:GetChildren() do
          localchar.PrimaryPart = localchar:WaitForChild("HumanoidRootPart")
	        localchar:WaitForChild("HumanoidRootPart").Position = v.Door.Position
          Rayfield:Notify({
           Title = "Executed",
           Content = "Successfully did whatever the heck you just pressed",
           Duration = 6.5,
           Image = "rewind",
        })
       end
   end
})
    local Button = Tab1:CreateButton({
   Name = "(kind of) make everyone invisible",
   Callback = function()
      for i, pl in game.Players:GetPlayers() do
        local newlocal = pl.Character
       for i, v in game.workspace.Level:GetChildren() do
          newlocal.PrimaryPart = newlocal:WaitForChild("HumanoidRootPart")
	        newlocal:WaitForChild("HumanoidRootPart").Position = v.Door.Position
          Rayfield:Notify({
           Title = "Executed",
           Content = "Successfully did whatever the heck you just pressed",
           Duration = 6.5,
           Image = "rewind",
        })
           end
       end
   end,
})
