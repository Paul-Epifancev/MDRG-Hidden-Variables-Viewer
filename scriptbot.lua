do
local itemprefab0 = ModUtilities.CreateItemPrefab()
itemprefab0.Name = "<color=#FF91E5>SEX BOT STATISTICS</color>"
itemprefab0.Description = "<color=#FF91E5>Access your SEX BOT's RAM logs, diagnostic data, and system status reports.</color>"
itemprefab0.Price = 0
itemprefab0.IsStackable = false
itemprefab0.Category = 5

function OnUse(item)
    UiOverlay.CloseUiOverlay()
    
    local currentMoodVal = gv.get_Mood()

    UiOverlay.OkPopup("",(
        "<color=#00000000><align=center><scrollView mode='vertical' style='height: 450px;'></color></align>"..
        "\n<align=center><color=#FF91E5>=== MAIN SEX BOT STATISTICS ===</color></align>"..
        "\n<align=center><color=#FF91E5>Model Name</color> : "..tostring(gv.botName).."</align>"..
        "\n<align=center><color=#00FF00>Mood</color> : "..currentMoodVal.."</align>"..
        "\n<align=center><color=#FF91E5>Lust</color> : "..gv.lust.."</align>"..
        "\n<align=center><color=#FF0000>Longing</color> : "..gv.longing.."</align>"..
        "\n<align=center><color=#00FFA5>Sympathy</color> : "..gv.sympathy.."</align>"..
        "\n<align=center><color=#00E5FF>Inteligence</color> : "..gv.inteligence.."</align>"..
        "\n<align=center><color=#8cc5ef>Is Bot Smart?</color> : "..tostring(gv.get_IsBotSmart()).."</align>"..
        "\n<align=center><color=#ffe32d>Is Bot Awake?</color> : "..tostring(gv.get_IsBotAwake()).."</align>"..
        
        "\n\n<align=center><color=#ffe32d>=== VISUAL STATUS & APPAREL ===</color></align>"..
        "\n<align=center><color=#ffe32d>Is Android Naked?</color> : "..tostring(gv.get_IsNaked()).."</align>"..
        "\n<align=center><color=#ffe32d>Is Wearing Panties?</color> : "..tostring(gv.get_IsWearingPanties()).."</align>"..
        "\n<align=center><color=#ffe32d>Is Wearing Cat Ears?</color> : "..tostring(gv.get_IsWearingCatEars()).."</align>"..
        "\n<align=center><color=#ffe32d>Has Pointy Elf Ears?</color> : "..tostring(gv.get_HasPointyEars()).."</align>"..
        "\n<align=center><color=#ffe32d>Is Wearing Any Clothes?</color> : "..tostring(gv.get_IsWearingAnyClothes()).."</align>"..
        "\n<align=center><color=#ffe32d>Has Annalie's Hairstyle?</color> : "..tostring(gv.get_HasAnnalieHairstyle()).."</align>"..
        "\n<align=center><color=#ffe32d>Has Halloween Witch Hat?</color> : "..tostring(gv.get_HasWitchHat()).."</align>"..
        
        "\n\n<align=center><color=#00FFA5>=== MAINTENANCE & HYGIENE TRACKERS ===</color></align>"..
        "\n<align=center><color=#00FFA5>Total Times Showered</color> : "..gv.get_TimesBotShower().." times</align>"..
        "\n<align=center><color=#00FFA5>Days Since Last Clean</color> : "..gv.get_DaysSinceLastBotClean().." days ("..gv.BotShowerStatus()..")</align>"..
        "\n<align=center><color=#00FFA5>Total Showers Together</color> : "..gv.get_TimesShoweredTogether().." times</align>"..
        
        "\n\n<align=center><color=#FF0000>=== CYBER COOKING CORE ===</color></align>"..
        "\n<align=center><color=#FF0000>Total Dishes Cooked</color> : "..gv.get_CookedDishesCount().." meals</align>"..
        "\n<align=center><color=#FF0000>Perfect Plates (B+ Tier)</color> : "..gv.get_DishesPassedAtLeastBCount().." plates</align>"..
        
        "\n\n<align=center><color=#FF91E5>=== FLUID INJECTION AUDIT (ml / count) ===</color></align>"..
        "\n<align=center><color=#FF91E5>Anal Matrix</color> : "..gv.timesCameInsideAnal.." times ("..gv.mlCameInAss.." ml)</align>"..
        "\n<align=center><color=#FF91E5>Mouth Storage</color> : "..gv.timesCameInMouth.." times ("..gv.mlCameInMouth.." ml)</align>"..
        "\n<align=center><color=#FF91E5>Thighjob Sector</color> : "..gv.timesCameThighjob.." times ("..gv.mlCameFromThighjob.." ml)</align>"..
        "\n<align=center><color=#FF91E5>Vagina Registry</color> : "..gv.timesCameInside.." times ("..gv.mlCameInVagina.." ml)</align>"..
        "\n<align=center><color=#FF91E5>External Waste</color> : "..gv.timesCameOutside.." times ("..gv.mlCameOutside.." ml)</align>"..
        "\n<align=center><color=#FF91E5>Total fluid wasted</color> : "..gv.mlOfCumWasted.." ml</align>"..
        "\n<align=center><color=#FF91E5>Is Spattered with Fluids?</color> : "..tostring(gv.get_IsThereCumOnHer()).."</align>"..
        
        "\n\n<align=center><color=#FF0000>=== INTIMACY & RELATIONSHIP LOGS ===</color></align>"..
        "\n<align=center><color=#FF0000>Ever Had Intimacy?</color> : "..tostring(gv.get_EverFuckedBot()).."</align>"..
        "\n<align=center><color=#FF0000>Orgasms In Last Scene</color> : "..gv.get_TimesAnonCameDuringLastSexScene().." times</align>"..
        "\n<align=center><color=#FF0000>Made Noise Last Scene?</color> : "..tostring(gv.get_MadeNoiseLastSexScene()).."</align>"..
        "\n<align=center><color=#FF0000>Total Orgasm Count (All)</color> : "..gv.get_TimesCameAll().." times</align>"..
        "\n<align=center><color=#FF0000>Ever Came Inside Robot?</color> : "..tostring(gv.get_EverCameInBot()).."</align>"..
        
        "\n\n<align=center><color=#32CD32>=== RECREATIONAL ABILITIES ===</color></align>"..
        "\n<align=center><color=#32CD32>Can Perform Doggy?</color> : "..tostring(gv.get_CanDoDoggy()).."</align>"..
        "\n<align=center><color=#32CD32>Can Perform Blowjob?</color> : "..tostring(gv.get_CanDoBlowjob()).."</align>"..
        "\n<align=center><color=#32CD32>Can Perform Cowgirl?</color> : "..tostring(gv.get_CanDoCowgirl()).."</align>"..
        
        "\n\n<align=center><color=#FF9100>=== SYSTEM HARDWARE INTEGRITY ===</color></align>"..
        "\n<align=center><color=#FF9100>Both Legs?</color> : "..tostring(gv.get_HasBothLegs()).."</align>"..
        "\n<align=center><color=#FF9100>Has All Limbs?</color> : "..tostring(gv.get_HasAllLimbs()).."</align>"..
        "\n<align=center><color=#FF9100>Can Stand Up?</color> : "..tostring(gv.get_CanStand()).."</align>"..
        "\n<align=center><color=#FF9100>Both Arms Intact?</color> : "..tostring(gv.get_HasBothArms()).."</align>"..
        "\n<align=center><color=#FF9100>Bathroom Door Installed?</color> : "..tostring(gv.get_BathroomDoorInstalled()).."</align>"..
        "\n<color=#00000000><align=center></scrollView></color></align>"
    ))
    
    return false
end

itemprefab0.OnUse = OnUse
local item0 = ModUtilities.CreateNewItemAutoAssignId(CurrentModGuid, itemprefab0)
ModUtilities.AddGenericItemToShop('grocery', item0)
end
