do
local itemprefab0 = ModUtilities.CreateItemPrefab()
itemprefab0.Name = "<color=#ffe32d>GAME STATISTICS</color>"
itemprefab0.Description = "<color=#ffe32d>Access global universe database logs, event progression and minigame scores.</color>"
itemprefab0.Price = 0
itemprefab0.IsStackable = false
itemprefab0.Category = 5

function OnUse(item)
    UiOverlay.CloseUiOverlay()
    
    UiOverlay.OkPopup("",(
        "<color=#00000000><align=center><scrollView mode='vertical' style='height: 450px;'></color></align>"..
        "\n<align=center><color=#ffe32d>=== GLOBAL TIME & PROGRESSION ===</color></align>"..
        "\n<align=center><color=#ffe32d>Current Story Stage</color> : "..gv.stage.."</align>"..
        "\n<align=center><color=#ffe32d>Total Game Runtime</color> : "..gv.time.." mins ("..gv.TimeToDateString(gv.time)..")</align>"..
        
        "\n\n<align=center><color=#fb3302>=== CITY RIOTS & CIVIL CRISIS TRACKER ===</color></align>"..
        "\n<align=center><color=#fb3302>Are City Riots Active?</color> : "..tostring(gv.get_RiotsActive()).."</align>"..
        "\n<align=center><color=#fb3302>Are Riots Ending Soon?</color> : "..tostring(gv.get_RiotsEndingSoon()).."</align>"..
        "\n<align=center><color=#fb3302>Hardcoded Riots Length</color> : 5 Days</align>"..
        "\n<align=center><color=#fb3302>Is Post-Riots Phase On?</color> : "..tostring(gv.get_RiotsAfter()).."</align>"..
        
        "\n\n<align=center><color=#ffe32d>=== INTERNET FAMOUS STREAM LOGS ===</color></align>"..
        "\n<align=center><color=#ffe32d>Total Streams Done</color> : "..gv.streamCount.." times</align>"..
        "\n<align=center><color=#ffe32d>Total Stream Minutes</color> : "..gv.streamedFor.." mins</align>"..
        "\n<align=center><color=#ffe32d>Donation Gross Profit</color> : "..gv.moneyEarnedFromDonations.." $</align>"..
        "\n<align=center><color=#ffe32d>Longest Stream Grinding</color> : "..gv.longestStream.." mins</align>"..
        
        "\n\n<align=center><color=#FF0000>=== ANNALIE'S EXCLUSIVE HALLOWEEN CONTOURS ===</color></align>"..
        "\n<align=center><color=#FF0000>Can Halloween Start?</color> : "..tostring(gv.get_CanHalloweenStart()).."</align>"..
        "\n<align=center><color=#FF0000>Has Android Met Annalie?</color> : "..tostring(gv.get_BotMetAnnalie()).."</align>"..
        "\n<align=center><color=#FF0000>Meds Discount Unlocked</color> : "..(gv.MedicineDiscount * 100).." %</align>"..
        "\n<align=center><color=#FF0000>Is Costume In Inventory?</color> : "..tostring(gv.get_HasHalloweenCostume()).."</align>"..
        "\n<align=center><color=#FF0000>Is Halloween Completed?</color> : "..tostring(gv.get_HalloweenHappened()).."</align>"..
        "\n<align=center><color=#FF0000>Is Event Currently Active?</color> : "..tostring(gv.get_HalloweenActive()).."</align>"..
        "\n<align=center><color=#FF0000>Is Costume Quest Started?</color> : "..tostring(gv.get_HalloweenStarted()).."</align>"..
        
        "\n\n<align=center><color=#00FFA5>=== HIGH PRIESTESS SHANICE & CHURCH FLAGS ===</color></align>"..
        "\n<align=center><color=#00FFA5>Any Holy Ending Done?</color> : "..tostring(gv.get_AnyChurchEndingDone()).."</align>"..
        "\n<align=center><color=#00FFA5>Has Good Church Ending?</color> : "..tostring(gv.get_HasGoodChurchEnding()).."</align>"..
        "\n<align=center><color=#00FFA5>First Night Horror Story?</color> : "..tostring(gv.get_FirstHorrorStoryDialogueHappened()).."</align>"..
        "\n<align=center><color=#00FFA5>Second Night Horror Story?</color> : "..tostring(gv.get_SecondHorrorStoryHappened()).."</align>"..
        "\n<align=center><color=#00FFA5>Zombie Apocalypse Dialogue?</color> : "..tostring(gv.get_ZombieApocalypseDialogueHappened()).."</align>"..
        
        "\n\n<align=center><color=#ffe32d>=== GLOBAL EVACUATION PROTOCOLS ===</color></align>"..
        "\n<align=center>Is Late Game Evac Active? : "..tostring(gv.get_IsLateGame()).."</align>"..
        "\n<align=center><color=#FFA07A>Mrs.Fisher Evacuated to Island</color> : "..tostring(gv.get_IsFisherOnIslandEnding()).."</align>"..
        "\n<align=center><color=#ffe32d>Is EVERYONE Safe on Island?</color> : "..tostring(gv.get_IsEveryoneOnTheIsland()).."</align>"..
        "\n<align=center><color=#00E5FF>Landlord Evacuated to Island</color> : "..tostring(gv.get_IsLandlordOnIslandEnding()).."</align>"..
        "\n<align=center>Britannia Evacuated to Island : "..tostring(gv.get_IsBritanniaOnIslandEnding()).."</align>"..
        "\n<align=center><color=#00FFA5>Shanice & PriestBot on Island</color> : "..tostring(gv.get_IsShaniceAndPriestbotOnIslandEnding()).."</align>"..
        
        "\n\n<align=center><color=#ffe32d>=== GAMING ADDICTION PROFILE ===</color></align>"..
        "\n<align=center><color=#ffe32d>Chess vs Android</color> : Won: "..gv.timesWonChess.." | Lost: "..gv.timesLostChess.."</align>"..
        "\n<align=center><color=#ffe32d>WordChain game</color> : Won: "..gv.timesWonWordChain.." | Lost: "..gv.timesLostWordChain.."</align>"..
        "\n<align=center><color=#ffe32d>OldMaid Cards</color> : Won: "..gv.timesWonOldMaid.." | Lost: "..gv.timesLostOldMaid.." | Ragequits: "..gv.timesRanAwayOldMaid.."</align>"..
        "\n<align=center><color=#00000000></scrollView></color></align>"
    ))
    
    return false
end

itemprefab0.OnUse = OnUse
local item0 = ModUtilities.CreateNewItemAutoAssignId(CurrentModGuid, itemprefab0)
ModUtilities.AddGenericItemToShop('grocery', item0)
end
