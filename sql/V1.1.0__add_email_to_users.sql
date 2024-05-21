-- Code 2 - Script di migrazione V1.1.0__add_email_to_users.sql
ALTER TABLE users ADD COLUMN email VARCHAR(100);
