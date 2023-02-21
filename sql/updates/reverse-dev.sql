GRANT ALL ON _timescaledb_internal.job_errors TO PUBLIC;

ALTER EXTENSION timescaledb DROP VIEW timescaledb_information.job_errors;

DROP VIEW timescaledb_information.job_errors;

DROP FUNCTION _timescaledb_internal.ping_data_node(NAME, INTERVAL);

CREATE OR REPLACE FUNCTION _timescaledb_internal.ping_data_node(node_name NAME) RETURNS BOOLEAN
AS '@MODULE_PATHNAME@', 'ts_data_node_ping' LANGUAGE C VOLATILE;
