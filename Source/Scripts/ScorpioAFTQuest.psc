Scriptname ScorpioAFTQuest extends Quest  

Quest Property pAFTQuest  Auto  

Function EditCurrent(ObjectReference akSpeakerRef)
  Debug.Notification("EditCurrent")

  if !pAFTQuest
    Form q = Game.GetFormFromFile(0x12CE,"AmazingFollowerTweaks MCM.esp")
    pAFTQuest = q as Quest
    Debug.Notification("Reset Quest")
  endif

  TweakFollowerScript aft = pAFTQuest as TweakFollowerScript
  if aft
    aft.ViewInventory(akSpeakerRef, 1)
  endif

endFunction