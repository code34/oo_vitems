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

	15203 cutText ["Loading...","BLACK FADED", 1000];
	#include "oop.h"

	call compile preprocessFileLineNumbers "oo_bme.sqf";
	call compile preprocessFileLineNumbers "oo_item.sqf";
	call compile preprocessFileLineNumbers "oo_container.sqf";
	call compile preprocessFileLineNumbers "oo_manager.sqf";
	call compile preprocessFileLineNumbers "oo_inventaire.sqf";

	bmeclient = NEW(OO_BME, nil);
	private _result = false;
	while { _result isEqualTo false} do { 
		_result= ["remoteCall", ["qwenchIsAlive", "" , 2, false]] call bmeclient;
		sleep 0.1;
	};

	15203 cutText ["","PLAIN", 0];
	_patate = "new" call OO_ITEM;
	["setItem", ["patate","une vulgaire pomme de terre abimée","aliment",5,1,1,70]] call _patate;
	_result = ["remoteCall", ["putItem", [carton, ("getItem" call _patate)] , 2, false]] call bmeclient;
	_result = ["remoteCall", ["moveItem", [carton, player, 3] , 2, false]] call bmeclient;
	_result = ["remoteCall", ["getContent", carton , 2, []]] call bmeclient;
	hint format ["Inv carton: %1", _result];
	_result = ["remoteCall", ["getContent", player , 2, []]] call bmeclient;
	hint format ["Inv joueur%1", _result];
	createDialog "oo_inventaire";