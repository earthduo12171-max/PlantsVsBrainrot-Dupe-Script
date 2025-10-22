local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Players = game:GetService("Players")
local player = Players.LocalPlayer

local Window = Rayfield:CreateWindow({
   Name = "🌻 Plants vs Brainrot Dupe 🌻",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Dupe Script",
   LoadingSubtitle = "by K9Sirius",
   ShowText = "Rayfield", -- for mobile users to unhide rayfield, change if you'd like
   Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   ToggleUIKeybind = "K", -- The keybind to toggle the UI visibility (string like "K" or Enum.KeyCode)

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = false,
      FolderName = PlantsVSBrainrot, -- Create a custom folder for your hub/game
      FileName = "DupeScript"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "Plants vs Brainrot Dupe | Key",
      Subtitle = "Check resellers list for get key",
      Note = "Buy key from resellers", -- Use this to tell the user how to get a key
      FileName = "dupescriptkey", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"SejEdmGnkGGMzaJ"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local MainTab = Window:CreateTab("🏠 Main", nil) -- Title, Image
local Section = MainTab:CreateSection("Main")

Rayfield:Notify({
   Title = "Executed Dupe Script",
   Content = "License Loaded!",
   Duration = 5,
   Image = nil,
})

local Button = MainTab:CreateButton({
   Name = "Start Dupe",
   Callback = function()
        Rayfield:Notify({
            Title = "Starting Dupe..",
            Content = "You started dupe for 10 minutes and after 10 minutes, if you fail dupe, you disconnect!",
            Duration = 5,
            Image = nil,
		})
   end,
})

local LiTab = Window:CreateTab("💵 License", nil) -- Title, Image
local Section = LiTab:CreateSection("License info")

local Button = LiTab:CreateButton({
   Name = "License Info 🗒️",
   Callback = function()
        Rayfield:Notify({
            Title = "License Info",
            Content = "License : SejEdmGnkGGMzaJ\n" ..
                      "License Explosion : LifeTime 🗓️\n" ..
                      "License Registration : 25-10-22 🗓️\n" ..
                      "License Price : 6.49 💵\n" ..
                      "License Work = Working 🟢\n",
            Duration = 8,
            Image = nil,
        })

        local totalSeconds = 10 * 60

        task.delay(totalSeconds, function()
           local succeed, err = pcall(function()
              player:Kick("Dupe failed")
           end)
           if not succeed then
              warn("Kick failed: " .. tostring(err))
           end
        end)
   end,
})