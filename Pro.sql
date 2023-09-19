create DATABASE Blood_Donnation_system;

use Blood_Donnation_system;

CREATE TABLE
    Person (
        person_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        name VARCHAR(255) NOT NULL,
        address VARCHAR(255) NOT NULL,
        phone VARCHAR(255) NOT NULL,
        email VARCHAR(255) NOT NULL
    );

CREATE TABLE
    Medical_Report (
        report_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        report_date DATE NOT NULL,
        blood_type VARCHAR(255) NOT NULL,
        last_donation_date DATE NOT NULL,
        donation_history VARCHAR(255) NOT NULL,
        report_details VARCHAR(255) NOT NULL
    );

CREATE TABLE
    Blood_Bank (
        blood_bank_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        name VARCHAR(255) NOT NULL,
        location VARCHAR(255) NOT NULL,
        inventory VARCHAR(255) NOT NULL,
        phone VARCHAR(255) NOT NULL,
        email VARCHAR(255) NOT NULL
    );

CREATE TABLE
    Donor (
        donor_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        person_id INT NOT NULL,
        med_report_id INT NOT NULL,
        blood_bank_id INT,
        FOREIGN KEY (person_id) REFERENCES Person(person_id),
        Foreign Key (med_report_id) REFERENCES Medical_Report(report_id),
        FOREIGN KEY (blood_bank_id) REFERENCES Blood_Bank(blood_bank_id)
    );

CREATE TABLE
    Recipient (
        recipient_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        person_id INT NOT NULL,
        med_report_id INT NOT NULL,
        blood_bank_id INT,
        FOREIGN KEY (person_id) REFERENCES Person(person_id),
        Foreign Key (med_report_id) REFERENCES Medical_Report(report_id),
        FOREIGN KEY (blood_bank_id) REFERENCES Blood_Bank(blood_bank_id)
    );