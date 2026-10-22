do
local itemprefab0 = ModUtilities.CreateItemPrefab()

itemprefab0.Name = "<color=#00E5FF>PLAYER STATISTICS</color>"
itemprefab0.Description = "<color=#00E5FF>Access core database logs and player diagnostics.</color>"
itemprefab0.Price = 0
itemprefab0.IsStackable = false
itemprefab0.Category = 5

function OnUse(item)
    UiOverlay.CloseUiOverlay()
    
    local currentHealthVal = gv.get_Health()
    local currentSearchVal = gv.search
    
    local searchStatus = "Clear"
    if currentSearchVal > 0 then
        searchStatus = "Chased"
    end
    
    UiOverlay.OkPopup("",(
        "<color=#00000000><align=center><scrollView mode='vertical' style='height: 450px;'></color></align>"..
        "\n<align=center><color=#00E5FF>=== PLAYER STATISTICS ===</color></align>"..
        "\n<align=center><color=#00E5FF>User ID</color> : "..tostring(gv.playerName).."</align>"..
        "\n<align=center><color=#FF6A00>Wallet Status</color> : "..gv.money.."</align>"..
        "\n<align=center><color=#FF6A00>Casino Tokens</color> : "..gv.casinoTokens.."</align>"..
        "\n<align=center><color=#FF6A00>Paid Stream Subs</color> : "..gv.subs.." simps</align>"..
        "\n<align=center><color=#FF6A00>Free Stream Followers</color> : "..gv.followers.." people</align>"..
        "\n<align=center><color=#FF0055>Police Database Registry</color> : "..searchStatus.."</align>"..
        "\n<align=center><color=#FF0055>Cops Search Level</color> : "..currentSearchVal.."</align>"..
        "\n<align=center><color=#C300FF>The federal sweeps lose your signal. For now, the apartment is safe</color>"..
        
        "\n\n<align=center><color=#00E5FF>=== VITAL MEAT SACK STATS ===</color></align>"..
        "\n<align=center><color=#8cc5ef>Mental Health</color> : "..gv.get_MentalHealth().."</align>"..
        "\n<align=center><color=#ffe32d>Energy Stamina</color> : "..gv.get_Stamina().."</align>"..
        "\n<align=center><color=#f55785>Physical Health</color> : "..currentHealthVal.."</align>"..
        "\n<align=center><color=#FF6A00>Time Awake</color> : "..gv.get_AwakeFor().." mins</align>"..
        "\n<align=center><color=#ffe32d>Is Out of Stamina?</color> : "..tostring(gv.get_IsOutOfStamina()).."</align>"..
        "\n<align=center><color=#ce0b4f>Stomach Satiation</color> : "..gv.get_Satiation().." ("..tostring(gv.SatiationStatus())..")</align>"..
        "\n<align=center><color=#8cc5ef>MentalHealth Temporary</color> : "..gv.mentalHealthTemporary.."</align>"..
        "\n<align=center><color=#00FFA5>Days Since Last Shower</color> : "..gv.get_DaysSinceLastAnonsShower().." days ("..tostring(gv.AnonShowerStatus())..")</align>"..
        
        "\n\n<align=center><color=#FF91E5>=== BIOLOGICAL TANK & ACTIVITY CONTOURS ===</color></align>"..
        "\n<align=center><color=#FF91E5>Remaining Fluid</color> : "..gv.get_RemainingCum().." ("..tostring(gv.CumStatus())..")</align>"..
        "\n<align=center><color=#FF91E5>Max Fluid Capacity</color> : "..gv.get_MaxCum().."</align>"..
        "\n<align=center><color=#FF91E5>Safe To Start Long Activity?</color> : "..tostring(gv.get_IsItSafeToStartLongActivity()).."</align>"..
        "\n<align=center><color=#FF91E5>Enough Stamina For Long Activity?</color> : "..tostring(gv.get_EnoughStaminaForLongActivity()).."</align>"..
        
        "\n\n<align=center><color=#00FFA5>=== HIGH PRIESTESS SHANICE & HOLY RECORDS ===</color></align>"..
        "\n<align=center><color=#00FFA5>PriestBot Points</color> : "..gv.priestBotPoints.."</align>"..
        "\n<align=center><color=#00FFA5>Church Visits</color> : "..gv.timesWentToChurch.." times</align>"..
        "\n<align=center><color=#00FFA5>Can Take Shanice To Show?</color> : "..tostring(gv.get_CanTakeShaniceToShow()).."</align>"..
        "\n<align=center><color=#00FFA5>High Priestess Shanice Points</color> : "..gv.nunPoints.."</align>"..
        
        "\n\n<align=center><color=#FFA07A>=== MISS FISHER'S CONTRACTS ===</color></align>"..
        "\n<align=center><color=#FFA07A>Total Fish Extracted</color> : "..gv.FishesCaught.." units</align>"..
        "\n<align=center><color=#FFA07A>Can Take Mrs.Fisher To Show?</color> : "..tostring(gv.get_CanTakeFisherToShow()).."</align>"..
        "\n<align=center><color=#FFA07A>Rare Unique Species Caught</color> : "..gv.get_DifferentFishesCaught().." types</align>"..
        
        "\n\n<align=center><color=#00E5FF>=== APARTMENT & LANDLORD HELL ===</color></align>"..
        "\n<align=center><color=#00E5FF>Weekly Rent Bill</color> : "..gv.get_WeeklyRent().."</align>"..
        "\n<align=center><color=#00E5FF>Is Rent Due Today?</color> : "..tostring(gv.get_IsRentDue()).."</align>"..
        "\n<align=center><color=#00E5FF>Is Rent Overdue?</color> : "..tostring(gv.get_IsAboveADayLateOnRent()).."</align>"..
        "\n<align=center><color=#00E5FF>Next Discovery Penalty</color> : +"..gv.get_BotDiscoveryRentIncreaseValue().."</align>"..
        
        "\n\n<align=center><color=#FF0000>=== ANNALIE'S BOUTIQUE AUDIT ===</color></align>"..
        "\n<align=center><color=#FF0000>Cash Wasted At Annalie's</color> : "..gv.get_MoneySpentOnClothes().."</align>"..
        "\n<align=center><color=#FF0000>Total Boutique Items Bought</color> : "..gv.get_ClothierItemsBought().." units</align>"..
        "\n<align=center><color=#00000000></scrollView></color></align>"
    ))
    
    return false
end

itemprefab0.OnUse = OnUse
local item0 = ModUtilities.CreateNewItemAutoAssignId(CurrentModGuid, itemprefab0)
ModUtilities.AddGenericItemToShop('grocery', item0)
end
