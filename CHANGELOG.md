# Changelog

## [0.1.0] – 2025-08-27
### Added
- First beta release of Database Manager
- Define schema in code
- Compile a standalone Database Manager app
- Run to ensure database exists and matches model
- Creates or alters tables and fields as required

**Requirements:** DataFlex 25.0+  
**Status:** Beta — feedback welcome

## [0.1.1] – 2025-08-27
### Changed
- Dropped 'Sheigra' from the .sws file name. 

## [0.2.1] – 2025-09-04
### Fixed
- added ID as segment to Index.2 on the TableHistory table 

## [0.2.2] – 2025-09-04
### Added
- calling dbConfig now allows you to pass a connection id name on the command line
  In doing so, the connection id entry will be disabled. This is also true of the driver selection
  (which is fine for now as we only support MSSQL and Dataflex)

### Fixed
- removed ID as segment to Index.2 on the TableHistory table (it was never required)
- Function ColumnNames in cTableDef only returns columns for an existing table. 
  when creating a table and setting the primary index it returned an empty array.
  
## [0.2.3] – 2025-09-24
### Fixed
- TableHistory.fd had incorrect column information (wrong column numbers)

## [1.0.0] – 2026-09-10
### Added
- DataFlex 26.0 package metadata and a distributable 1.0.0 archive containing library source, examples, templates and documentation, with installation and packaging instructions.

### Changed
- Migrated the library workspace from DataFlex 25.0 to 26.0, including the JSON workspace format and updated workspace paths and connection configuration.
- Expanded SQL native type mappings and Studio property choices to cover BIGINT, decimal and floating-point types, money, binary, GUID, large text, XML, and additional date/time types. Split the native type metadata across EnumList continuation entries.
- SourceCodeGenerator now preserves both the native SQL type and the actual DataFlex field type, including DF_BINARY and DF_DATETIME. Unknown native types retain their numeric identifiers instead of becoming SQL_CHAR.
- Generated table packages now declare referenced tables with Declare_DataFile and use named RefTable references for relationships. Unresolvable relationships retain their original numeric references with a comment.

### Fixed
- BIGINT and other previously unhandled SQL types no longer fall through to SQL_CHAR during source generation. Corrected the datetime comparison in the SQL-to-DataFlex type mapping.
- Index comparison and creation now use DataFlex field numbers, including Recnum at field 0, rather than SQL physical column positions. Missing index columns are no longer treated as matching definitions.
- Index recreation skips indexes still present after restructuring, preserving retained primary indexes while creating missing indexes after data population.
- Corrected the index-type lookup to specify the index number.
- Set an explicit TableHistory table name to preserve its intended casing when creating the table.

### Notes
- Generated DF_OVERLAP definitions explicitly report a compile-time error because the required column offset support is not implemented. SQL Server sql_variant remains unsupported by the driver.
- Validated type generation using AdventureWorks2022 and relationship generation through compilation and execution of the generated manager.
- Validated existing Recnum tables using OrderEntryDemo26: unchanged-schema runs, adding and populating a column before creating its unique index, preservation of existing indexes, and a successful repeat run.
- BIGINT itself was not exercised against a test database, and creation from scratch was not retested.
