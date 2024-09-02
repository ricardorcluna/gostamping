CREATE TABLE cat_concepts (
    con_id SERIAL PRIMARY KEY,
    con_description VARCHAR(60),
    con_status BOOLEAN,
    unit_id INTEGER,
    prod_serv_cve VARCHAR(8)
)

ALTER TABLE cat_concepts
ADD CONSTRAINT fk_cvu_con
    FOREIGN KEY (unit_id)
    REFERENCES cat_cve_unit(unit_id);