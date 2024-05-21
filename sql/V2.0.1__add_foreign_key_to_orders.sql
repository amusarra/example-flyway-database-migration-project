-- Code 4 - Script di migrazione V2.0.1__add_foreign_key_to_orders.sql
ALTER TABLE orders ADD CONSTRAINT fk_user
FOREIGN KEY (user_id) REFERENCES users(id);
