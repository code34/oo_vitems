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

		// Return this object
		PUBLIC FUNCTION("","getThis") {
			DEBUG(#, "OO_CONTAINER::getThis")
			MEMBER("this", nil);
		};

		// Return the limit size of container
		PUBLIC FUNCTION("","getLimitSize") {
			DEBUG(#, "OO_CONTAINER::getLimitSize")
			MEMBER("limitsize", nil);
		};

		// Set the limit size of container
		PUBLIC FUNCTION("scalar","setLimitSize") {
			DEBUG(#, "OO_CONTAINER::setLimitSize")
			MEMBER("limitsize", _this);
		};

		// Return the limit weight of container
		PUBLIC FUNCTION("","getLimitWeight") {
			DEBUG(#, "OO_CONTAINER::getLimitWeight")
			MEMBER("limitweight", nil);
		};

		// Set the limit weight of container
		PUBLIC FUNCTION("scalar","setLimitWeight") {
			DEBUG(#, "OO_CONTAINER::setLimitWeight")
			MEMBER("limitweight", _this);
		};

		// Count the occuped size in container
		PUBLIC FUNCTION("","countSize") {
			DEBUG(#, "OO_CONTAINER::count")
			count(MEMBER("content", nil));
		};

		// Count the weight in container
		PUBLIC FUNCTION("","countWeight") {
			DEBUG(#, "OO_CONTAINER::countWeight")
			private _weight = 0;
			{
				_weight = _weight + ("getWeight" call _x);
			} forEach MEMBER("content", nil);
			_weight;
		};

		// Set the properties of container from an array
		PUBLIC FUNCTION("array","setProperties") {
			DEBUG(#, "OO_CONTAINER::setProperties")
			private _properties = ["name", "limitsize", "limitweight"];
			if(count _this < count _properties) exitWith {false;};
			{
				MEMBER(_x, _this select _forEachIndex);
			} forEach _properties;
			true;
		};

		// Get the properties of container with an array
		PUBLIC FUNCTION("","getProperties") {
			DEBUG(#, "OO_CONTAINER::getProperties")
			private _array = [];
			private _properties = ["name", "limitsize", "limitweight"];
			{
				_array pushBack MEMBER(_x, nil);
			} forEach _properties;
			_array;
		};

		// Serialize container + content
		PUBLIC FUNCTION("","getContainer") {
			DEBUG(#, "OO_CONTAINER::getContainer")
			private _result = [];
			_result pushBack MEMBER("getProperties", nil);
			_result pushBack MEMBER("getContentSerialize", nil);
			_result;
		};

		// Rebuild a container from a serialize container
		PUBLIC FUNCTION("array","setContainer") {
			DEBUG(#, "OO_CONTAINER::setContainer")
			MEMBER("setProperties", _this select 0);
			MEMBER("setContentSerialize", _this select 1);
		};

		// Return the content of container (OO object of type items)
		PUBLIC FUNCTION("","getContent") {
			DEBUG(#, "OO_CONTAINER::getContent")
			MEMBER("content", nil);
		};

		// Set the content of container (OO object of type items)
		PUBLIC FUNCTION("array","setContent") {
			DEBUG(#, "OO_CONTAINER::setContent")
			MEMBER("content", _this);
		};

		// Serialize all the items in container
		PUBLIC FUNCTION("","getContentSerialize") {
			DEBUG(#, "OO_CONTAINER::getContentSerialize")
			private _result = [];
			{
				_result pushBack ("getItem" call _x);
			} foreach MEMBER("content", nil);
			_result;
		};

		// Add serialize content into container
		PUBLIC FUNCTION("array","addContentSerialize") {
			DEBUG(#, "OO_CONTAINER::setContentSerialize")
			private _array = _this;
			{
				MEMBER("content", nil) pushBack _x;
			} foreach _array;
		};

		// Refresh the content of container with serialize content
		PUBLIC FUNCTION("array","setContentSerialize") {
			DEBUG(#, "OO_CONTAINER::setContentSerialize")
			MEMBER("content", []);
			MEMBER("addContentSerialize", _this);
		};

		// Add an item to the content of container
		PUBLIC FUNCTION("code","addItem") {
			DEBUG(#, "OO_CONTAINER::addItem")
			private _newweight = MEMBER("countWeight", nil) + ("getWeight" call _this);
			if( MEMBER("countSize", nil) <= MEMBER("limitsize", nil) && _newweight <= MEMBER("limitweight", nil)) exitWith {
				MEMBER("content", nil) pushBack _this;
				true;
			};
			false;
		};

		// Delete an item of the content of container
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