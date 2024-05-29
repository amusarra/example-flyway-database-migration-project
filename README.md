# Esempio di Database Migration con Flyway

Questo progetto è un esempio di come poter utilizzare Flyway (attraverso la CLI)
per la migrazione del database.

Questo progetto è stato creato come compendio alla presentazione
[Database Versioning - Come gestire le migrazioni del database in modo efficace](https://database-versioning.dontesta.it/) il cui codice sorgente
è disponibile su [GitHub](https://github.com/amusarra/database-versioning-slide)

## Requisiti
I requisiti per poter eseguire questo progetto sono:
- Flyway CLI OSS 10.x (https://www.red-gate.com/products/flyway/community/download/)
- Istanza di un database PostgreSQL 16.x

Nel caso in vogliate utilizzare un'istanza di PostgreSQL in un container Docker, è possibile utilizzare il file `docker-compose.yml` presente nella cartella `docker`. In questo caso, è necessario avere Docker e Docker Compose installati sul proprio sistema o anche Podman e Podman Compose.

## Struttura del progetto
La struttura del progetto è la seguente:

1. flyway.toml: file di configurazione di Flyway
2. migrate.sh: script bash per eseguire le migrazioni
3. sql: cartella contenente i file SQL per le migrazioni
4. docker/docker-compose.yml: file docker-compose per avviare un'istanza di PostgreSQL

## Quick Start
Per eseguire il processo di migrazione del database usando l'istanza di PostgreSQL in un container Docker, eseguire i seguenti comandi:

```bash
# Clonazione del repository git (se volete anche il specifico tag)
git clone https://github.com/amusarra/example-flyway-database-migration-project.git

# Entrare nella cartella del progetto
cd example-flyway-database-migration-project

# Avvio dell'istanza di PostgreSQL
docker-compose -f docker/docker-compose.yml up -d

# Esecuzione delle migrazioni
./migrate.sh
```
Console 1 - Esecuzione della prima migrazione del database

A seguire l'output del comando `./migrate.sh` eseguito sullo schema del database 2.1.0 per passare allo schema 2.2.1.

```text
Flyway OSS Edition 10.13.0 by Redgate

See release notes here: https://rd.gt/416ObMi
Database: jdbc:postgresql://localhost:5432/migration_db (PostgreSQL 16.3)
Successfully validated 6 migrations (execution time 00:00.022s)
Current version of schema "public": 2.1.0
Migrating schema "public" to version "2.2.1 - create payments table and index"
Successfully applied 1 migration to schema "public", now at version v2.2.1 (execution time 00:00.019s)
Flyway OSS Edition 10.13.0 by Redgate

See release notes here: https://rd.gt/416ObMi
Database: jdbc:postgresql://localhost:5432/migration_db (PostgreSQL 16.3)
Schema version: 2.2.1

+-----------+---------+-----------------------------------+------+---------------------+---------+----------+
| Category  | Version | Description                       | Type | Installed On        | State   | Undoable |
+-----------+---------+-----------------------------------+------+---------------------+---------+----------+
| Versioned | 1.0.0   | create users table                | SQL  | 2024-05-29 09:43:36 | Success | No       |
| Versioned | 1.1.0   | add email to users                | SQL  | 2024-05-29 09:43:36 | Success | No       |
| Versioned | 2.0.0   | create orders table               | SQL  | 2024-05-29 09:43:36 | Success | No       |
| Versioned | 2.0.1   | add foreign key to orders         | SQL  | 2024-05-29 09:43:36 | Success | No       |
| Versioned | 2.1.0   | add identity card number to users | SQL  | 2024-05-29 09:43:36 | Success | No       |
| Versioned | 2.2.1   | create payments table and index   | SQL  | 2024-05-29 09:51:14 | Success | No       |
+-----------+---------+-----------------------------------+------+---------------------+---------+----------+
```
Console 2 - Output del comando `./migrate.sh` eseguito sullo schema del database 2.1.0 per passare allo schema 2.2.1

Su Asciinema è disponibile la registrazione di diverse migrazione.

[![asciicast](https://asciinema.org/a/660361.svg)](https://asciinema.org/a/660361)

Registrazione 1 - Esecuzione scenari di migrazione
