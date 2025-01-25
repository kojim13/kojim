CREATE SCHEMA IF NOT EXISTS kojim;

CREATE TABLE kojim.transactions (
    id int PRIMARY KEY,
    postingperiod DATE ,
    tranid TEXT ,
    transactionnumber TEXT ,
    type TEXT 
);

CREATE TABLE kojim.transactions_lines (
    transaction INT REFERENCES kojim.transactions(id),
    id INT,
    entity INT ,
    subsidiary INT ,
    department INT 
);

CREATE TABLE kojim.transactions_accounting_lines (
    transaction INT REFERENCES kojim.transactions(id),
    transactionline INT ,
    accountingbook INT ,
    account INT ,
    netamount NUMERIC 
);

CREATE TABLE kojim.accounts (
    id int PRIMARY KEY,
    acctnumber INT ,
    accttype TEXT ,
    fullname TEXT ,
    issummary TEXT ,
    currency INT ,
    parent INT
);

CREATE TABLE kojim.departments (
    id int PRIMARY KEY,
    fullname TEXT 
);

CREATE TABLE kojim.entities (
    id int PRIMARY KEY,
    entitytitle TEXT ,
    isinactive TEXT ,
    isperson TEXT ,
    type TEXT 
);


CREATE TABLE kojim.subsidiary (
    id int PRIMARY KEY,
    country TEXT ,
    name TEXT 
);