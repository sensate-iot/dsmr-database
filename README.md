# Sensate IoT - Smart Energy

The Sensate IoT Smart Energy project implements an IoT solution for (Dutch)
Smart Meters. The project consists of several repository's:

- DSMR parser;
- DSMR web client (implementator of this service);
- Several customer facing apps;
- DSMR database project (this repo).

## Database projects

The data related to DSMR projects is disributed acros several sources:

- Sensate IoT Data Platform;
- This database project.

This database project acts as a OLAP database, for aggregated data only. Data that is
the dataplatform is (and should) be used for individual messges and/or measurements.
