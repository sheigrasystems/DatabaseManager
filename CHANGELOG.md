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
  
## [1.0.1] – 2025-09-24
### Fixed
- TableHistory.fd had incorrect column information (wrong column numbers) 