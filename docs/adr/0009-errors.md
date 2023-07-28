# Errors

- Status: accepted
- Deciders: Silas, Rodrigo e Kainã
- Date: 01/02/2021

## Considered Options

- Abstract class AppError, and implementations for specific errors

obs Global errors and Context specific errors (First Option is to use SLUGS from the backend as msgs to the developer)

## Decision Outcome

- Abstract Class AppError with specific implementations for each type of error
