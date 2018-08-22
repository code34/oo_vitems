#include "oop.h"
CLASS("oo_UI_VITEMS")

	PRIVATE UI_VARIABLE("control", "BACKGROUND_VITEMS");
	PRIVATE UI_VARIABLE("control", "LISTBOX_VITEMS");
	PRIVATE UI_VARIABLE("control", "MainLayer");
	PRIVATE UI_VARIABLE("control", "OOP_MainLayer_100");
	PRIVATE UI_VARIABLE("control", "OOP_StructuredText_105");
	PRIVATE UI_VARIABLE("control", "OOP_SubLayer_101_0");
	PRIVATE UI_VARIABLE("control", "UI_VITEMS_EXIT");
	PRIVATE UI_VARIABLE("control", "UI_VITEMS_SWITCH");
	PRIVATE UI_VARIABLE("control", "UI_VITEMS_TAKE");
	PRIVATE UI_VARIABLE("control", "UI_VITEMS_TITLE");
	PRIVATE UI_VARIABLE("display", "Display");
	PRIVATE VARIABLE("code", "inventory");
	PRIVATE VARIABLE("string", "mode");

	PUBLIC FUNCTION("display", "constructor"){
		disableSerialization;
		MEMBER("Display", _this);
		MEMBER("MainLayer", _this displayCtrl 100);
		MEMBER("BACKGROUND_VITEMS", _this displayCtrl 102);
		MEMBER("LISTBOX_VITEMS", _this displayCtrl 105);
		MEMBER("OOP_MainLayer_100", _this displayCtrl 100);
		MEMBER("OOP_StructuredText_105", _this displayCtrl 106);
		MEMBER("OOP_SubLayer_101_0", _this displayCtrl 101);
		MEMBER("UI_VITEMS_EXIT", _this displayCtrl 103);
		MEMBER("UI_VITEMS_SWITCH", _this displayCtrl 108);
		MEMBER("UI_VITEMS_TAKE", _this displayCtrl 107);
		MEMBER("UI_VITEMS_TITLE", _this displayCtrl 104);
		MEMBER("Init", nil);
	};
	PUBLIC FUNCTION("", "Init"){
		if (player distance cursorObject > 3) then {
			MEMBER("setMode", "player");
		} else {
			MEMBER("setMode", "object");
		};
		MEMBER("refresh_LISTBOX_VITEMS", nil);
	};

	PUBLIC FUNCTION("", "btnAction_UI_VITEMS_EXIT") {
		closeDialog 0;
	};

	PUBLIC FUNCTION("", "refresh_LISTBOX_VITEMS") {
		lbClear MEMBER("LISTBOX_VITEMS", nil);
		_content = "getContentSerialize" call MEMBER("inventory", nil);
		{
			MEMBER("LISTBOX_VITEMS", nil) lbAdd (_x select 0);
		}foreach _content;
		MEMBER("OOP_StructuredText_105", nil) ctrlSetStructuredText parseText "";
		private _index =  (("countSize" call MEMBER("inventory", nil)) - 1);
		MEMBER("LISTBOX_VITEMS", nil) lbSetCurSel _index;
		//private _index = lbCurSel MEMBER("LISTBOX_VITEMS", nil);
		if (_index > -1) then {
			_content = ("getContentSerialize" call MEMBER("inventory", nil)) select _index;
			MEMBER("OOP_StructuredText_105", nil) ctrlSetStructuredText parseText format ["Type: %1<br/>Price: %2€<br/>Weight: %3Kg<br/>Owner: %4<br/>Durability: %5%<br/>Description: %6<br/>", _content select 2,_content select 3,_content select 4,_content select 5, _content select 6, _content select 1];
		};
	};

	/*
	*	onLBSelChanged:
	*		The selection in a listbox is changed. The left mouse button has been released and the new selection is fully made.
	*		Returns the control and the selected element index.
	*/
	PUBLIC FUNCTION("array", "onLBSelChanged_LISTBOX_VITEMS") {
		private _control = _this select 0;
		private _index = _this select 1;
		if(_index >= ("countSize" call MEMBER("inventory", nil))) exitWith {};
		if(_index > -1) then {
			_content = ("getContentSerialize" call MEMBER("inventory", nil)) select _index;
			//"name", "description", "category", "price","weight", "owner", "life"
			MEMBER("OOP_StructuredText_105", nil) ctrlSetStructuredText parseText format ["Type: %1<br/>Price: %2€<br/>Weight: %3Kg<br/>Owner: %4<br/>Durability: %5%<br/>Description: %6<br/>", _content select 2,_content select 3,_content select 4,_content select 5, _content select 6, _content select 1];
		};
	};

	PUBLIC FUNCTION("", "btnAction_UI_VITEMS_TAKE") {
		private _index = lbCurSel MEMBER("LISTBOX_VITEMS", nil);
		if(_index > -1) then {
			if (MEMBER("mode", nil) isEqualTo "object") then {
				private _inventory = player getVariable "inventory";
				MEMBER("LISTBOX_VITEMS", nil) lbSetCurSel (_index -1);
				private _item = ["getItem", _index] call MEMBER("inventory", nil);
				["addItem", _item] call _inventory;
				MEMBER("refresh_LISTBOX_VITEMS", nil);
			} else {
				private _inventory = cursorObject getVariable "inventory";
				MEMBER("LISTBOX_VITEMS", nil) lbSetCurSel (_index -1);
				private _item = ["getItem", _index] call MEMBER("inventory", nil);
				["addItem", _item] call _inventory;
				MEMBER("refresh_LISTBOX_VITEMS", nil);
			};
		};
	};

	PUBLIC FUNCTION("string", "setMode") {
		private _mode = _this;
		switch (_mode) do { 
			case "object" : {
				_inventory = cursorObject getVariable["inventory",""];
				if (_inventory isEqualTo "") then {
					_inventory = "new" call OO_CONTAINER;
				};
				_weight = "countWeight" call _inventory;
				_size = "countSize" call _inventory;
				_limitsize = "getLimitSize" call _inventory;
				_limitweight = "getLimitWeight" call _inventory;
				MEMBER("UI_VITEMS_TITLE", nil) ctrlSetText format["Object inventory | size: %1/%2 | weight: %3/%4", _size, _limitsize, _weight, _limitweight];
				MEMBER("UI_VITEMS_TITLE", nil) ctrlSetBackgroundColor [0.88,0.6,0,1];
				MEMBER("UI_VITEMS_TAKE", nil) ctrlSetText "Take";
				MEMBER("inventory", _inventory);
				MEMBER("mode", "object");
			}; 
			default {
				_inventory = player getVariable["inventory",""];
				_weight = "countWeight" call _inventory;
				_size = "countSize" call _inventory;
				_limitsize = "getLimitSize" call _inventory;
				_limitweight = "getLimitWeight" call _inventory;
				MEMBER("UI_VITEMS_TITLE", nil) ctrlSetText format ["%1 inventory | size: %2/%3 | weight: %4/%5", name player, _size, _limitsize, _weight, _limitweight];
				MEMBER("UI_VITEMS_TITLE", nil) ctrlSetBackgroundColor [0.1,0.38,0.04,1];
				MEMBER("UI_VITEMS_TAKE", nil) ctrlSetText "Drop";
				MEMBER("inventory", _inventory);
				MEMBER("mode", "player");
			};
		};
	};

	PUBLIC FUNCTION("", "btnAction_UI_VITEMS_SWITCH") {
		if(MEMBER("mode", nil) isEqualTo "player") then {
			if (player distance cursorObject < 4) then { MEMBER("setMode", "object"); };
		} else{
			MEMBER("setMode", "player");
		};
		MEMBER("refresh_LISTBOX_VITEMS", nil);
	};

	PUBLIC FUNCTION("", "getBACKGROUND_VITEMS") FUNC_GETVAR("BACKGROUND_VITEMS");
	PUBLIC FUNCTION("", "getDisplay") FUNC_GETVAR("Display");
	PUBLIC FUNCTION("", "getLISTBOX_VITEMS") FUNC_GETVAR("LISTBOX_VITEMS");
	PUBLIC FUNCTION("", "getMainLayer") FUNC_GETVAR("MainLayer");
	PUBLIC FUNCTION("", "getOOP_MainLayer_100") FUNC_GETVAR("OOP_MainLayer_100");
	PUBLIC FUNCTION("", "getOOP_StructuredText_105") FUNC_GETVAR("OOP_StructuredText_105");
	PUBLIC FUNCTION("", "getOOP_SubLayer_101_0") FUNC_GETVAR("OOP_SubLayer_101_0");
	PUBLIC FUNCTION("", "getUI_VITEMS_EXIT") FUNC_GETVAR("UI_VITEMS_EXIT");
	PUBLIC FUNCTION("", "getUI_VITEMS_SWITCH") FUNC_GETVAR("UI_VITEMS_SWITCH");
	PUBLIC FUNCTION("", "getUI_VITEMS_TAKE") FUNC_GETVAR("UI_VITEMS_TAKE");
	PUBLIC FUNCTION("", "getUI_VITEMS_TITLE") FUNC_GETVAR("UI_VITEMS_TITLE");
	PUBLIC FUNCTION("control", "setBACKGROUND_VITEMS"){ MEMBER("BACKGROUND_VITEMS", _this); };
	PUBLIC FUNCTION("control", "setLISTBOX_VITEMS"){ MEMBER("LISTBOX_VITEMS", _this); };
	PUBLIC FUNCTION("control", "setMainLayer"){ MEMBER("MainLayer", _this); };
	PUBLIC FUNCTION("control", "setOOP_MainLayer_100"){ MEMBER("OOP_MainLayer_100", _this); };
	PUBLIC FUNCTION("control", "setOOP_StructuredText_105"){ MEMBER("OOP_StructuredText_105", _this); };
	PUBLIC FUNCTION("control", "setOOP_SubLayer_101_0"){ MEMBER("OOP_SubLayer_101_0", _this); };
	PUBLIC FUNCTION("control", "setUI_VITEMS_EXIT"){ MEMBER("UI_VITEMS_EXIT", _this); };
	PUBLIC FUNCTION("control", "setUI_VITEMS_SWITCH"){ MEMBER("UI_VITEMS_SWITCH", _this); };
	PUBLIC FUNCTION("control", "setUI_VITEMS_TAKE"){ MEMBER("UI_VITEMS_TAKE", _this); };
	PUBLIC FUNCTION("control", "setUI_VITEMS_TITLE"){ MEMBER("UI_VITEMS_TITLE", _this); };
	PUBLIC FUNCTION("display", "setDisplay"){ MEMBER("Display", _this); };
	PUBLIC FUNCTION("", "deconstructor"){
		DELETE_UI_VARIABLE("BACKGROUND_VITEMS");
		DELETE_UI_VARIABLE("LISTBOX_VITEMS");
		DELETE_UI_VARIABLE("MainLayer");
		DELETE_UI_VARIABLE("OOP_MainLayer_100");
		DELETE_UI_VARIABLE("OOP_StructuredText_105");
		DELETE_UI_VARIABLE("OOP_SubLayer_101_0");
		DELETE_UI_VARIABLE("UI_VITEMS_EXIT");
		DELETE_UI_VARIABLE("UI_VITEMS_SWITCH");
		DELETE_UI_VARIABLE("UI_VITEMS_TAKE");
		DELETE_UI_VARIABLE("UI_VITEMS_TITLE");
		DELETE_UI_VARIABLE("Display");
	};
ENDCLASS;
