class Vitems {
	idd = 1000;
	name= "Vitems";
	movingEnable = false;
	enableSimulation = true;
	onLoad = "with missionNamespace do{Vitems = ['new', _this select 0] call oo_Vitems;};";
	onUnload = "with missionNamespace do{['delete',Vitems] call oo_Vitems;};";
	class controlsBackground {
		class OOP_MainLayer_100_100 : OOP_MainLayer {
			idc = 100;
			x = -37.9208 * pixelGrid * pixelW;
			y = -13 * pixelGrid * pixelH;
			w = 159.675 * pixelGrid * pixelW;
			h = 86.6667 * pixelGrid * pixelH;
			onLBDrop = "['dragDrop', _this] call VITEMS;";
			class controls{
				class OOP_Text_Fond_101: OOP_Text {
					idc = 101;
					x = 35.9269 * pixelGrid * pixelW;
					y = 17.3333 * pixelGrid * pixelH;
					w = 89.8172 * pixelGrid * pixelW;
					h = 52 * pixelGrid * pixelH;
					text = "";
					colorBackground[] = {0, 0, 0, 0.80};
				};
				class OOP_Listbox_Proximity_102: OOP_Listbox {
					idc = 102;
					x = 37.9228 * pixelGrid * pixelW;
					y = 20.8 * pixelGrid * pixelH;
					w = 23.9513 * pixelGrid * pixelW;
					h = 31.2 * pixelGrid * pixelH;
					canDrag = 1;
					onLBDragging = "['setDestination', _this] call VITEMS";
					onLBDrag = "['setSource', _this] call VITEMS";
				};
				class OOP_Listbox_Capacities_103: OOP_Listbox {
					idc = 103;
					x = 63.87 * pixelGrid * pixelW;
					y = 20.8 * pixelGrid * pixelH;
					w = 23.9513 * pixelGrid * pixelW;
					h = 31.2 * pixelGrid * pixelH;
					canDrag = 1;
					onLBDragging = "['setDestination', _this] call VITEMS";
					onLBDrag = "['setSource', _this] call VITEMS";
				};
				class OOP_Text_Description_104: OOP_Text {
					idc = 104;
					x = 37.9228 * pixelGrid * pixelW;
					y = 53.7333 * pixelGrid * pixelH;
					w = 49.8984 * pixelGrid * pixelW;
					h = 13.8667 * pixelGrid * pixelH;
					text = "";
					colorBackground[] = {0, 0.3, 0, 0.21};
				};
				class OOP_Text_proximity_105: OOP_Text {
					idc = 105;
					x = 37.9228 * pixelGrid * pixelW;
					y = 19.0667 * pixelGrid * pixelH;
					w = 9.97969 * pixelGrid * pixelW;
					h = 1.73333 * pixelGrid * pixelH;
					text = "Proximity";
					colorBackground[] = {0, 0, 0, 0.2};
				};
				class OOP_Text_Capacities_106: OOP_Text {
					idc = 106;
					x = 63.87 * pixelGrid * pixelW;
					y = 19.0667 * pixelGrid * pixelH;
					w = 9.97969 * pixelGrid * pixelW;
					h = 1.73333 * pixelGrid * pixelH;
					text = "Capacities";
					colorBackground[] = {0, 0, 0, 0.2};
				};
				class OOP_Text_Inventory_107: OOP_Text {
					idc = 107;
					x = 35.9269 * pixelGrid * pixelW;
					y = 13.8667 * pixelGrid * pixelH;
					w = 25.9472 * pixelGrid * pixelW;
					h = 3.46667 * pixelGrid * pixelH;
					text = "Inventory";
					colorBackground[] = {0, 0.3, 0, 1};
				};
			};
		};
	};
	class controls {};
};

/*
["Vitems",1000,[[[["35.9269 * pixelGrid * pixelW","17.3333 * pixelGrid * pixelH","89.8172 * pixelGrid * pixelW","52 * pixelGrid * pixelH"],"text","OOP_Text_Fond","","OOP_Text",true,[],[-1,-1,-1,-1],[0,0,0,0.21],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1]]],[[["37.9228 * pixelGrid * pixelW","20.8 * pixelGrid * pixelH","23.9513 * pixelGrid * pixelW","31.2 * pixelGrid * pixelH"],"","OOP_Listbox_Proximity","","OOP_Listbox",true,[],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1]]],[[["63.87 * pixelGrid * pixelW","20.8 * pixelGrid * pixelH","23.9513 * pixelGrid * pixelW","31.2 * pixelGrid * pixelH"],"","OOP_Listbox_Capacities","","OOP_Listbox",true,[],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1]]],[[["37.9228 * pixelGrid * pixelW","53.7333 * pixelGrid * pixelH","49.8984 * pixelGrid * pixelW","13.8667 * pixelGrid * pixelH"],"text","OOP_Text_Description","","OOP_Text",true,[],[-1,-1,-1,-1],[0,0.3,0,0.21],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1]]],[[["37.9228 * pixelGrid * pixelW","19.0667 * pixelGrid * pixelH","9.97969 * pixelGrid * pixelW","1.73333 * pixelGrid * pixelH"],"Proximity","OOP_Text_proximity","","OOP_Text",true,[],[-1,-1,-1,-1],[0,0,0,0.2],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1]]],[[["63.87 * pixelGrid * pixelW","19.0667 * pixelGrid * pixelH","9.97969 * pixelGrid * pixelW","1.73333 * pixelGrid * pixelH"],"Capacities","OOP_Text_Capacities","","OOP_Text",true,[],[-1,-1,-1,-1],[0,0,0,0.2],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1]]],[[["35.9269 * pixelGrid * pixelW","13.8667 * pixelGrid * pixelH","25.9472 * pixelGrid * pixelW","3.46667 * pixelGrid * pixelH"],"Inventory","OOP_Text_Inventory","","OOP_Text",true,[],[-1,-1,-1,-1],[0,0.3,0,1],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1]]]]]
*/
