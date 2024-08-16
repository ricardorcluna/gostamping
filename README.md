# Go Stamping SAT

# Table of Contents
- [Go Stamping SAT](#go-stamping-sat)
- [Table of Contents](#table-of-contents)
  - [Brief Description](#brief-description)
  - [Main Features](#main-features)
  - [Additional Notes](#additional-notes)
   
## Brief Description
This API is focused on the administration of CFDI 4.0 electronic invoices for their stamping before the SAT, using a database to obtain and store the information related to the invoices. It is built in Golang using the Chi framework, which allows an efficient performance and a modular architecture.

## Main Features
This Golang API for stamping CFDI 4.0 electronic invoices before the SAT offers the following features:

* CFDI 4.0 Invoice Stamping:
  * Allows the stamping of electronic invoices complying with SAT requirements. It uses an integration with a PAC to perform the stamping in a test environment.
* Invoice Management:
  * Stores and manages invoice information in a database, allowing the consultation, creation, and updating of invoices.
* XML Validation:
  * Validates the format and structure of the XML before proceeding with stamping, ensuring that it complies with SAT specifications.
* Integration with SAT Certificates:
  * Configures and manages the .cer and .key certificates required for authentication and digital signature of invoices.
* Error Handling:
  * Provides robust error handling, with detailed messages that make it easy to identify and troubleshoot problems during the stamping process.
* Documentation and Testing:
  * Includes clear documentation and usage examples to facilitate integration of the API into other systems.
  * Provides endpoints for testing, allowing you to simulate stamping in a development environment without affecting production.

## Additional Notes

**SAT Certificate Registration**
In order to stamp invoices in the test environment, you need to obtain the necessary certificates (.cer, .key and private key) from SAT. These certificates can be registered through the SAT portal. Here you have the necessary links:

[Obtain SAT Certificates](http://omawww.sat.gob.mx/tramitesyservicios/Paginas/certificado_sello_digital.htm) - Instructions to obtain and register the certificates.

**Demo PAC for Test Stampings** \
It is possible to use a PAC in demo mode to perform test stampings. This is useful to make sure your implementation is working properly before moving to a production environment.

[PAC Demo SAT](https://demo-facturacion.finkok.com/) - Information on how to use a PAC in demo mode.