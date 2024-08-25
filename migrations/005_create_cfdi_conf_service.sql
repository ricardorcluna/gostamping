CREATE TABLE cfdi_conf_service (
    srv_id SERIAL PRIMARY KEY,
    insys_id INTEGER,
    password_service VARCHAR(50),
    url_webservice VARCHAR(50),
    url_server VARCHAR(50)
);

ALTER TABLE cfdi_conf_service
ADD CONSTRAINT fk_isys_cfdi_sys
    FOREIGN KEY (insys_id)
    REFERENCES invoice_system(insys_id);