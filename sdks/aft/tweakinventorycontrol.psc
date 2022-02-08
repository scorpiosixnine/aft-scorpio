Scriptname TweakInventoryControl  extends ReferenceAlias

; Not the whole API, just the bits we're using

Int				Property	currentOutfitLocation			Auto ; 0 = standard 1 = city 2 = home : New 1.6

Bool Function IsHomeOutfitInUse()
EndFunction

Bool Function IsCityOutfitInUse()
EndFunction
		
Bool Function IsStandardOutfitInUse()
EndFunction

Function ViewStandard()
EndFunction

Function ViewCity()
EndFunction

Function ViewHome()
EndFunction