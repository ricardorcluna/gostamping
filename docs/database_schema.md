# Database Schema

## Clients Table

| Column            | Type        | Description                                 |
| ----------------- | ----------- | ------------------------------------------- |
| cln_id            | INTEGER     | Primary key, auto-increment                 |
| cln_name          | VARCHAR(50) | Client's name                               |
| cln_lname_1       | VARCHAR(50) | Client's first last name                    |
| cln_lname_2       | VARCHAR(50) | Client's second last name                   |
| cln_email         | VARCHAR(50) | Client's email address, unique              |
| cln_rfc           | VARCHAR(13) | Client's RFC, unique except for generic RFC |
| cln_fisc_zip_code | SMALLINT    | Client's tax zip code                       |
| cfdi_use          | VARCHAR(4)  | Client's utility key for deductions         |
| cln_status        | BIT(1)      | Client's status                             |
| created_at        | TIMESTAMP   | Timestamp of creation                       |

