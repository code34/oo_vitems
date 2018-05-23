	/*
	Author: code34 nicolas_boiteux@yahoo.fr
	Copyright (C) 2018 Nicolas BOITEUX

	CLASS OO_MNGITEMS

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

	CLASS("OO_MNGITEMS")
		PRIVATE VARIABLE("code","this");
		PRIVATE VARIABLE("string","name");

		PUBLIC FUNCTION("","constructor") { 
			DEBUG(#, "OO_MNGITEMS::constructor")
		};

		PUBLIC FUNCTION("","getThis") {
			DEBUG(#, "OO_MNGITEMS::getThis")
			MEMBER("this", nil);
		};

		PUBLIC FUNCTION("","getName") {
			DEBUG(#, "OO_MNGITEMS::getName")
			MEMBER("name", nil);
		};

		PUBLIC FUNCTION("","deconstructor") {
			DEBUG(#, "OO_MNGITEMS::deconstructor")
			DELETE_VARIABLE("this");
		};
	ENDCLASS;