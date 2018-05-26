	/*
	Author: code34 nicolas_boiteux@yahoo.fr
	Copyright (C) 2018 Nicolas BOITEUX

	CLASS OO_MANAGER

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

	CLASS("OO_MANAGER")
		PRIVATE VARIABLE("code","this");
		//PRIVATE VARIABLE("string","name");

		PUBLIC FUNCTION("","constructor") { 
			DEBUG(#, "OO_MANAGER::constructor")
		};

		PUBLIC FUNCTION("","getThis") {
			DEBUG(#, "OO_MANAGER::getThis")
			MEMBER("this", nil);
		};

		PUBLIC FUNCTION("","thiefItem") {
			DEBUG(#, "OO_MANAGER::giveItem")
			//MEMBER("name", nil);
		};

		PUBLIC FUNCTION("","putItem") {
			DEBUG(#, "OO_MANAGER::giveItem")
			//MEMBER("name", nil);
		};

		PUBLIC FUNCTION("","buildItem") {
			DEBUG(#, "OO_MANAGER::giveItem")
			//MEMBER("name", nil);
		};

		PUBLIC FUNCTION("","buyItem") {
			DEBUG(#, "OO_MANAGER::giveItem")
			//MEMBER("name", nil);
		};

		PUBLIC FUNCTION("","destroyItem") {
			DEBUG(#, "OO_MANAGER::giveItem")
			//MEMBER("name", nil);
		};

		PUBLIC FUNCTION("","repairItem") {
			DEBUG(#, "OO_MANAGER::giveItem")
			//MEMBER("name", nil);
		};

		PUBLIC FUNCTION("","deconstructor") {
			DEBUG(#, "OO_MANAGER::deconstructor")
			DELETE_VARIABLE("this");
		};
	ENDCLASS;