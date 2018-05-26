	/*
	Author: code34 nicolas_boiteux@yahoo.fr
	Copyright (C) 2018 Nicolas BOITEUX

	CLASS OO_CONTAINER

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

	CLASS("OO_CONTAINER")
		PRIVATE VARIABLE("code","this");
		PRIVATE VARIABLE("string","name");
		PRIVATE VARIABLE("array","content");
		PRIVATE VARIABLE("scalar","limitsize");
		PRIVATE VARIABLE("scalar","limitweight");

		PUBLIC FUNCTION("","constructor") { 
			DEBUG(#, "OO_CONTAINER::constructor")
			MEMBER("name", "");
			MEMBER("content", []);
			MEMBER("limitsize", 0);
			MEMBER("limitweight", 0);
		};

		PUBLIC FUNCTION("","getThis") {
			DEBUG(#, "OO_CONTAINER::getThis")
			MEMBER("this", nil);
		};

		PUBLIC FUNCTION("","getLimitSize") {
			DEBUG(#, "OO_CONTAINER::getLimitSize")
			MEMBER("limitsize", nil);
		};

		PUBLIC FUNCTION("scalar","setLimitSize") {
			DEBUG(#, "OO_CONTAINER::setLimitSize")
			MEMBER("limitsize", _this);
		};

		PUBLIC FUNCTION("","getLimitWeight") {
			DEBUG(#, "OO_CONTAINER::getLimitWeight")
			MEMBER("limitweight", nil);
		};

		PUBLIC FUNCTION("scalar","setLimitWeight") {
			DEBUG(#, "OO_CONTAINER::setLimitWeight")
			MEMBER("limitweight", _this);
		};

		PUBLIC FUNCTION("","countSize") {
			DEBUG(#, "OO_CONTAINER::count")
			count(MEMBER("content", nil));
		};

		PUBLIC FUNCTION("","countWeight") {
			DEBUG(#, "OO_CONTAINER::countWeight")
			private _weight = 0;
			{
				_weight = _weight + ("getWeight" call _x);
			} forEach MEMBER("content", nil);
			_weight;
		};

		PUBLIC FUNCTION("array","setContainer") {
			DEBUG(#, "OO_CONTAINER::setContainer")
			private _properties = ["name", "content", "limitsize", "limitweight"];
			if(count _this < count _properties) exitWith {false;};
			{
				MEMBER(_x, _this select _forEachIndex);
			} forEach _properties;
			true;
		};

		PUBLIC FUNCTION("","getContainer") {
			DEBUG(#, "OO_CONTAINER::getContainer")
			private _container = [];
			private _properties = ["name", "content", "limitsize", "limitweight"];
			{
				_container pushBack MEMBER(_x, nil);
			} forEach _properties;
			_container;
		};

		PUBLIC FUNCTION("code","addItem") {
			DEBUG(#, "OO_CONTAINER::addItem")
			private _newweight = MEMBER("countWeight", nil) + ("getWeight" call _this);
			if( MEMBER("countSize", nil) < MEMBER("limitsize", nil) && _newweight < MEMBER("limitweight", nil)) exitWith {
				MEMBER("content", nil) pushBack _this;
				true;
			};
			false;
		};

		PUBLIC FUNCTION("","getContent") {
			DEBUG(#, "OO_CONTAINER::getContent")
			MEMBER("content", nil);
		};

		PUBLIC FUNCTION("","getContentSerialize") {
			DEBUG(#, "OO_CONTAINER::getContentSerialize")
			private _result = [];
			{
				_result pushBack ("getItem" call _x);
			} foreach MEMBER("content", nil);
			_result;
		};

		PUBLIC FUNCTION("scalar","getItem") {
			DEBUG(#, "OO_CONTAINER::getItem")
			MEMBER("content", nil) deleteAt _this;
		};

		PUBLIC FUNCTION("","deconstructor") {
			DEBUG(#, "OO_CONTAINER::deconstructor")
			DELETE_VARIABLE("this");
			DELETE_VARIABLE("name");
			DELETE_VARIABLE("content");
			DELETE_VARIABLE("limitsize");
			DELETE_VARIABLE("limitweight");
		};
	ENDCLASS;