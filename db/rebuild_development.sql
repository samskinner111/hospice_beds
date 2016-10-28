-- Setup the MySQL databases
set client_encoding='utf8';

DROP DATABASE IF EXISTS hb_development;
DROP DATABASE IF EXISTS hb_test;

CREATE DATABASE hb_development;
CREATE DATABASE hb_test;

GRANT ALL PRIVILEGES ON DATABASE hb_development TO hb_web;
GRANT ALL PRIVILEGES ON DATABASE hb_test TO hb_web;

ALTER DATABASE hb_development OWNER  TO hb_web;
ALTER DATABASE hb_test OWNER TO hb_web;