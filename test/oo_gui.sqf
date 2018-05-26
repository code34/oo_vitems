#include "oop.h"
CLASS("oo_inventaire")

	PRIVATE UI_VARIABLE("control", "MainLayer");
	PRIVATE UI_VARIABLE("control", "OOP_Button_104");
	PRIVATE UI_VARIABLE("control", "OOP_Button_105");
	PRIVATE UI_VARIABLE("control", "OOP_Button_106");
	PRIVATE UI_VARIABLE("control", "OOP_Button_107");
	PRIVATE UI_VARIABLE("control", "OOP_Listbox_102");
	PRIVATE UI_VARIABLE("control", "OOP_Listbox_103");
	PRIVATE UI_VARIABLE("control", "OOP_MainLayer_100");
	PRIVATE UI_VARIABLE("control", "OOP_SubLayer_101");
	PRIVATE UI_VARIABLE("display", "Display");

	PUBLIC FUNCTION("display", "constructor"){
		disableSerialization;
		MEMBER("Display", _this);
		MEMBER("MainLayer", _this displayCtrl 100);
		MEMBER("OOP_Button_104", _this displayCtrl 104);
		MEMBER("OOP_Button_105", _this displayCtrl 105);
		MEMBER("OOP_Button_106", _this displayCtrl 106);
		MEMBER("OOP_Button_107", _this displayCtrl 107);
		MEMBER("OOP_Listbox_102", _this displayCtrl 102);
		MEMBER("OOP_Listbox_103", _this displayCtrl 103);
		MEMBER("OOP_MainLayer_100", _this displayCtrl 100);
		MEMBER("OOP_SubLayer_101", _this displayCtrl 101);
		MEMBER("Init", nil);
	};
	PUBLIC FUNCTION("", "Init"){
		//Add your content here to init display
	};

	PUBLIC FUNCTION("", "btnAction_OOP_Button_104") {

	};

	PUBLIC FUNCTION("", "btnAction_OOP_Button_105") {

	};

	PUBLIC FUNCTION("", "btnAction_OOP_Button_106") {

	};

	PUBLIC FUNCTION("", "btnAction_OOP_Button_107") {

	};
	PUBLIC FUNCTION("", "getDisplay") FUNC_GETVAR("Display");
	PUBLIC FUNCTION("", "getMainLayer") FUNC_GETVAR("MainLayer");
	PUBLIC FUNCTION("", "getOOP_Button_104") FUNC_GETVAR("OOP_Button_104");
	PUBLIC FUNCTION("", "getOOP_Button_105") FUNC_GETVAR("OOP_Button_105");
	PUBLIC FUNCTION("", "getOOP_Button_106") FUNC_GETVAR("OOP_Button_106");
	PUBLIC FUNCTION("", "getOOP_Button_107") FUNC_GETVAR("OOP_Button_107");
	PUBLIC FUNCTION("", "getOOP_Listbox_102") FUNC_GETVAR("OOP_Listbox_102");
	PUBLIC FUNCTION("", "getOOP_Listbox_103") FUNC_GETVAR("OOP_Listbox_103");
	PUBLIC FUNCTION("", "getOOP_MainLayer_100") FUNC_GETVAR("OOP_MainLayer_100");
	PUBLIC FUNCTION("", "getOOP_SubLayer_101") FUNC_GETVAR("OOP_SubLayer_101");
	PUBLIC FUNCTION("control", "setMainLayer"){ MEMBER("MainLayer", _this); };
	PUBLIC FUNCTION("control", "setOOP_Button_104"){ MEMBER("OOP_Button_104", _this); };
	PUBLIC FUNCTION("control", "setOOP_Button_105"){ MEMBER("OOP_Button_105", _this); };
	PUBLIC FUNCTION("control", "setOOP_Button_106"){ MEMBER("OOP_Button_106", _this); };
	PUBLIC FUNCTION("control", "setOOP_Button_107"){ MEMBER("OOP_Button_107", _this); };
	PUBLIC FUNCTION("control", "setOOP_Listbox_102"){ MEMBER("OOP_Listbox_102", _this); };
	PUBLIC FUNCTION("control", "setOOP_Listbox_103"){ MEMBER("OOP_Listbox_103", _this); };
	PUBLIC FUNCTION("control", "setOOP_MainLayer_100"){ MEMBER("OOP_MainLayer_100", _this); };
	PUBLIC FUNCTION("control", "setOOP_SubLayer_101"){ MEMBER("OOP_SubLayer_101", _this); };
	PUBLIC FUNCTION("display", "setDisplay"){ MEMBER("Display", _this); };
	PUBLIC FUNCTION("", "deconstructor"){
		DELETE_UI_VARIABLE("MainLayer");
		DELETE_UI_VARIABLE("OOP_Button_104");
		DELETE_UI_VARIABLE("OOP_Button_105");
		DELETE_UI_VARIABLE("OOP_Button_106");
		DELETE_UI_VARIABLE("OOP_Button_107");
		DELETE_UI_VARIABLE("OOP_Listbox_102");
		DELETE_UI_VARIABLE("OOP_Listbox_103");
		DELETE_UI_VARIABLE("OOP_MainLayer_100");
		DELETE_UI_VARIABLE("OOP_SubLayer_101");
		DELETE_UI_VARIABLE("Display");
	};
ENDCLASS;
