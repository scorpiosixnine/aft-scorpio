Scriptname ScorpioAFTQuest extends Quest  

Function EditCurrent(ObjectReference akSpeakerRef)
  TweakFollowerScript aft = pAFTQuest as TweakFollowerScript
  aft.ViewInventory(akSpeakerRef, 1)
endFunction