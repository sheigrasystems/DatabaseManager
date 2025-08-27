Use cSqlViewTableDef.pkg
Use cIndexDef.pkg

Object TableName is a cSqlViewTableDef
    Set psTableName   to ""
    Set psDescription to ""
    Set peDriver      to eDEFAULT
    
    Procedure OnCreate String ByRef sSql
    End_Procedure
    
    // Index objects
        
End_Object