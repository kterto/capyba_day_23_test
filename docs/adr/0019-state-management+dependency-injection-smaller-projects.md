# STATE MANAGEMENT AND DEPENDENCY INJECTION FOR SMALLER PROJECTS

- Status: proposed by Kainã
- Deciders: Kainã, Victor
- Date: 2022-04-10

## Context and Problem Statement

Although the `Fluter_Bloc` library and `get_it` are great solutions for state management and for service locator,
bloc could present more boilerplate and structure then what is necessary for smaller projects.

This adr proposes to use `Flutter_riverpod` as a single solution for state management and dependency injection,
when it comes to smaller and faster growing projects.

## Considered Options

- keep things the way they are
- use `Flutter_riverpod`instead

## Decision Outcome

## Positive Consequences

- Faster and more efficient development
- one less dependency

## Negative consequences

- Potencial for faster increasing code entropy
