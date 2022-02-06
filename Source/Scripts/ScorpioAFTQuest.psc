Scriptname ScorpioAFTQuest extends Quest  

Quest Property pAFTQuest  Auto  

Function EditCurrent(ObjectReference akSpeakerRef)
  TweakFollowerScript aft = pAFTQuest as TweakFollowerScript
  aft.ViewInventory(akSpeakerRef, 1)
endFunction