Scriptname ScorpioAFTQuest extends Quest  

Quest Property pAFTQuest Auto  

Function CheckQuest()
  if !pAFTQuest
    Debug("AFT Quest Missing")
    pAFTQuest = Game.GetFormFromFile(0x12CE,"AmazingFollowerTweaks.esp") as Quest
    if pAFTQuest
      Debug("Found AFT Quest")
    endif
  endif
EndFunction

Function EditCurrent(ObjectReference akSpeakerRef)
  pDebugMode = true

  TweakFollowerScript aft = pAFTQuest as TweakFollowerScript
  if aft
    TweakInventoryControl control = aft.findAlias(akSpeakerRef) as TweakInventoryControl
    if control
      if control.IsHomeOutfitInUse()
        Debug("Viewing Home")
        control.ViewHome()
      elseif control.IsCityOutfitInUse()
        Debug("Viewing City")
        control.ViewCity()
      elseif control.IsStandardOutfitInUse()
        Debug("Viewing Standard")
        control.ViewStandard()
      endif
    endif
  endif

endFunction