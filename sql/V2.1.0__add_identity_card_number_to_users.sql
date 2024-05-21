-- V2.1.0__add_identity_card_number_to_users.sql

-- Aggiunta di una nuova colonna identity_card_number alla tabella users
ALTER TABLE users
ADD COLUMN identity_card_number VARCHAR(20) UNIQUE;
