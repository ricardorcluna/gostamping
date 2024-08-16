# Database Schema

# Table of Contents
- [Database Schema](#database-schema)
- [Table of Contents](#table-of-contents)
  - [Tables](#tables)
    - [Clients Table](#clients-table)
    - [Cat\_cfdi\_use Table](#cat_cfdi_use-table)
    - [Invoice\_system Table](#invoice_system-table)
    - [Cfdi\_conf\_service Table](#cfdi_conf_service-table)
  - [Relationships](#relationships)
   
## Tables

### Clients Table
| Column            | Type        | Description                                                       |
| ----------------- | ----------- | ----------------------------------------------------------------- |
| cln_id            | INTEGER     | Primary key, auto-increment                                       |
| cln_name          | VARCHAR(50) | Client's first name                                               |
| cln_lname_1       | VARCHAR(50) | Client's first last name                                          |
| cln_lname_2       | VARCHAR(50) | Client's second last name                                         |
| cln_email         | VARCHAR(50) | Client's email address, must be unique                            |
| cln_rfc           | VARCHAR(13) | Client's RFC (Tax ID), unique except for generic RFC              |
| cfdi_use          | SMALLINT    | Foreign key to Cat_cfdi_use table                                 |
| cfdi_tax_regime   | SMALLINT    | Tax regime code as defined by SAT                                 |
| cln_fisc_zip_code | SMALLINT    | Client's tax residence postal code                                |
| cln_status        | BOOLEAN     | Flag to indicate whether the client is active (1) or inactive (0) |
| created_at        | TIMESTAMP   | Date and time when the client record was created                  |
| updated_at        | TIMESTAMP   | Date and time when the client record was last updated             |

### Cat_cfdi_use Table
| Column          | Type        | Description                                                           |
| --------------- | ----------- | --------------------------------------------------------------------- |
| cfdi_use_id     | SMALLINT    | Primary key, auto-increment                                           |
| cve_cfdi_use    | VARCHAR(50) | Code representing the CFDI use, as defined by SAT                     |
| description     | VARCHAR(50) | Name of the CFDI use                                                  |
| physical_person | BOOLEAN     | Indicates if the CFDI use is applicable to individuals (1) or not (0) |
| moral_person    | BOOLEAN     | Indicates if the CFDI use is applicable to companies (1) or not (0)   |
| created_at      | TIMESTAMP   | Date and time when the CFDI use record was created                    |
| updated_at      | TIMESTAMP   | Date and time when the CFDI use record was last updated               |

### Invoice_system Table
| Column           | Type        | Description                                                       |
| ---------------- | ----------- | ----------------------------------------------------------------- |
| insys_id         | SMALLINT    | Primary key, auto-increment                                       |
| insys_status     | BOOLEAN     | Flag to indicate whether the system is active (1) or inactive (0) |
| company_name     | VARCHAR(50) | Name of the company                                               |
| company_zip_code | SMALLINT    | Company's tax postal code                                         |
| company_rfc      | VARCHAR(13) | Company's RFC (Tax ID)                                            |
| cve_ubication    | VARCHAR(13) | postal code of the generic RFC                                    |
| comapny_email    | VARCHAR(50) | Company's email address                                           |
| cfdi_use         | SMALLINT    | Foreign key to Cat_cfdi_use table                                 |
| cfdi_tax_regime  | SMALLINT    | Tax regime code as defined by SAT                                 |
| created_at       | TIMESTAMP   | Date and time when the company record was created                 |
| updated_at       | TIMESTAMP   | Date and time when the company record was last updated            |

### Cfdi_conf_service Table
| Column           | Type      | Description                                                  |
| ---------------- | --------- | ------------------------------------------------------------ |
| srv_id           | SMALLINT  | Primary key, auto-increment                                  |
| insys_id         | SMALLINT  | Foreign key to Invoice_system Table                          |
| password_service | BOOLEAN   | Password to PAC [ Authorized Certification Providers (ACP) ] |
| url_webservice   | TIMESTAMP | Endpoint of PAC to stamping invoice                          |
| url_server       | TIMESTAMP | Url of PAC                                                   |

## Relationships

- **Clients**: Many-to-One relationship with **cfdi_use**
- **Invoice_system**: Many-to-One relationship with **cfdi_use**