# Database Normalization for Airbnb Project

## Introduction
Normalization is the process of organizing data to minimize redundancy and improve data integrity.  
This project follows normalization principles up to Third Normal Form (3NF).

## Steps Applied

### First Normal Form (1NF)
- Ensured all columns contain atomic values.
- Removed repeating groups and arrays.

### Second Normal Form (2NF)
- Removed partial dependencies by ensuring all non-key attributes depend on the full primary key.

### Third Normal Form (3NF)
- Removed transitive dependencies by separating related data into distinct tables.

## How It Applies to Our Design
- User and Property are separate entities with clear relationships.
- Booking connects users and properties without redundant data.
- Payments and Reviews reference Booking and Property respectively.
- Messages have sender and recipient linked to User.
