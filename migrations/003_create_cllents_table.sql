CREATE TABLE clients (
    cln_id SERIAL PRIMARY KEY,
    cln_name VARCHAR(50),
    cln_lname_1 VARCHAR(50),
    cln_lname_2 VARCHAR(50),
    cln_email VARCHAR(80),
    cln_rfc VARCHAR(13),
    cfdi_use_id INTEGER,
    cfdi_regime_id INTEGER,
    cln_fisc_zip_code VARCHAR(5),
    cln_status BOOLEAN,
    created_at TIMESTAMP,
    updated_at TIMESTAMP
);

ALTER TABLE clients
ADD CONSTRAINT fk_cln_cfdi_use
    FOREIGN KEY (cfdi_use_id)
    REFERENCES cat_cfdi_use(cfdi_use_id),
ADD CONSTRAINT fk_cln_cfdi_regime
    FOREIGN KEY (cfdi_regime_id)
    REFERENCES cat_cfdi_regime(cfdi_regime_id);