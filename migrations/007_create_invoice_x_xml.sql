CREATE TABLE invoice_x_xml (
    xml_id SERIAL PRIMARY KEY,
    xml_name VARCHAR(80),
    original_string TEXT,
    encrypted_string TEXT,
    xml_text XML,
    document_type
)