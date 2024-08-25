CREATE TABLE cat_cfdi_regime (
    cfdi_regime_id SERIAL PRIMARY KEY,
    cve_cfdi_regime VARCHAR(3),
    description VARCHAR(80),
    physical_person BOOLEAN,
    moral_person BOOLEAN,
    created_at TIMESTAMP,
    updated_at TIMESTAMP
);