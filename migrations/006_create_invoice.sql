CREATE TABLE invoice (
    invoice_id SERIAL PRIMARY KEY,
    cln_id INTEGER, 
    created_at TIMESTAMP,
    updated_at TIMESTAMP
)

ALTER TABLE invoice
ADD CONSTRAINT fk_cln_inv
    FOREIGN KEY (cln_id)
    REFERENCES clients(cln_id);