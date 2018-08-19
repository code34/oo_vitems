	if (player distance cursorObject > 3) exitWith { hint "You are too far of object"; };

	_inventory = cursorObject getVariable["inventory",""];
	if (_inventory isEqualTo "") then {
		_inventory = "new" call OO_CONTAINER;
	};
	gui_invtest = _inventory;

	createDialog "UI_VITEMS";