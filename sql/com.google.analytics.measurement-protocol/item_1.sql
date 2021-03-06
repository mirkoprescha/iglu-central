-- AUTO-GENERATED BY igluctl DO NOT EDIT
-- Generator: igluctl 0.3.0
-- Generated: 2018-01-22 08:40

CREATE SCHEMA IF NOT EXISTS atomic;

CREATE TABLE IF NOT EXISTS atomic.com_google_analytics_measurement_protocol_item_1 (
    "schema_vendor"  VARCHAR(128)    ENCODE RUNLENGTH NOT NULL,
    "schema_name"    VARCHAR(128)    ENCODE RUNLENGTH NOT NULL,
    "schema_format"  VARCHAR(128)    ENCODE RUNLENGTH NOT NULL,
    "schema_version" VARCHAR(128)    ENCODE RUNLENGTH NOT NULL,
    "root_id"        CHAR(36)        ENCODE RAW       NOT NULL,
    "root_tstamp"    TIMESTAMP       ENCODE LZO       NOT NULL,
    "ref_root"       VARCHAR(255)    ENCODE RUNLENGTH NOT NULL,
    "ref_tree"       VARCHAR(1500)   ENCODE RUNLENGTH NOT NULL,
    "ref_parent"     VARCHAR(255)    ENCODE RUNLENGTH NOT NULL,
    "name"           VARCHAR(500)    ENCODE LZO       NOT NULL,
    "transaction_id" VARCHAR(500)    ENCODE LZO       NOT NULL,
    "category"       VARCHAR(500)    ENCODE LZO,
    "code"           VARCHAR(500)    ENCODE LZO,
    "currency_code"  VARCHAR(10)     ENCODE LZO,
    "price"          DECIMAL (36, 2) ENCODE LZO,
    "quantity"       BIGINT          ENCODE LZO,
    FOREIGN KEY (root_id) REFERENCES atomic.events(event_id)
)
DISTSTYLE KEY
DISTKEY (root_id)
SORTKEY (root_tstamp);

COMMENT ON TABLE atomic.com_google_analytics_measurement_protocol_item_1 IS 'iglu:com.google.analytics.measurement-protocol/item/jsonschema/1-0-0';
