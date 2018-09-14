	/*
	Author: code34 nicolas_boiteux@yahoo.fr
	Copyright (C) 2018 Nicolas BOITEUX

	CLASS OO_RANDOMSTUFF

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

	CLASS("OO_RANDOMSTUFF")
		PRIVATE VARIABLE("code","this");

		PRIVATE VARIABLE("array","object");
		PRIVATE VARIABLE("array","tool");
		PRIVATE VARIABLE("array","military");
		PRIVATE VARIABLE("array","food");
		PRIVATE STATIC_VARIABLE("array", "stuff");

		PUBLIC FUNCTION("","constructor") { 
			DEBUG(#, "OO_RANDOMSTUFF::constructor")
			MEMBER("object", []);
			MEMBER("tool", []);
			MEMBER("military", []);
			MEMBER("food", []);
		};

		PUBLIC FUNCTION("array","setStuff") {
			MEMBER("stuff", _this);
		};

		PUBLIC FUNCTION("","getThis") {
			DEBUG(#, "OO_RANDOMSTUFF::getThis")
			MEMBER("this", nil);
		};

		PUBLIC FUNCTION("object","getProperties") {
			DEBUG(#, "OO_RANDOMSTUFF::getProperties")
			private _properties = [];
			switch (true) do {
				case (_object isKindOf "House_F") : { _properties = ["Building", round(sizeOf (typeof _object))*10, round(sizeOf (typeof _object))*100];};
				case (_object isKindOf "Men") : { _properties = ["Men", 40, 40]; };
				case (_object isKindOf "Things") : { _properties = ["Object", round(sizeOf (typeof _object)), round(sizeOf (typeof _object))];};
				default {	_properties = ["", 0,0];};
			};
			_properties;
		};

		PUBLIC FUNCTION("","getRandomStuff") {
			DEBUG(#, "OO_RANDOMSTUFF::getRandomStuff")
			private _result = [];
			for "_i" from 0 to round(random 3) step 1 do {
				_entry = MEMBER("stuff",nil) deleteAt (random (count(MEMBER("stuff",nil)) - 1));
				_result pushBack _entry;
			};
			_result;
		};

		PUBLIC FUNCTION("","deconstructor") {
			DEBUG(#, "OO_RANDOMSTUFF::deconstructor")
			DELETE_VARIABLE("this");
			DELETE_VARIABLE("object");
			DELETE_VARIABLE("tool");
			DELETE_VARIABLE("military");
			DELETE_VARIABLE("food");
		};
	ENDCLASS;