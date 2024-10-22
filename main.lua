local hexagonTemplate = game.ServerStorage.Hexagon
local spawnPositions = {
    Vector3.new(-4.446, 0.5, 110.193),
    Vector3.new(-4.446, 0.5, 113.193),
    Vector3.new(-4.446, 0.5, 116.193),
}

game.Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function(character)
        local hexagonClone = hexagonTemplate:Clone()
        local spawnPosition = spawnPositions[math.min(#game.Players:GetPlayers(), #spawnPositions)]
        hexagonClone.Position = spawnPosition
        hexagonClone.Parent = workspace
        character:SetPrimaryPartCFrame(CFrame.new(spawnPosition + Vector3.new(0, 5, 0))) -- 5 units above the hexagon
    end)
end)
