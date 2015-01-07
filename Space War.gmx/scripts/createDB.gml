
/*
    Test SQLLite by creating a table called Enemy, adding some records to it and retreiving them.
*/

/*

    type -- 0: minion 1: boss

*/
var q;
show_debug_message("Initialize: " + string(GMSQL_Init()));
var db = GMSQL_Open_Database_SQLITE("db.sqlite");

return db
