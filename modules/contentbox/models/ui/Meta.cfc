/**
* ContentBox - A Modular Content Platform
* Copyright since 2012 by Ortus Solutions, Corp
* www.ortussolutions.com/products/contentbox
* ---
* I represent a new meta to be created in the ContentBox System
*/
component accessors="true"{
	
	property name="title";
	property name="keywords";
	property name="description";
	
	Meta function init(){
		variables.title 			= '';
		variables.keywords 		= '';
		variables.description 	= '';

		return this;
	}
	
	/*
	* Validate entry, returns an array of error or no messages
	*/
	array function validate(){
		var errors = [];
		var aRequired = listToArray( "title,keywords,description" );
		
		// Required
		for(var field in aRequired){
			if( !len( variables[ field ] ) ){ arrayAppend(errors, "#field# is required" ); }
		}
		
		return errors;
	}
	
}
