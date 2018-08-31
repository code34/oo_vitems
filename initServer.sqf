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

	call compile preprocessFileLineNumbers "bme\oo_bme.sqf";
	call compile preprocessFileLineNumbers "vitems\oo_item.sqf";
	call compile preprocessFileLineNumbers "vitems\oo_container.sqf";
	call compile preprocessFileLineNumbers "vitems\oo_manager.sqf";

	_inventory = ["new", box] call OO_CONTAINER;
	_inventory2 = ["new", wardrobe] call OO_CONTAINER;
	_inventory3 = ["new", uaz] call OO_CONTAINER;
	_inventory4 = ["new", workbench] call OO_CONTAINER;
	_manager = "new" call OO_MANAGER;

	// proposition
	["setProperties", 	[box, "Box",100,100]] call _inventory;
	["setProperties", 	[wardrobe, "Wardrobe",100,100]] call _inventory2;
	["setProperties", 	[uaz, "Uaz",100,100]] call _inventory3;
	["setProperties", 	[workbench, "Workbench",100,100]] call _inventory4;

	// create new items
	_potatoe = ["Potatoe","A vulgar potato damaged","food",2,0.5,"Captain_A",10, ""];
	_coin = ["Coin","A XX century coin","money",5,0.1,"Food MetalX",90, ""];
	_bottleusecode = { hint "You drink all the bottle. You fill very sick and finaly you die."; player setDamage 1;};
	_bottle = ["Bottle","An empty bottle","object",1,0.3,"Redcolision41",100, _bottleusecode];
	_duck = ["Duck","a duck really alive with 3 legs","animal",10,5,"Bloodycoal",100, ""];
	_lighterusecode = { skipTime 12;};
	_lighter = ["Lighter", "a lighter that will allow you to light campfires quickly. This object is not waterproof","object",5,0.1,"LyLKaay",45, _lighterusecode];

	["addItem", _potatoe] call _inventory;
	["addItem", _coin] call _inventory;
	["addItem", _bottle] call _inventory;
	["addItem", _duck] call _inventory;
	["addItem", _lighter] call _inventory;

	_ak56 = ["AK56","A strange weapon straight from the future probably also become useless with the advent of intelligent drones","Weapon",30,1,"Unknown",70, ""];
	_tincan = ["GPS tracer","A tracer gps that could be useful to us. The source of energy is a mystery.","tools",20,0.1,"Unknown",40, ""];
	_gpstracer = ["Tin can Maxigaz","All you need protein to spend a good afternoon in the sun","food",10,0.2,"Unknown",70, ""];

	["addItem", _tincan] call _inventory2;
	["addItem", _ak56] call _inventory2;
	["addItem", _gpstracer] call _inventory2;

	_wheel = ["Spare wheel","a deflated spare wheel","tools",5,10,"Unknown",30, ""];
	_wrench = ["Adjustable wrench","a wrench that allows you to make the most basic repairs","tools",2,1,"Unknown",80, ""];

	["addItem", _wheel] call _inventory3;
	["addItem", _wrench] call _inventory3;

	_figurine = ["A figurine of mia kalifa","A figure of mia kalifa completely naked. She had, in all appearances, forgotten the whole epilation.","art",35,2,"Netarion",90, ""];
	["addItem", _figurine] call _inventory4;

	qwenchIsAlive = {true;};