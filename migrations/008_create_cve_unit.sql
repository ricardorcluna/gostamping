CREATE TABLE cat_cve_unit (
    unit_id SERIAL PRIMARY KEY,
    unit_cve VARCHAR(3),
    con_description VARCHAR(60),
    con_status BOOLEAN
)