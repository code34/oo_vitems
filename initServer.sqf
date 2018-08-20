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

	_inventory = "new" call OO_CONTAINER;
	_inventory2 = "new" call OO_CONTAINER;
	_inventory3 = "new" call OO_CONTAINER;
	_inventory4 = "new" call OO_CONTAINER;

	_manager = "new" call OO_MANAGER;

	// attach a container to a 3D object
	box setVariable["inventory", _inventory, true];
	wardrobe setVariable["inventory", _inventory2, true];
	uaz setVariable["inventory", _inventory3, true];
	workbench setVariable["inventory", _inventory4, true];

	// fix properties of container
	["setProperties", 	["box",100,100]] call _inventory;
	["setProperties", 	["wardrobe",100,100]] call _inventory2;
	["setProperties", 	["uaz",100,100]] call _inventory3;
	["setProperties", 	["workbench",100,100]] call _inventory4;

	// create new items
	_coin = "new" call OO_ITEM;
	_bottle = "new" call OO_ITEM;
	_duck = "new" call OO_ITEM;
	_potatoe = "new" call OO_ITEM;

	// set items properties
	["setItem", ["potatoe","A vulgar potato damaged","food",2,1,"Captain_A",10]] call _potatoe;
	["setItem", ["coin","A XX century coin","money",5,1,"Food MetalX",90]] call _coin;
	["setItem", ["bottle","An empty bottle","object",1,1,"Redcolision41",100]] call _bottle;
	["setItem", ["duck","a duck really alive with 3 legs","animal",10,5,"Bloodycoal",100]] call _duck;

	// add items into containers
	["addItem", _potatoe] call _inventory;
	["addItem", _coin] call _inventory;
	["addItem", _bottle] call _inventory;
	["addItem", _duck] call _inventory;

	_ak56 = "new" call OO_ITEM;
	_tincan = "new" call OO_ITEM;
	_gpstracer = "new" call OO_ITEM;

	["setItem", ["AK56","A strange weapon straight from the future probably also become useless with the advent of intelligent drones","Weapon",30,1,"Unknown",70]] call _ak56;
	["setItem", ["GPS tracer","A tracer gps that could be useful to us. The source of energy is a mystery.","tools",20,1,"Unknown",40]] call _gpstracer;
	["setItem", ["Tin can Maxigaz","All you need protein to spend a good afternoon in the sun","food",10,3,"Unknown",70]] call _tincan;
	
	["addItem", _tincan] call _inventory2;
	["addItem", _ak56] call _inventory2;
	["addItem", _gpstracer] call _inventory2;

	_wheel = "new" call OO_ITEM;
	_wrench = "new" call OO_ITEM;
	
	["setItem", ["Spare wheel","a deflated spare wheel","tools",5,10,"Unknown",30]] call _wheel;
	["setItem", ["Adjustable wrench","a wrench that allows you to make the most basic repairs","tools",2,1,"Unknown",80]] call _wrench;

	["addItem", _wheel] call _inventory3;
	["addItem", _wrench] call _inventory3;

	_figurine = "new" call OO_ITEM;
	["setItem", ["A figurine of mia kalifa","A figure of mia kalifa completely naked. She had, in all appearances, forgotten the whole epilation.","art",35,2,"Netarion",90]] call _figurine;
	["addItem", _figurine] call _inventory4;

	qwenchIsAlive = {true;};