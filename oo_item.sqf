	/*
	Author: code34 nicolas_boiteux@yahoo.fr
	Copyright (C) 2018 Nicolas BOITEUX

	CLASS OO_ITEM

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

	CLASS("OO_ITEM")
		PRIVATE VARIABLE("code","this");
		PRIVATE VARIABLE("string","name");
		PRIVATE VARIABLE("string","description");
		PRIVATE VARIABLE("string","category");
		PRIVATE VARIABLE("scalar","price");
		PRIVATE VARIABLE("scalar","weight");
		PRIVATE VARIABLE("scalar","owner");

		PUBLIC FUNCTION("","constructor") { 
			DEBUG(#, "OO_ITEM::constructor")
		};

		PUBLIC FUNCTION("","getThis") {
			DEBUG(#, "OO_ITEM::getThis")
			MEMBER("this", nil);
		};

		PUBLIC FUNCTION("","getName") {
			DEBUG(#, "OO_ITEM::getName")
			MEMBER("name", nil);
		};

		PUBLIC FUNCTION("string","setName") {
			DEBUG(#, "OO_ITEM::setName")
			MEMBER("name", _this);
		};

		PUBLIC FUNCTION("","getDescription") {
			DEBUG(#, "OO_ITEM::getDescription")
			MEMBER("description", nil);
		};

		PUBLIC FUNCTION("string","setDescription") {
			DEBUG(#, "OO_ITEM::setDescription")
			MEMBER("description", _this);
		};

		PUBLIC FUNCTION("","getPrice") {
			DEBUG(#, "OO_ITEM::getPrice")
			MEMBER("price", nil);
		};

		PUBLIC FUNCTION("scalar","setPrice") {
			DEBUG(#, "OO_ITEM::setPrice")
			MEMBER("price", _this);
		};

		PUBLIC FUNCTION("","getWeight") {
			DEBUG(#, "OO_ITEM::getWeight")
			MEMBER("weight", nil);
		};

		PUBLIC FUNCTION("scalar","setWeight") {
			DEBUG(#, "OO_ITEM::setWeight")
			MEMBER("weight", _this);
		};

		PUBLIC FUNCTION("","getOwner") {
			DEBUG(#, "OO_ITEM::getOwner")
			MEMBER("owner", nil);
		};

		PUBLIC FUNCTION("scalar","setOwner") {
			DEBUG(#, "OO_ITEM::setOwner")
			MEMBER("owner", _this);
		};

		PUBLIC FUNCTION("","getCategory") {
			DEBUG(#, "OO_ITEM::getCategory")
			MEMBER("category", nil);
		};

		PUBLIC FUNCTION("string","setCategory") {
			DEBUG(#, "OO_ITEM::setCategory")
			MEMBER("category", _this);
		};

		PUBLIC FUNCTION("","deconstructor") {
			DEBUG(#, "OO_ITEM::deconstructor")
			DELETE_VARIABLE("this");
			DELETE_VARIABLE("name");
			DELETE_VARIABLE("description");
			DELETE_VARIABLE("category");
			DELETE_VARIABLE("price");
			DELETE_VARIABLE("weight");
			DELETE_VARIABLE("owner");
		};
	ENDCLASS;