# freeCodeCamp-celestial-bodies-database

[![PostgreSQL](https://img.shields.io/badge/PostgreSQL-12.9-336791)](https://www.postgresql.org)

A solution to freeCodeCamp's celestial bodies database project using PostgreSQL.

## Data from Chat-GPT

[Conversation](https://chat.openai.com/share/65def392-578b-441a-a2d4-076bad8e144d)

### Star Table

- galaxy_id INT FOREIGN KEY was added

### Planet Table

- is_habitable BOOLEAN was added
- Star Data was replaced with star_id INT FOREIGN KEY

### Moon Table

- Type Data was replaced with is_natural BOOLEAN
- Planet Data was replaced with planet_id INT FOREIGN KEY

### Asteroid Table

- Planet Data was replaced with planet_id INT FOREIGN KEY

## Schema

![universe-database-schema](https://github.com/not-josue/freeCodeCamp-celestial-bodies-database/assets/129870578/b90ba8bc-64f4-4e36-b0e2-bff1aecbe10f)



