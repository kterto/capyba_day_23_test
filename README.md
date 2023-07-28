# Projects_name

Project name

## Getting Started

We use fvm to control Flutters version. So first of all, ensure fvm is set and running in your machine.
Run this command to setup fvm:

```shell
make setup-fvm
```

Once set, you just need to run

```shell
make bootstrap
```

and you'll be prompted to enter a project name (following snake_case_convention as required for dart packages), and projects description.

After that, run:

```shell
make install
```

And now, flutter is set in the correct version. You can start implementing your code in the lib folder.
Refer to the Makefile to see other commands.
