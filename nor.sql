CREATE DATABASE nor;

use nor;

CREATE TABLE
    Person_Info (
        person_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        name VARCHAR(255) NOT NULL,
        address VARCHAR(255) NOT NULL
    );

CREATE TABLE
    Contact_Info (
        contact_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        phone VARCHAR(255) NOT NULL,
        email VARCHAR(255) NOT NULL,
        person_id INT NOT NULL,
        FOREIGN KEY (person_id) REFERENCES Person_Info(person_id)
    );

CREATE TABLE
    Medical_Info (
        med_info_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        blood_type VARCHAR(255) NOT NULL,
        report_details VARCHAR(255) NOT NULL
    );

CREATE TABLE
    Donation_Info (
        donation_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        last_donation_date DATE NOT NULL,
        donation_history VARCHAR(255) NOT NULL,
        med_info_id INT NOT NULL,
        FOREIGN KEY (med_info_id) REFERENCES Medical_Info(med_info_id)
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
        med_info_id INT NOT NULL,
        blood_bank_id INT,
        FOREIGN KEY (person_id) REFERENCES Person_Info(person_id),
        Foreign Key (med_info_id) REFERENCES Medical_Info(med_info_id),
        FOREIGN KEY (blood_bank_id) REFERENCES Blood_Bank(blood_bank_id)
    );

CREATE TABLE
    Recipient (
        recipient_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        person_id INT NOT NULL,
        med_info_id INT NOT NULL,
        blood_bank_id INT,
        FOREIGN KEY (person_id) REFERENCES Person_Info(person_id),
        Foreign Key (med_info_id) REFERENCES Medical_Info(med_info_id),
        FOREIGN KEY (blood_bank_id) REFERENCES Blood_Bank(blood_bank_id)
    );