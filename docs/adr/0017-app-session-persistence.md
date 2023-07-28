# App Session Persistence

- Status: accepted
- Deciders: Silas, Rodrigo e Kainã
- Date: 01/02/2021

## Considered Options

- SessionRepository that depends with SotorageRepository and used the Session freezed Union Type to represent the state
- Controllers and or usecases can access SessionRepository in order to define points to persist or clear saved sessions

## Decision Outcome

- SessionRepository that depends with SotorageRepository and used the Session freezed Union Type to represent the state
