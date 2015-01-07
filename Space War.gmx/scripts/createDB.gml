
/*
    Test SQLLite by creating a table called Enemy, adding some records to it and retreiving them.
*/

/*

    type -- 0: minion 1: boss

*/
var q;
show_debug_message("Initialize: " + string(GMSQL_Init()));
var db = GMSQL_Open_Database_SQLITE("db.sqlite");
//show_debug_message("Open SQLLite db.sqlite: " + string(db));
//show_debug_message("Creating new table...");
//q = GMSQL_QueryExecute(db, "CREATE TABLE Enemy (id INTEGER, name TEXT, type INTEGER, hp REAL)");
//show_debug_message("Create Table Enemy Result: " + string(q));
//show_debug_message("Adding Rows to table Enemy...");


//q = GMSQL_QueryExecute(db, "INSERT INTO Enemy VALUES (1,'EnemyFlyer1', 0, 2);");
//if (q==-1) {
    //show_debug_message("Query Failed!");
    //show_debug_message(GMSQL_GetLastError());
//}
//show_debug_message("Selecting rows from Enemy...");
//q = GMSQL_Query(db, "SELECT * FROM Enemy");
//while (GMSQL_QueryResult_Next(q)) {
//show_debug_message("Query Field0: " + string(GMSQL_QueryResult_GetNamedFieldReal(q,"id"))); //Get field by name
//show_debug_message("Query Field1: " + string(GMSQL_QueryResult_GetFieldString(q,1))); //Get field by index
//show_debug_message("Query Field2: " + string(GMSQL_QueryResult_GetFieldString(q,2))); //Get field by index
//show_debug_message("Query Field3: " + string(GMSQL_QueryResult_GetFieldReal(q,3))); //Get field by index
//}
//GMSQL_QueryResult_Finish(q); //Clean up the query result

//Close the database.
//show_debug_message("Close database: " + string(GMSQL_Close_Database(db)));

return db
