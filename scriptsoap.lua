do
    local itemprefab1 = ModUtilities.CreateItemPrefab()
    
    
    itemprefab1.Name = "<color=#99FF00>R</color><color=#0044FF>G</color><color=#FFE600>B</color> <color=#FF0000>S</color><color=#FF007F>O</color><color=#00E5FF>A</color><color=#FF9900>P</color>"
    
    itemprefab1.Description = "<color=#00E5FF>High-tech neon soap for your robot girlfriend\nIt provides gentle care for her chassis\nand gives her body a premium cyber-sheen</color>"
    itemprefab1.Price = 0
    itemprefab1.IsStackable = true
    itemprefab1.Category = 13
    itemprefab1.CanChangeColor = true
    itemprefab1.ColorSlots = {ColorSlot.CreateInstance('Main color', ColorPaletteManager.GetColorPaletteByName('partpalette'))}
    
    local item1 = ModUtilities.CreateNewItemAutoAssignId(CurrentModGuid, itemprefab1)
    ModUtilities.AddGenericItemToShop('grocery', item1)
end
