Scriptname ScorpioAFTQuest extends Quest  

Quest Property pAFTQuest Auto  

Function CheckQuest()
  if !pAFTQuest
    Debug.Notification("Quest Missing")
    Form f = Game.GetFormFromFile(0x12CE,"AmazingFollowerTweaks.esp")
    if f
      Debug.Trace("Found Form")
    endif

    pAFTQuest = f as Quest
    if pAFTQuest
      Debug.Notification("Found Quest")
    endif
  endif
EndFunction

Function EditCurrent(ObjectReference akSpeakerRef)
  Debug.Notification("Edit Current")
  TweakFollowerScript aft = pAFTQuest as TweakFollowerScript
  if aft
    Debug.Notification("Viewing Outfit")
    aft.ViewInventory(akSpeakerRef, 1)
  endif

endFunction