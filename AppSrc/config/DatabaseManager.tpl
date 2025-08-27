Use DfAllEnt.pkg
Use cdmApplication.pkg
Use cdmConnection.pkg
Use cDatabaseManager.pkg

Object oApplication is a cdmApplication

    Object oConnection is a cdmConnection
        Use LoginEncryption.pkg
        Use DatabaseLoginDialog.dg
    End_Object
End_Object

Object oDatabaseManager is a cDatabaseManager
    Use TableHistory.pkg
    // add your tables here ...
    
End_Object

Start_UI