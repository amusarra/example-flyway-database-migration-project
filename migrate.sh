#!/usr/bin/env bash

# Assicurati che Flyway sia installato e che il comando `flyway` sia disponibile nel PATH
# Puoi installare Flyway seguendo le istruzioni
# qui: https://documentation.red-gate.com/fd/command-line-184127404.html

# Esegui la migrazione
flyway migrate

# Visualizza lo stato delle migrazioni
flyway info
