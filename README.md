# Microfinance-system
an SQL data structure for a Microfinance system:

This data structure includes five tables: clients, loans, payments, loan_types, and loan_details. The clients table stores information about clients, including their first name, last name, address, and phone number. The loans table stores information about loans, including the client ID, loan amount, interest rate, start date, and end date. The payments table stores information about payments, including the loan ID, payment amount, and payment date. The loan_types table stores information about loan types, including the type name. The loan_details table stores the relationships between loans and loan types, linking each loan to one or more loan types.

The relationships between the tables are enforced through foreign key constraints, ensuring that a loan and its payments are only linked to an existing client, and that a loan is linked to one or more loan types through the loan_details table. The clients table and the loan_types table also have unique constraints on the first_name, last_name and type_name columns, respectively, ensuring that each client and loan type has a unique name.
