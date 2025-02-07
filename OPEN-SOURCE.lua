local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local localchar = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
local Window = Rayfield:CreateWindow({
   Name = "Together",
   Icon = 0,
   LoadingTitle = "git rayfield'd",
   LoadingSubtitle = "nil",
   Theme = "Default",

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false,

   ConfigurationSaving = {
      Enabled = false,
      FolderName = nil,
      FileName = "idk"
   },

   Discord = {
      Enabled = false,
      Invite = "noinvitelink",
      RememberJoins = true
   },

   KeySystem = false,
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided",
      FileName = "Key",
      SaveKey = true,
      GrabKeyFromSite = false,
      Key = {"Hello"}
   }
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
        local newlocal = pl.Character or pl.CharacterAdded:Wait()
       for i, v in game.workspace.Level:GetChildren() d
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
})
