-- Creazione della tabella payments e di un indice sulla colonna payment_method

CREATE TABLE payments (
    id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    amount DECIMAL(10, 2) NOT NULL,
    payment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    payment_method VARCHAR(50),
    status VARCHAR(20),
    transaction_id VARCHAR(100) UNIQUE,
    FOREIGN KEY (user_id) REFERENCES users(id)
);

-- Creazione di un indice sulla colonna payment_method della tabella payments
-- per velocizzare le query di ricerca per metodo di pagamento
-- La DDL contiene appositamente l'errore di sintassi per testare il rollback'
CREATE INDEX idx_payment_method ON payments();
