# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.7.0] - 23-12-2021
### Added
- Stored procedure DsmrApi_ComputeDeviceCapabilities
- Stored procedure DsmrApi_SelectAverageEnergyDataPerHour

### Updated
- DSMR API permissions

## [1.6.0] - 06-06-2021
### Added
- Permissions for the DSMR API
- Stored procedure to compute energy usage/production

### Updated
- Documentation
- README file
- Security/support definition

## [1.5.0] - 27-04-2021
### Added
- Stored procedure to group power data by hour
- Permissions to let the DSMR API execute the [DsmrApi_SelectPowerDataByHour] procedure

### Updated
- DSMR API database role

## [1.4.0] - 09-04-2021
### Updated
- Stored procedures related to sensor mapping and processing history

### Deleted
- Sensor mapping table
- Sensor mapping table stored procedures (lookup)

## [1.3.1] - 06-04-2021
### Added
- Sensor ID checks

### Updated
- Various stored procedures, to include sensor checks
- README document
- Security document

### Removed
- Code style document

## [1.3.0] - 05-04-2021
### Added
- Aggregate stored procedures
- Aggregation views
- DSMR API database role

### Updated
- Version support policy

## [1.2.0] - 01-04-2021
### Added
- Tarif indicator

### Updated
- File formatting
- Insertion stored procedures

## [1.1.0] - 27-03-2021
### Added
- Add permissions for [dbo].[DataPoint] to [db_processor]

### Updated
- The service name index, removed the unique constraint

## [1.0.0] - 26-03-2021
### Added
- Data point table
- Sensor mapping table
- Processing history
- Various stored procedures

### Updated
- Data point type mapping
- Data point indices
