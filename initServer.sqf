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

	#include "oop.h"

	call compile preprocessFileLineNumbers "oo_bme.sqf";
	call compile preprocessFileLineNumbers "oo_item.sqf";
	call compile preprocessFileLineNumbers "oo_container.sqf";
	call compile preprocessFileLineNumbers "oo_manager.sqf";

	sleep 1;

	_inventory = "new" call OO_CONTAINER;
	_inventory2 = "new" call OO_CONTAINER;
	_manager = "new" call OO_MANAGER;

	["setContainer", 	["carton",[],11,11]] call _inventory;
	["setContainer", 	["joueur",[],10,10]] call _inventory2;

	_piece = "new" call OO_ITEM;
	_bouteille = "new" call OO_ITEM;
	_canard = "new" call OO_ITEM;
	_patate = "new" call OO_ITEM;

	["setItem", ["patate","une vulgaire pomme de terre abimée","aliment",5,1,1,70]] call _patate;
	["setItem", ["piece","piece du XXème siècle","monnaie",500,0,0,100]] call _piece;
	["setItem", ["bouteille","une bouteille vide","objet",50,1,1,100]] call _bouteille;
	["setItem", ["canard","un canard bien vivant à 3 pattes","animal",50,9,9,100]] call _canard;

	["addItem", _patate] call _inventory;
	["addItem", _piece] call _inventory;
	["addItem", _bouteille] call _inventory;
	["addItem", _canard] call _inventory;

	carton setVariable["inventory", _inventory];
	player setVariable["inventory", _inventory2];

	getContainer = {
		_object = _this;
		_inventory = _object getVariable["inventory", []];
		"getContainer" call _inventory;
	};

	putItem = {
		_object = _this select 0;
		_serial = _this select 1;
		_item = "new" call OO_ITEM;
		["setItem", _serial] call _item;
		_inventory = _object getVariable["inventory", []];
		["addItem", _item] call _inventory;
	};

	moveItem = {
		_manager = "new" call OO_MANAGER;
		_source = _this select 0;
		_target = _this select 1;
		_index = _this select 2;
		_source = _source getVariable["inventory", []];
		_target = _target getVariable["inventory", []];
		["moveItem", [_source, _target, _index]] call _manager;
	};

	qwenchIsAlive = {true;};

	/*	hint format ["Nb objets: %1 %2", "countSize" call _inventory, "countSize" call _inventory2];
	sleep 2;

	["moveItem", [_inventory, _inventory2, 0]] call _manager;
	hint format ["After give: %1 %2", "countSize" call _inventory, "countSize" call _inventory2];
	sleep 2;

	["moveItem", [_inventory2, _inventory, 0]] call _manager;
	hint format ["After give II: %1 %2", "countSize" call _inventory, "countSize" call _inventory2];
	sleep 2;*/