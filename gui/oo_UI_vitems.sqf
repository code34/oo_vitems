#include "..\oop.h"
CLASS("oo_UI_VITEMS")

	PRIVATE UI_VARIABLE("control", "MainLayer");
	PRIVATE UI_VARIABLE("control", "OOP_Listbox_102");
	PRIVATE UI_VARIABLE("control", "OOP_MainLayer_100");
	PRIVATE UI_VARIABLE("control", "OOP_SubLayer_101");
	PRIVATE UI_VARIABLE("control", "OOP_TextMulti_103");
	PRIVATE UI_VARIABLE("control", "UI_VITEMS_DROP");
	PRIVATE UI_VARIABLE("control", "UI_VITEMS_EXIT");
	PRIVATE UI_VARIABLE("display", "Display");

	PUBLIC FUNCTION("display", "constructor"){
		disableSerialization;
		MEMBER("Display", _this);
		MEMBER("MainLayer", _this displayCtrl 100);
		MEMBER("OOP_Listbox_102", _this displayCtrl 102);
		MEMBER("OOP_MainLayer_100", _this displayCtrl 100);
		MEMBER("OOP_SubLayer_101", _this displayCtrl 101);
		MEMBER("OOP_TextMulti_103", _this displayCtrl 103);
		MEMBER("UI_VITEMS_DROP", _this displayCtrl 105);
		MEMBER("UI_VITEMS_EXIT", _this displayCtrl 104);
		MEMBER("Init", nil);
	};
	PUBLIC FUNCTION("", "Init"){
		//Add your content here to init display
		_content = "getContentSerialize" call gui_invtest;
		{
			MEMBER("OOP_Listbox_102", nil) lbAdd ((_x select 0) + " - " + (_x select 1));
		}foreach _content;
		MEMBER("OOP_TextMulti_103", nil) ctrlSetStructuredText parseText format ["Poid: %1<br/>Prix: %2<br/>", 10,10];
	};

	PUBLIC FUNCTION("", "btnAction_UI_VITEMS_EXIT") {

	};

	PUBLIC FUNCTION("", "btnAction_UI_VITEMS_DROP") {

	};
	PUBLIC FUNCTION("", "getDisplay") FUNC_GETVAR("Display");
	PUBLIC FUNCTION("", "getMainLayer") FUNC_GETVAR("MainLayer");
	PUBLIC FUNCTION("", "getOOP_Listbox_102") FUNC_GETVAR("OOP_Listbox_102");
	PUBLIC FUNCTION("", "getOOP_MainLayer_100") FUNC_GETVAR("OOP_MainLayer_100");
	PUBLIC FUNCTION("", "getOOP_SubLayer_101") FUNC_GETVAR("OOP_SubLayer_101");
	PUBLIC FUNCTION("", "getOOP_TextMulti_103") FUNC_GETVAR("OOP_TextMulti_103");
	PUBLIC FUNCTION("", "getUI_VITEMS_DROP") FUNC_GETVAR("UI_VITEMS_DROP");
	PUBLIC FUNCTION("", "getUI_VITEMS_EXIT") FUNC_GETVAR("UI_VITEMS_EXIT");
	PUBLIC FUNCTION("control", "setMainLayer"){ MEMBER("MainLayer", _this); };
	PUBLIC FUNCTION("control", "setOOP_Listbox_102"){ MEMBER("OOP_Listbox_102", _this); };
	PUBLIC FUNCTION("control", "setOOP_MainLayer_100"){ MEMBER("OOP_MainLayer_100", _this); };
	PUBLIC FUNCTION("control", "setOOP_SubLayer_101"){ MEMBER("OOP_SubLayer_101", _this); };
	PUBLIC FUNCTION("control", "setOOP_TextMulti_103"){ MEMBER("OOP_TextMulti_103", _this); };
	PUBLIC FUNCTION("control", "setUI_VITEMS_DROP"){ MEMBER("UI_VITEMS_DROP", _this); };
	PUBLIC FUNCTION("control", "setUI_VITEMS_EXIT"){ MEMBER("UI_VITEMS_EXIT", _this); };
	PUBLIC FUNCTION("display", "setDisplay"){ MEMBER("Display", _this); };
	PUBLIC FUNCTION("", "deconstructor"){
		DELETE_UI_VARIABLE("MainLayer");
		DELETE_UI_VARIABLE("OOP_Listbox_102");
		DELETE_UI_VARIABLE("OOP_MainLayer_100");
		DELETE_UI_VARIABLE("OOP_SubLayer_101");
		DELETE_UI_VARIABLE("OOP_TextMulti_103");
		DELETE_UI_VARIABLE("UI_VITEMS_DROP");
		DELETE_UI_VARIABLE("UI_VITEMS_EXIT");
		DELETE_UI_VARIABLE("Display");
	};
ENDCLASS;
