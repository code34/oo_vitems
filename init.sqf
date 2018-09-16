	/*
	Author: code34 nicolas_boiteux@yahoo.fr
	Copyright (C) 2018 Nicolas BOITEUX

	This program is free software: you can redistribute it and/or modify
	it under the terms of the GNU General Public License as published by
	the Free Software Foundation, either version 3 of the License, or
	(at your option) any later version.
	
	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.
	
	You should have received a copy of the GNU General Public License
	along with this program.  If not, see <http://www.gnu.org/licenses/>. 
	*/

	call compile preprocessFileLineNumbers "vitems\oo_container.sqf";
	call compile preprocessFileLineNumbers "vitems\oo_randomstuff.sqf";

	_bottleusecode = { hint "You drink all the bottle. You fill very sick and finaly you die."; player setDamage 1;true;};
	_c4usecode = { hint "C4 was armed"; _c4 = "DemoCharge_Remote_Ammo_Scripted" createVehicle position _this; _c4 attachTo [_this, [0,0,0]]; 	_c4 spawn { sleep 10; _this setDamage 1; };true;};
	_lighterusecode = { skipTime 12;true;};
	_bandageusecode = { _this setDamage ((getDammage _this) - 0.2);true;};
	_wheelusecode = { if (_this isKindOf "Car") then { hint "You repair the Wheel"; player playActionNow "PutDown"; _this setDamage 0; true;} else { false;};};
	_wrenchusecode = { if (_this isKindOf "Car") then { hint "Repairing ..."; player playActionNow "PutDown"; _this setDamage 0; true;} else { false;};};
	_briefcaseusecode = { if((_this getVariable ["name", ""]) isEqualTo "jacksonbro") then {	hint "Thank you Soldier! You just save the world"; true; } else {	hint "You tried to open the briefcase but destroy the content";true;};	};

	private _list = [
			["Spare wheel","a deflated spare wheel","tools",5,10,"Unknown",1, _wheelusecode],
			["Coin","A XX century coin","money",5,0.1,"Food MetalX",-1, {true}],
			["Duck","a duck really alive with 3 legs","animal",10,5,"Bloodycoal",5, {true}],
			["GPS tracer","A tracer gps that could be useful to us. The source of energy is a mystery.","tools",20,0.1,"Unknown",-1, {true}],
			["Lighter", "a lighter that will allow you to light campfires quickly. This object is not waterproof","object",5,0.1,"LyLKaay",5, _lighterusecode],
			["A cloth bandage","A cloth bandage that will allow you to stop bleeding quickly","food",0,0.1,"Unknown",1, _bandageusecode],
			["Adjustable wrench","a wrench that allows you to make the most basic repairs","tools",2,1,"Unknown",10, _wrenchusecode],
			["A figurine of mia kalifa","A figure of mia kalifa completely naked. She had, in all appearances, forgotten the whole epilation.","art",35,2,"Netarion",-1, {true}]
		];

		_stuff = "new" call OO_RANDOMSTUFF;
		["setStuff", _list] call _stuff;

		_list = [
			["Explosive C4", "A small amount of explosive that could allow you to spend a pleasant moment during this day. To use with precautions all the same", "ammo", 150, 5,"Unknown", 1, _c4usecode],
			["Mission plan #1425146", "Secret Defense - This information should not be disclosed to the enemy - Bring in sector c124535 the contents of this briefcase. Ask for colonel Jackson Bro", "paper", 0,0.1, "HQ",-1, {true}],
			["A little briefcase", "a small black leather briefcase quite light. It is locked with an electronic code.It is impossible to open it without destroying its contents","object",0,1,"Unknown", 1, _briefcaseusecode]
		];
		["setMilitary", _list] call _stuff;

		_list = [
			["Bottle","An water bottle","food",1,0.3,"Redcolision41",1, _bottleusecode],
			["Potatoe","A vulgar potato damaged","food",2,0.5,"Captain_A",1, {true}],
			["Tin can Maxigaz","All you need protein to spend a good afternoon in the sun","food",10,0.2,"Unknown",2, {true}]
		];
		["setFood", _list] call _stuff;