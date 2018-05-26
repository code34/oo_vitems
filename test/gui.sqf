	createDialog "oo_GUI_Vitems";

	lbClear 1500;
	lbClear 1501;
	{
		_index = lbAdd [1500, "getName" call _x];
	} forEach ("getContent" call _inventory);

	{
		_index = lbAdd [1501, "getName" call _x];
	} forEach ("getContent" call _inventory2);

	_index = lbCurSel 1500;
	["moveItem", [_inventory, _inventory2, _index]] call _manager;

	lbClear 1500;
	lbClear 1501;
	{
		_index = lbAdd [1500, "getName" call _x];
	} forEach ("getContent" call _inventory);

	{
		_index = lbAdd [1501, "getName" call _x];
	} forEach ("getContent" call _inventory2);