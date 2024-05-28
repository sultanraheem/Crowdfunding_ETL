-- Campaign Table for Crowdfunding

CREATE TABLE Campaign (
    -- Crowdfunding ID, Primary Key
    cf_id INT PRIMARY KEY,
    -- Contact ID, Foreign Key referencing Contacts
    contact_id INT NOT NULL,
    -- Company Name, VARCHAR with length limit
    company_name VARCHAR(255) NOT NULL,
    -- CF Description, VARCHAR with length limit
    description VARCHAR(255) NOT NULL,
    -- CF Goal, DECIMAL data type
    goal DECIMAL(10, 2) NOT NULL,
    -- CF Pledged, DECIMAL data type
    pledged DECIMAL(10, 2) NOT NULL,
    -- CF Outcome, VARCHAR with length limit
    outcome VARCHAR(255) NOT NULL,
    -- CF Backers Count, INT data type
    backers_count INT NOT NULL,
    -- Country, CHAR with length limit
    country CHAR(2) NOT NULL,
    -- Currency, CHAR with length limit
    currency CHAR(3) NOT NULL,
    -- Launched Date, DATE data type
    launched_date DATE NOT NULL,
    -- End Date, DATE data type
    end_date DATE NOT NULL,
    -- Category ID, Foreign Key referencing Category
    category_id CHAR(4) NOT NULL,
    -- Subcategory ID, Foreign Key referencing Subcategory
    subcategory_id VARCHAR(10) NOT NULL,
    CONSTRAINT fk_campaign_contact FOREIGN KEY (contact_id) REFERENCES Contacts(contact_id),
    CONSTRAINT fk_campaign_category FOREIGN KEY (category_id) REFERENCES Category(category_id),
    CONSTRAINT fk_campaign_subcategory FOREIGN KEY (subcategory_id) REFERENCES Subcategory(subcategory_id)
);

-- Contacts Table
CREATE TABLE Contacts (
    -- Contacts ID, Primary Key
    contact_id INT PRIMARY KEY,
    -- First Name, VARCHAR with length limit
    first_name VARCHAR(255) NOT NULL,
    -- Last Name, VARCHAR with length limit
    last_name VARCHAR(255) NOT NULL,
    -- Email, VARCHAR with length limit
    email VARCHAR(255) NOT NULL
);

-- Category Table
CREATE TABLE Category (
    -- Category ID, Primary Key
    category_id CHAR(4) PRIMARY KEY,
    -- Category Name, VARCHAR with length limit
    category VARCHAR(255) NOT NULL
);

-- Subcategory Table
CREATE TABLE Subcategory (
    -- Subcategory ID, Primary Key
    subcategory_id VARCHAR(10) PRIMARY KEY,
    -- Subcategory Name, VARCHAR with length limit
    subcategory VARCHAR(255) NOT NULL
);