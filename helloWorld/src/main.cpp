//-----------------------------------------------------------------------------
//  Copyright Objectivity Inc. 2003
//-----------------------------------------------------------------------------

#include <iostream>
using namespace std;
#include <ooObjy.h>
#include "../ddlFiles/HelloObject.h"

//-----------------------------------------------------------------------------
int main (int argc, char** argv)
{
   bool errors = true;
   cout << "Welcome to the Objectivity HelloWorld Example" << endl;

   const char* bootfile = "../../data/helloWorld/HelloWorld.boot";
   
   if (argc == 1)
   {
      cout << "No Objectivity FD Bootfile passed as argument; using default: " 
         << bootfile << endl;
   }
   else
   {
      bootfile = argv[1];
      cout << "Using FD Bootfile passed as argument: " << bootfile << endl;
   }
   int count = 0;
   try
   {
      
      //
      //	initialize Objectivity/DB
      //
      ooObjy::startup();
      //
      //	establish connection to the Federation
      //
      ooConnection* connection;
      connection = ooObjy::getConnection(bootfile);
      //
      // create a session
      //
      ooSession* session;
      session = connection->createSession("Main Session");
      //
      //  begin an update transaction
      //
      session->releaseFiles();
      session->begin(oocUpdate);
      //
      //  get a reference to the federated database
      //
      ooHandle(ooFDObj) fd;
      fd = session->fd();
      //
      //  if the database exists open for update and delete it
      //
      const char* dbName = "TestDB";
      ooHandle(ooDBObj) db;
      if (db.exist(fd,dbName, oocUpdate))
      {
         cout << "Database " << dbName << " exists; will delete and re-create" << endl;
         ooDelete(db);
      }
      cout << "Create database" << endl;
      //
      //  create a new database
      //
      db = new(fd) ooDBObj(dbName);
      //
      // Create "TestCont" container with 4 inital pages, 10% grow,
	  // and assigned to "db"
	  // 
      ooHandle(ooContObj) cont;
      cont = new(db,4,0,"TestCont",0,oocFalse,0,0,0) ooContObj;
      //
      //  create a Node object, and set its location
      //
      cout << "Create HelloObject and set message" << endl;
      const char name[16] = "HelloWorld";
      ooHandle(HelloObject) hello;
      hello = new(cont) HelloObject;
      hello->setHelloMsg(name);
      //
      //  and name it in the scope of the database
      //
      hello.nameObj(db, name);
      //
      //  commit the transaction
      //
      session->commit();
      //
      //	begin a read transaction
      //
      session->begin(oocRead);
      //
      //	lookup the Node object with name "HelloWorld" in the scope of the database
      //
      cout << "Looking for object with name " << name << endl;
      
      ooHandle(HelloObject) hello2;
      if (hello2.lookupObj(db, name))
      {
         cout << "Found it!: " << hello2->getHelloMsg() << endl;
         //
         //	commit the transaction
         //
         session->commit();
         //
         // everything worked so far
         //
         errors = false;
      }
      else
      {
         cerr << "HelloObject not found; will abort" << endl;
         session->abort();
         errors = true;
      }
      //
      //	terminate interaction with Objectivity/DB
      //
      ooObjy::shutdown();
   }
   catch ( const ooException & ex )
   {
      cerr << "exception in main: " << ex.what() << endl;
      errors = true;
   }
   catch(...)
   {
      cerr << "unknown exception in main" << endl;
      errors = true;
   }
   
   if (errors)
   {
      cerr << endl << "HelloWorld test has FAILED" << endl;
   }
   else
   {
      cout << endl << "HelloWorld test has PASSED" << endl;
   }
   return 0;
}
