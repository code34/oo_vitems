class UI_VITEMS {
	idd = 10001;
	name= "UI_VITEMS";
	movingEnable = false;
	enableSimulation = true;
	onLoad = "with missionNamespace do{UI_VITEMS = ['new', _this select 0] call oo_UI_VITEMS;};";
	onUnload = "with missionNamespace do{['delete',UI_VITEMS] call oo_UI_VITEMS;};";
	class controlsBackground {
		class OOP_MainLayer_100_100 : OOP_MainLayer {
			idc = 100;
			x = -37.9208 * pixelGrid * pixelW;
			y = -13 * pixelGrid * pixelH;
			w = 159.675 * pixelGrid * pixelW;
			h = 86.6667 * pixelGrid * pixelH;
			class controls{
				class OOP_SubLayer_101_101 : OOP_SubLayer {
					idc = 101;
					x = 33.9309 * pixelGrid * pixelW;
					y = 17.3333 * pixelGrid * pixelH;
					w = 101.793 * pixelGrid * pixelW;
					h = 58.9334 * pixelGrid * pixelH;
					class controls{
						class BACKGROUND_VITEMS_106: OOP_Text {
							idc = 106;
							x = 0.2515 * pixelGrid * pixelW;
							y = 5.2 * pixelGrid * pixelH;
							w = 101.541 * pixelGrid * pixelW;
							h = 53.7333 * pixelGrid * pixelH;
							colorBackground[] = {0, 0, 0, 0.78};
							text = "";
						};
						class UI_VITEMS_EXIT_102: OOP_Button {
							idc = 102;
							x = 81.8334 * pixelGrid * pixelW;
							y = 53.7333 * pixelGrid * pixelH;
							w = 15.9675 * pixelGrid * pixelW;
							h = 3.46667 * pixelGrid * pixelH;
							text = "Exit";
							action = "'btnAction_UI_VITEMS_EXIT' call UI_VITEMS;";
						};
						class UI_VITEMS_TITLE_103: OOP_Text {
							idc = 103;
							x = 0.2515 * pixelGrid * pixelW;
							y = 0.182 * pixelGrid * pixelH;
							w = 101.541 * pixelGrid * pixelW;
							h = 5.018 * pixelGrid * pixelH;
							text = "Virtual Inventory";
							colorText[] = {1, 1, 1, 1};
							colorBackground[] = {0.1, 0.38, 0.04, 1};
							colorForeground[] = {0, 0.3, 0, 1};
							tooltipColorText[] = {1, 1, 1, 1};
						};
						class LISTBOX_VITEMS_104: OOP_Listbox {
							idc = 104;
							x = 1.99594 * pixelGrid * pixelW;
							y = 6.93333 * pixelGrid * pixelH;
							w = 31.935 * pixelGrid * pixelW;
							h = 45.0667 * pixelGrid * pixelH;
							onLBSelChanged = "['onLBSelChanged_LISTBOX_VITEMS', _this] call UI_VITEMS;";
						};
						class OOP_StructuredText_105_105: OOP_StructuredText {
							idc = 105;
							x = 37.9228 * pixelGrid * pixelW;
							y = 6.93333 * pixelGrid * pixelH;
							w = 59.8781 * pixelGrid * pixelW;
							h = 45.0667 * pixelGrid * pixelH;
							text = "";
							size = 0.04;
						};
					};
				};
			};
		};
	};
	class controls {};
};

/*
["UI_VITEMS",10001,[[[["33.9309 * pixelGrid * pixelW","17.3333 * pixelGrid * pixelH","101.793 * pixelGrid * pixelW","58.9334 * pixelGrid * pixelH"],"","OOP_SubLayer_101","","OOP_SubLayer",true,[],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1]],[[[["0.2515 * pixelGrid * pixelW","5.2 * pixelGrid * pixelH","101.541 * pixelGrid * pixelW","53.7333 * pixelGrid * pixelH"],"","BACKGROUND_VITEMS","","OOP_Text",true,[],[-1,-1,-1,-1],[0,0,0,0.78],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1]]],[[["81.8334 * pixelGrid * pixelW","53.7333 * pixelGrid * pixelH","15.9675 * pixelGrid * pixelW","3.46667 * pixelGrid * pixelH"],"Exit","UI_VITEMS_EXIT","","OOP_Button",true,[],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1]]],[[["0.2515 * pixelGrid * pixelW","0.182 * pixelGrid * pixelH","101.541 * pixelGrid * pixelW","5.018 * pixelGrid * pixelH"],"Inventory","UI_VITEMS_TITLE","","OOP_Text",true,[],[1,1,1,1],[0.1,0.38,0.04,1],[0,0.3,0,1],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1]]],[[["1.99594 * pixelGrid * pixelW","6.93333 * pixelGrid * pixelH","31.935 * pixelGrid * pixelW","45.0667 * pixelGrid * pixelH"],"","LISTBOX_VITEMS","","OOP_Listbox",true,["onLBSelChanged"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1]]],[[["37.9228 * pixelGrid * pixelW","6.93333 * pixelGrid * pixelH","59.8781 * pixelGrid * pixelW","45.0667 * pixelGrid * pixelH"],"text","OOP_StructuredText_105","","OOP_StructuredText",true,[],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1]]]]]]]
*/