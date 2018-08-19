#include "oop.h"
CLASS("oo_UI_VITEMS")

	PRIVATE UI_VARIABLE("control", "BACKGROUND_VITEMS");
	PRIVATE UI_VARIABLE("control", "LISTBOX_VITEMS");
	PRIVATE UI_VARIABLE("control", "MainLayer");
	PRIVATE UI_VARIABLE("control", "OOP_MainLayer_100");
	PRIVATE UI_VARIABLE("control", "OOP_StructuredText_105");
	PRIVATE UI_VARIABLE("control", "OOP_SubLayer_101");
	PRIVATE UI_VARIABLE("control", "UI_VITEMS_EXIT");
	PRIVATE UI_VARIABLE("control", "UI_VITEMS_TITLE");
	PRIVATE UI_VARIABLE("display", "Display");

	PUBLIC FUNCTION("display", "constructor"){
		disableSerialization;
		MEMBER("Display", _this);
		MEMBER("MainLayer", _this displayCtrl 100);
		MEMBER("BACKGROUND_VITEMS", _this displayCtrl 106);
		MEMBER("LISTBOX_VITEMS", _this displayCtrl 104);
		MEMBER("OOP_MainLayer_100", _this displayCtrl 100);
		MEMBER("OOP_StructuredText_105", _this displayCtrl 105);
		MEMBER("OOP_SubLayer_101", _this displayCtrl 101);
		MEMBER("UI_VITEMS_EXIT", _this displayCtrl 102);
		MEMBER("UI_VITEMS_TITLE", _this displayCtrl 103);
		MEMBER("Init", nil);
	};
	PUBLIC FUNCTION("", "Init"){
		//Add your content here to init display
		_content = "getContentSerialize" call gui_invtest;
		{
			MEMBER("LISTBOX_VITEMS", nil) lbAdd ((_x select 0) + " - " + (_x select 1));
		}foreach _content;
	};

	PUBLIC FUNCTION("", "btnAction_UI_VITEMS_EXIT") {
		closeDialog 0;
	};

	/*
	*	onLBSelChanged:
	*		The selection in a listbox is changed. The left mouse button has been released and the new selection is fully made.
	*		Returns the control and the selected element index.
	*/
	PUBLIC FUNCTION("array", "onLBSelChanged_LISTBOX_VITEMS") {
		private _control = _this select 0;
		private _index = _this select 1;

		_content = ("getContentSerialize" call gui_invtest) select _index;
		//"name", "description", "category", "price","weight", "owner", "life"
		MEMBER("OOP_StructuredText_105", nil) ctrlSetStructuredText parseText format ["Type: %1<br/>Price: %2<br/>Weight: %3<br/>Owner: %4<br/>Durability: %5<br/>Description: %6<br/>", _content select 2,_content select 3,_content select 4,_content select 5, _content select 6, _content select 1];
	};
	
	PUBLIC FUNCTION("", "getBACKGROUND_VITEMS") FUNC_GETVAR("BACKGROUND_VITEMS");
	PUBLIC FUNCTION("", "getDisplay") FUNC_GETVAR("Display");
	PUBLIC FUNCTION("", "getLISTBOX_VITEMS") FUNC_GETVAR("LISTBOX_VITEMS");
	PUBLIC FUNCTION("", "getMainLayer") FUNC_GETVAR("MainLayer");
	PUBLIC FUNCTION("", "getOOP_MainLayer_100") FUNC_GETVAR("OOP_MainLayer_100");
	PUBLIC FUNCTION("", "getOOP_StructuredText_105") FUNC_GETVAR("OOP_StructuredText_105");
	PUBLIC FUNCTION("", "getOOP_SubLayer_101") FUNC_GETVAR("OOP_SubLayer_101");
	PUBLIC FUNCTION("", "getUI_VITEMS_EXIT") FUNC_GETVAR("UI_VITEMS_EXIT");
	PUBLIC FUNCTION("", "getUI_VITEMS_TITLE") FUNC_GETVAR("UI_VITEMS_TITLE");
	PUBLIC FUNCTION("control", "setBACKGROUND_VITEMS"){ MEMBER("BACKGROUND_VITEMS", _this); };
	PUBLIC FUNCTION("control", "setLISTBOX_VITEMS"){ MEMBER("LISTBOX_VITEMS", _this); };
	PUBLIC FUNCTION("control", "setMainLayer"){ MEMBER("MainLayer", _this); };
	PUBLIC FUNCTION("control", "setOOP_MainLayer_100"){ MEMBER("OOP_MainLayer_100", _this); };
	PUBLIC FUNCTION("control", "setOOP_StructuredText_105"){ MEMBER("OOP_StructuredText_105", _this); };
	PUBLIC FUNCTION("control", "setOOP_SubLayer_101"){ MEMBER("OOP_SubLayer_101", _this); };
	PUBLIC FUNCTION("control", "setUI_VITEMS_EXIT"){ MEMBER("UI_VITEMS_EXIT", _this); };
	PUBLIC FUNCTION("control", "setUI_VITEMS_TITLE"){ MEMBER("UI_VITEMS_TITLE", _this); };
	PUBLIC FUNCTION("display", "setDisplay"){ MEMBER("Display", _this); };
	PUBLIC FUNCTION("", "deconstructor"){
		DELETE_UI_VARIABLE("BACKGROUND_VITEMS");
		DELETE_UI_VARIABLE("LISTBOX_VITEMS");
		DELETE_UI_VARIABLE("MainLayer");
		DELETE_UI_VARIABLE("OOP_MainLayer_100");
		DELETE_UI_VARIABLE("OOP_StructuredText_105");
		DELETE_UI_VARIABLE("OOP_SubLayer_101");
		DELETE_UI_VARIABLE("UI_VITEMS_EXIT");
		DELETE_UI_VARIABLE("UI_VITEMS_TITLE");
		DELETE_UI_VARIABLE("Display");
	};
ENDCLASS;
