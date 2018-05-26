	/*
	Author: code34 nicolas_boiteux@yahoo.fr
	Copyright (C) 2018 Nicolas BOITEUX

	OO_ITEMS

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

	call compile preprocessFileLineNumbers "oo_item.sqf";
	call compile preprocessFileLineNumbers "oo_container.sqf";
	call compile preprocessFileLineNumbers "oo_manager.sqf";

	sleep 2;

	_piece = "new" call OO_ITEM;
	["setItem", 	["piece","piece du XXème siècle","monnaie",500,0,0,100]] call _piece;
	_coffre = "new" call OO_CONTAINER;
	["addItem", _piece] call _coffre;
	hintc format ["Nb objets: %1", "count" call _coffre];