menus
addCustomMenuItems: aCustomMenu hand: aHandMorph.

	super addCustomMenuItems: aCustomMenu hand: aHandMorph.
	aCustomMenu add: 'display default' action: #displayDefault.