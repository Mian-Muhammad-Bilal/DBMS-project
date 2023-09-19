/* 2023-01-13 15:31:06 [9 ms] */

create DATABASE pro;

/* 2023-01-13 15:31:48 [12 ms] */

use pro;

/* 2023-01-13 15:31:50 [24 ms] */

CREATE TABLE
    Person (
        person_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        name VARCHAR(255) NOT NULL,
        address VARCHAR(255) NOT NULL,
        phone VARCHAR(255) NOT NULL,
        email VARCHAR(255) NOT NULL
    );

/* 2023-01-13 15:32:12 [22 ms] */

CREATE TABLE
    Medical_Report (
        report_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        report_date DATE NOT NULL,
        blood_type VARCHAR(255) NOT NULL,
        last_donation_date DATE NOT NULL,
        donation_history VARCHAR(255) NOT NULL,
        report_details VARCHAR(255) NOT NULL
    );

/* 2023-01-13 15:32:14 [44 ms] */

CREATE TABLE
    Recipient (
        recipient_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        person_id INT NOT NULL,
        med_report_id INT NOT NULL,
        FOREIGN KEY (person_id) REFERENCES Person(person_id),
        Foreign Key (med_report_id) REFERENCES Medical_Report(report_id)
    );

/* 2023-01-13 15:32:16 [27 ms] */

CREATE TABLE
    Donor (
        donor_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        person_id INT NOT NULL,
        med_report_id INT NOT NULL,
        FOREIGN KEY (person_id) REFERENCES Person(person_id),
        Foreign Key (med_report_id) REFERENCES Medical_Report(report_id)
    );

/* 2023-01-13 15:32:19 [26 ms] */

CREATE TABLE
    Blood_Bank (
        blood_bank_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        name VARCHAR(255) NOT NULL,
        location VARCHAR(255) NOT NULL,
        inventory VARCHAR(255) NOT NULL,
        phone VARCHAR(255) NOT NULL,
        email VARCHAR(255) NOT NULL
    );

/* 2023-01-13 15:34:51 [32 ms] */

CREATE TABLE
    donates (
        donate_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        donor_id INT NOT NULL,
        blood_bank_id INT NOT NULL,
        date_donated DATE NOT NULL,
        FOREIGN KEY (donor_id) REFERENCES Donor(donor_id),
        FOREIGN KEY (blood_bank_id) REFERENCES Blood_Bank(blood_bank_id)
    );

/* 2023-01-13 15:38:20 [77 ms] */

use Blood_Donnation_system;

/* 2023-01-13 15:38:28 [22 ms] */

CREATE TABLE
    Person (
        person_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        name VARCHAR(255) NOT NULL,
        address VARCHAR(255) NOT NULL,
        phone VARCHAR(255) NOT NULL,
        email VARCHAR(255) NOT NULL
    );

/* 2023-01-13 15:38:33 [29 ms] */

CREATE TABLE
    Blood_Bank (
        blood_bank_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        name VARCHAR(255) NOT NULL,
        location VARCHAR(255) NOT NULL,
        inventory VARCHAR(255) NOT NULL,
        phone VARCHAR(255) NOT NULL,
        email VARCHAR(255) NOT NULL
    );

/* 2023-01-13 15:38:37 [26 ms] */

CREATE TABLE
    Medical_Report (
        report_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        report_date DATE NOT NULL,
        blood_type VARCHAR(255) NOT NULL,
        last_donation_date DATE NOT NULL,
        donation_history VARCHAR(255) NOT NULL,
        report_details VARCHAR(255) NOT NULL
    );

/* 2023-01-13 15:39:18 [39 ms] */

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

/* 2023-01-13 15:39:20 [39 ms] */

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

/* 2023-01-13 15:40:24 [56 ms] */

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

/* 2023-01-13 15:40:55 [56 ms] */

/* 2023-01-13 15:41:01 [7 ms] */

use Blood_Donnation_system;

/* 2023-01-13 15:41:02 [23 ms] */

CREATE TABLE
    Person (
        person_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        name VARCHAR(255) NOT NULL,
        address VARCHAR(255) NOT NULL,
        phone VARCHAR(255) NOT NULL,
        email VARCHAR(255) NOT NULL
    );

/* 2023-01-13 15:41:04 [30 ms] */

CREATE TABLE
    Medical_Report (
        report_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        report_date DATE NOT NULL,
        blood_type VARCHAR(255) NOT NULL,
        last_donation_date DATE NOT NULL,
        donation_history VARCHAR(255) NOT NULL,
        report_details VARCHAR(255) NOT NULL
    );

/* 2023-01-13 15:41:07 [25 ms] */

