CREATE TABLE clients (
    client_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL,
    phone_number VARCHAR(255) NOT NULL,
    UNIQUE (first_name, last_name)
);

CREATE TABLE loans (
    loan_id INT PRIMARY KEY AUTO_INCREMENT,
    client_id INT NOT NULL,
    amount DECIMAL(10, 2) NOT NULL,
    interest_rate DECIMAL(10, 2) NOT NULL,
    start_date DATETIME NOT NULL,
    end_date DATETIME NOT NULL,
    FOREIGN KEY (client_id) REFERENCES clients(client_id)
);

CREATE TABLE payments (
    payment_id INT PRIMARY KEY AUTO_INCREMENT,
    loan_id INT NOT NULL,
    payment_amount DECIMAL(10, 2) NOT NULL,
    payment_date DATETIME NOT NULL,
    FOREIGN KEY (loan_id) REFERENCES loans(loan_id)
);

CREATE TABLE loan_types (
    loan_type_id INT PRIMARY KEY AUTO_INCREMENT,
    type_name VARCHAR(255) NOT NULL,
    UNIQUE (type_name)
);

CREATE TABLE loan_details (
    loan_id INT NOT NULL,
    loan_type_id INT NOT NULL,
    PRIMARY KEY (loan_id, loan_type_id),
    FOREIGN KEY (loan_id) REFERENCES loans(loan_id),
    FOREIGN KEY (loan_type_id) REFERENCES loan_types(loan_type_id)
);
