-- Define a procedure to import CSV data into a specified table
CREATE OR REPLACE PROCEDURE data_import(tablename varchar, variable varchar)
LANGUAGE plpgsql
AS $$
DECLARE
    -- Modify the csv path to the location of the csv files on your system
    tabdir varchar := 'C:/Users/higas/Downloads/Future Assignments Bootcamp/Project 2/Starter_Files/Resources/';
    dir varchar := CONCAT(tabdir, variable, '.csv');
BEGIN
    EXECUTE format('COPY %I FROM %L DELIMITER '','' CSV HEADER', tablename, dir);
END;
$$;
---------------------------------------- Contacts Table -------------------------------------
-- Create a Contacts Table
CREATE TABLE contacts (
    contact_id int PRIMARY KEY NOT NULL,
    first_name varchar(255) NOT NULL,
    last_name varchar(255) NOT NULL,
    email varchar(255) NOT NULL
);
-- Import Contacts Data from .csv File
\copy contacts FROM 'C:/Users/higas/Downloads/Future Assignments Bootcamp/Project 2/Starter_Files/Resources/contacts.csv' DELIMITER ',' CSV HEADER;
-- Contacts Table View
SELECT * FROM contacts;
---------------------------------------- Category Table -------------------------------------
-- Create a Category Table
CREATE TABLE category (
    category_id char(4) PRIMARY KEY NOT NULL,
    category varchar(255) NOT NULL
);
-- Import Category Data from .csv File
\copy category FROM 'C:/Users/higas/Downloads/Future Assignments Bootcamp/Project 2/Starter_Files/Resources/category.csv' DELIMITER ',' CSV HEADER;
-- Category Table View
SELECT * FROM category;
---------------------------------------- Subcategory Table ----------------------------------
-- Create a Subcategory Table
CREATE TABLE subcategory (
    subcategory_id varchar(10) PRIMARY KEY NOT NULL,
    subcategory varchar(255) NOT NULL
);
-- Import Subcategory Data from .csv File
\copy subcategory FROM 'C:/Users/higas/Downloads/Future Assignments Bootcamp/Project 2/Starter_Files/Resources/subcategory.csv' DELIMITER ',' CSV HEADER;
-- Subcategory Table View
SELECT * FROM subcategory;
-------------------------------------- Campaign Table ---------------------------------------
-- Create a Campaign Table
CREATE TABLE campaign (
    cf_id int PRIMARY KEY NOT NULL,
    contact_id int NOT NULL,
    company_name varchar(255) NOT NULL,
    description varchar(255) NOT NULL,
    goal decimal NOT NULL,
    pledged decimal NOT NULL,
    outcome varchar(255) NOT NULL,
    backers_count int NOT NULL,
    country char(2) NOT NULL,
    currency char(3) NOT NULL,
    launched_date date NOT NULL,
    end_date date NOT NULL,
    category_id char(4) NOT NULL,
    subcategory_id varchar(10) NOT NULL,
    FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
    FOREIGN KEY (category_id) REFERENCES category(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);
-- Import Campaign Data from .csv File
\copy campaign FROM 'C:/Users/higas/Downloads/Future Assignments Bootcamp/Project 2/Starter_Files/Resources/campaign.csv' DELIMITER ',' CSV HEADER;
-- Campaign Table View
SELECT * FROM campaign;