CREATE TABLE
    Blood_Bank (
        blood_bank_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        name VARCHAR(255) NOT NULL,
        location VARCHAR(255) NOT NULL,
        inventory VARCHAR(255) NOT NULL,
        phone VARCHAR(255) NOT NULL,
        email VARCHAR(255) NOT NULL
    );

/* 2023-01-13 15:41:10 [38 ms] */

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

/* 2023-01-13 15:41:12 [47 ms] */

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

/* 2023-01-17 22:35:42 [9 ms] */

use Blood_Donnation_system;

/* 2023-01-17 22:40:29 [15 ms] */

INSERT INTO `Person`
VALUES (
        01,
        'Ali',
        'Lahore',
        '03874560956',
        'Ali@gmail.com'
    );

/* 2023-01-17 22:49:00 [17 ms] */

INSERT INTO `Person`
VALUES (
        02,
        'Ahmed',
        'Karachi',
        '03874556398',
        'Ahmed@gmail.com'
    ), (
        03,
        'Bilal',
        'Islamabad',
        '03874509456',
        'Bilal@gmail.com'
    ), (
        04,
        'Aslam',
        'Faslabad',
        '038745609786',
        'Aslam@gmail.com'
    ), (
        05,
        'Hadi',
        'Multan',
        '03874067912',
        'Hadi@gmail.com'
    ), (
        06,
        'Wahab',
        'Sheikhupura',
        '038745629085',
        'Wahab@gmail.com'
    ), (
        07,
        'Daud',
        'Lahore',
        '03874560705',
        'Daud@gmail.com'
    ), (
        08,
        'Annas',
        'Lahore',
        '03209568097',
        'Anns@gmail.com'
    ), (
        09,
        'Fahad',
        'Karachi',
        '03874609876',
        'Fahad@gmail.com'
    ), (
        10,
        'Saad',
        'Islamabad',
        '034097456780',
        'Saad@gmail.com'
    );

/* 2023-01-17 23:03:31 [15 ms] */

INSERT INTO `Medical_Report`
VALUES (
        11,
        '2019-11-09',
        'A+',
        '2019-09-08',
        '1'
    );

/* 2023-01-17 23:15:39 [9 ms] */

INSERT INTO `Medical_Report`
VALUES (
        22,
        '2018-10-19',
        'B+',
        '2011-11-18',
        '0'
    ), (
        33,
        '2020-12-08',
        'B+',
        '2019-10-01',
        '0'
    ), (
        44,
        '2021-01-12',
        'B+',
        '2019-09-18',
        '1'
    ), (
        55,
        '2011-02-19',
        'O+',
        '2009-01-18',
        '1'
    ), (
        66,
        '2020-12-19',
        'AB+',
        '2019-09-08',
        '1'
    );

/* 2023-01-17 23:16:01 [8 ms] */

UPDATE `Medical_Report`
SET
    `Donated[WholeBlood(1)_OR_Plasma(0)]` = 1
WHERE `report_id` = 11;

/* 2023-01-17 23:40:12 [11 ms] */

INSERT INTO `Blood_Bank`
VALUES (
        1,
        'Chuktai_fundation',
        'Lahore',
        1,
        5
    );

/* 2023-01-17 23:43:50 [5 ms] */

INSERT INTO `Blood_Bank`
VALUES (
        2,
        'ShokarKhanam_fundation',
        'Karachi',
        0,
        0
    ), (3, 'Sultan', 'Islamabad', 1, 1), (
        4,
        'Mayo_fundation',
        'Lahore',
        1,
        4
    ), (5, 'Government', 'Multan', 0, 6);

/* 2023-01-17 23:49:06 [17 ms] */

INSERT INTO `Donor`
VALUES (101, 2, 33, 5), (102, 1, 22, 3), (103, 3, 55, 1), (104, 4, 11, 2), (105, 5, 44, 4), (111, 2, 33, 5);

/* 2023-01-17 23:51:15 [8 ms] */

INSERT INTO `Recipient`
VALUES (11, 1, 11, 2), (12, 2, 22, 3), (13, 3, 33, 4), (14, 4, 44, 5), (15, 5, 55, 1), (16, 6, 33, 2);

/* 2023-01-18 12:28:16 [8 ms] */

SELECT *
FROM `Donor`
    JOIN `Medical_Report` ON Donor.med_report_id = Medical_Report.report_id AND donor_id = 101;

/* 2023-01-18 12:28:45 [4 ms] */

SELECT *
FROM `Donor`
    JOIN `Medical_Report` ON Donor.med_report_id = Medical_Report.report_id AND donor_id = 102;

/* 2023-01-18 12:28:51 [1 ms] */

SELECT *
FROM `Donor`
    JOIN `Medical_Report` ON Donor.med_report_id = Medical_Report.report_id AND donor_id = 103;