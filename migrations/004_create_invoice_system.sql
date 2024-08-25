CREATE TABLE invoice_system (
    insys_id SERIAL PRIMARY KEY,
    insys_status BOOLEAN,
    company_name VARCHAR(80),
    company_zip_code VARCHAR(5),
    company_rfc VARCHAR(13),
    cve_ubication VARCHAR(13),
    comapny_email VARCHAR(50),
    cfdi_use_id INTEGER,
    cfdi_regime_id INTEGER,
    created_at TIMESTAMP,
    updated_at TIMESTAMP
);

ALTER TABLE invoice_system
ADD CONSTRAINT fk_isys_cfdi_use
    FOREIGN KEY (cfdi_use_id)
    REFERENCES cat_cfdi_use(cfdi_use_id),
ADD CONSTRAINT fk_isys_cfdi_regime
    FOREIGN KEY (cfdi_regime_id)
    REFERENCES cat_cfdi_regime(cfdi_regime_id);