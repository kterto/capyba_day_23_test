# SETUP ENVIRONMENT USING DART DEFINE

* Status: proposed by Ibiã
* Deciders: Kainã, Victor e Rodrigo
* Date: 2021-09-20

## Context and Problem Statement

Flutter use **Dart Define** option in the **flutter run** or **flutter build** commands as a way to
set environment variables in compilation time. It allows flutter to use **String.getFromEnvironment()**
function to get environment variables.

This ADR proposes to use **Dart Define** and Make commands to define environment variables in .env files
and pass those variables to the **run** and *build* commands through the Make command.

Dart Define option is not described in the Flutter documentation but you can find some clue running:
*flutter run --help*
*flutter build apk --help*
*flutter build ipa --help*
Help description:
``
Additional key-value pairs that will be available as constants
from the String.fromEnvironment, bool.fromEnvironment,
int.fromEnvironment, and double.fromEnvironment constructors.
Multiple defines can be passed by repeating "--dart-define"
multiple times.
``

## Considered Options

* Keep the way it is 

## Decision Outcome


### Positive Consequences

* The .env file definition will be similar to other frameworks.
* To define a new environment variable it's just necessary to add in .env file and in Environment entity.
* Environment variables are defined at compilation time not in execution time.
* It's not necessary to read a file to get the variables, and the EnvironmentRepository is not necessary.
* Make targets checks the existence of the .env file
* Less code to deal with

### Negative Consequences

* The make commands to run and build will be a little bit more complex, because they will need to read the .env files.
* New environment variables must be defined as *const* in the Environment entity

