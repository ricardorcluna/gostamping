
# Table of Contents
- [Table of Contents](#table-of-contents)
  - [Tables](#tables)
    - [Clients Table](#clients-table)
    - [Invoice\_system Table](#invoice_system-table)
    - [Cat\_cfdi\_use Table](#cat_cfdi_use-table)
    - [Cat\_cfdi\_regime Table](#cat_cfdi_regime-table)
    - [Cfdi\_conf\_service Table](#cfdi_conf_service-table)
    - [Invoice Table](#invoice-table)
    - [Invoice\_x\_xml Table](#invoice_x_xml-table)
    - [Cat\_unit Table](#cat_unit-table)
    - [Cat\_concepts Table](#cat_concepts-table)
    - [Movements Table](#movements-table)
  - [Relationships](#relationships)
   
## Tables

### Clients Table
| Column            | Type        | Description                                                       |
| ----------------- | ----------- | ----------------------------------------------------------------- |
| cln_id            | SERIAL      | Primary key, auto-increment                                       |
| cln_name          | VARCHAR(50) | Client's first name                                               |
| cln_lname_1       | VARCHAR(50) | Client's first last name                                          |
| cln_lname_2       | VARCHAR(50) | Client's second last name                                         |
| cln_email         | VARCHAR(80) | Client's email address, must be unique                            |
| cln_rfc           | VARCHAR(13) | Client's RFC (Tax ID), unique except for generic RFC              |
| cfdi_use_id       | INTEGER     | Foreign key to Cat_cfdi_use table                                 |
| cfdi_regime_id    | INTEGER     | Foreign key to Cat_cfdi_regime table                              |
| cln_fisc_zip_code | VARCHAR(5)  | Client's tax residence postal code                                |
| cln_status        | BOOLEAN     | Flag to indicate whether the client is active (1) or inactive (0) |
| created_at        | TIMESTAMP   | Date and time when the client record was created                  |
| updated_at        | TIMESTAMP   | Date and time when the client record was last updated             |

### Invoice_system Table
| Column           | Type        | Description                                                       |
| ---------------- | ----------- | ----------------------------------------------------------------- |
| insys_id         | SERIAL      | Primary key, auto-increment                                       |
| insys_status     | BOOLEAN     | Flag to indicate whether the system is active (1) or inactive (0) |
| company_name     | VARCHAR(80) | Name of the company                                               |
| company_zip_code | VARCHAR(5)  | Company's tax postal code                                         |
| company_rfc      | VARCHAR(13) | Company's RFC (Tax ID)                                            |
| cve_ubication    | VARCHAR(13) | postal code of the generic RFC                                    |
| comapny_email    | VARCHAR(50) | Company's email address                                           |
| cfdi_use_id      | INTEGER     | Foreign key to Cat_cfdi_use table                                 |
| cfdi_regime_id   | INTEGER     | Foreign key to Cat_cfdi_regime table                              |
| created_at       | TIMESTAMP   | Date and time when the company record was created                 |
| updated_at       | TIMESTAMP   | Date and time when the company record was last updated            |

### Cat_cfdi_use Table
| Column          | Type        | Description                                                           |
| --------------- | ----------- | --------------------------------------------------------------------- |
| cfdi_use_id     | SERIAL      | Primary key, auto-increment                                           |
| cve_cfdi_use    | VARCHAR(3)  | Code representing the CFDI use, as defined by SAT                     |
| description     | VARCHAR(80) | Name of the CFDI use                                                  |
| physical_person | BOOLEAN     | Indicates if the CFDI use is applicable to individuals (1) or not (0) |
| moral_person    | BOOLEAN     | Indicates if the CFDI use is applicable to companies (1) or not (0)   |
| created_at      | TIMESTAMP   | Date and time when the CFDI use record was created                    |
| updated_at      | TIMESTAMP   | Date and time when the CFDI use record was last updated               |

### Cat_cfdi_regime Table
| Column          | Type        | Description                                                              |
| --------------- | ----------- | ------------------------------------------------------------------------ |
| cfdi_regime_id  | SERIAL      | Primary key, auto-increment                                              |
| cve_cfdi_regime | VARCHAR(3)  | Code representing the CFDI regime, as defined by SAT                     |
| description     | VARCHAR(80) | Name of the CFDI regime                                                  |
| physical_person | BOOLEAN     | Indicates if the CFDI regime is applicable to individuals (1) or not (0) |
| moral_person    | BOOLEAN     | Indicates if the CFDI regime is applicable to companies (1) or not (0)   |
| created_at      | TIMESTAMP   | Date and time when the CFDI regime record was created                    |
| updated_at      | TIMESTAMP   | Date and time when the CFDI regime record was last updated               |

### Cfdi_conf_service Table
| Column           | Type        | Description                                                  |
| ---------------- | ----------- | ------------------------------------------------------------ |
| srv_id           | SERIAL      | Primary key, auto-increment                                  |
| insys_id         | INTEGER     | Foreign key to Invoice_system Table                          |
| password_service | VARCHAR(50) | Password to PAC [ Authorized Certification Providers (ACP) ] |
| url_webservice   | VARCHAR(50) | Endpoint of PAC to stamping invoice                          |
| url_server       | VARCHAR(50) | Url of PAC                                                   |

### Invoice Table
| Column     | Type      | Description                                            |
| ---------- | --------- | ------------------------------------------------------ |
| invoice_id | SERIAL    | Primary key, auto-increment                            |
| cln_id     | INTEGER   | Foreign key to Clients table                           |
| created_at | TIMESTAMP | Date and time when the invoice record was created      |
| updated_at | TIMESTAMP | Date and time when the invoice record was last updated |

### Invoice_x_xml Table
| Column                | Type        | Description                                                                          |
| --------------------- | ----------- | ------------------------------------------------------------------------------------ |
| invoice_id            | INTEGER     | Primary key, Foreign key to Invoice table                                            |
| xml_name              | VARCHAR(80) | Name of the XML file associated with the invoice                                     |
| original_string       | VARCHAR(50) | Original string that is part of the XML's content, often used for digital signatures |
| encrypted_string      | VARCHAR(50) | Encrypted version of the original string                                             |
| xml_text              | XML         | Full content of the XML file                                                         |
| document_type         | VARCHAR(6)  |                                                                                      |
| encrypted_string_cfdi | VARCHAR(50) |                                                                                      |
| encrypted_string_sat  | VARCHAR(50) |                                                                                      |
| original_string_sat   | VARCHAR(50) |                                                                                      |
| UUID                  | UUID        | Universally Unique Identifier (UUID) for the invoice                                 |
| total_amount          | VARCHAR(12) | Total amount of the invoice                                                          |
| payment_method        | VARCHAR(50) |                                                                                      |
| stamping_version      | UUID        |                                                                                      |
| rfc_prov_certif       | TIMESTAMP   |                                                                                      |
| payment_form          | VARCHAR(50) |                                                                                      |
| xml_type              | UUID        |                                                                                      |
| created_at            | TIMESTAMP   | Date and time when the invoice_x_xml record was created                              |
| updated_at            | TIMESTAMP   | Date and time when the invoice_x_xml record was last updated                         |

### Cat_unit Table
| Column          | Type        | Description                                                     |
| --------------- | ----------- | --------------------------------------------------------------- |
| unit_id         | SERIAL      | Primary key, auto-increment                                     |
| con_description | VARCHAR(60) | Type of unit                                                    |
| con_status      | BOOLEAN     | Flag to indicate whether the unit is active (1) or inactive (0) |


### Cat_concepts Table
| Column          | Type        | Description                                                          |
| --------------- | ----------- | -------------------------------------------------------------------- |
| con_id          | SERIAL      | Primary key, auto-increment                                          |
| con_description | VARCHAR(60) | Name of the concept                                                  |
| con_status      | BOOLEAN     | Flag to indicate whether the concept is active (1) or inactive (0)   |
| unit_id         | INTEGER     | Foreign key to Cat_unit table                                        |
| unit_cve        | SMALLINT    | Stores the SAT "ACT" code from the c_Claveunidad catalog             |
| prod_serv_cve   | SMALLINT    | Stores the SAT product/service code from the c_ClaveProdServ catalog |

### Movements Table
| Column          | Type           | Description                                             |
| --------------- | -------------- | ------------------------------------------------------- |
| mov_id          | SERIAL         | Primary key, auto-increment                             |
| cln_id          | INTEGER        | Foreign key to Clients table                            |
| con_id          | INTEGER        | Foreign key to Cat_concepts table                       |
| invoice_id      | INTEGER        | Foreign key to Invoices table                           |
| mov_discount    | NUMERIC(10, 2) | Total amount of the discount applied to the movement    |
| mov_quantity    | NUMERIC(10, 2) | Quantity of the product or service of the movement      |
| mov_price       | NUMERIC(10, 2) | Price of the concept of the movement                    |
| mov_subtotal    | NUMERIC(10, 2) | Subtotal of the the movement before taxes               |
| mov_percent_tax | NUMERIC(10, 2) | Percent of taxes applied to the movement                |
| mov_amount_tax  | NUMERIC(10, 2) | Total amoun of taxes applied to the movement            |
| mov_total       | NUMERIC(10, 2) | Total of the movemnt after taxes                        |
| mov_paid        | NUMERIC(10, 2) | Total paid for the client                               |
| created_at      | TIMESTAMP      | Date and time when the movement record was created      |
| updated_at      | TIMESTAMP      | Date and time when the movement record was last updated |


## Relationships

- **Clients**: Many-to-One relationship with **Cat_cfdi_use**
- **Clients**: Many-to-One relationship with **Cat_cfdi_regime**

- **Invoice**: Many-to-One relationship with **clients**  
- **Invoice**: Many-to-Many relationship with **invoice_x_xml**

- **Invoice_system**: Many-to-One relationship with **Cat_cfdi_use**
- **Invoice_system**: Many-to-One relationship with **Cat_cfdi_regime**

- **Movements**: Many-to-One relationship with **client**
- **Movements**: Many-to-One relationship with **Invoice**
- **Movements**: Many-to-One relationship with **Cat_concepts**