CREATE TABLE cat_cfdi_use (
    cfdi_use_id SERIAL PRIMARY KEY,
    cvc_cfdi_use VARCHAR(3),
    description VARCHAR(80),
    physical_person BOOLEAN,
    moral_person BOOLEAN,
    created_at TIMESTAMP,
    updated_at TIMESTAMP
)