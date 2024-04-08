-- Set db only read mode
ALTER SYSTEM
SET default_transaction_read_only TO on;
SELECT pg_reload_conf();