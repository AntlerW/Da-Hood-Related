getgenv().resolve = true

game:GetService("RunService").RenderStepped:Connect(function()
  if getgenv().resolve == true then
    for i,v in pairs(game.Players:GetChildren()) do
      if v.Name ~= game.Players.LocalPlayer.Name then
        local oldvel = v.Character.HumanoidRootPart.Velocity
        v.Character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
      end
    end
  end
end)
