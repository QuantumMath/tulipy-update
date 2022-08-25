# Mechanics

## Development environment

You need an environment with the right dependencies. A trick is
that the formatters/linters need to be specific versions, or the
warnings and errors may have changed which will make tests fail.
The simplest way to get the right environment is

```
> conda env create -f environment.yml
```

You can also look in that file to see which packages are needed and
then create the dev environment by hand as you see fit.

To install the dev environment for a specific Python version,
in this case 3.10, there are two steps.

```
> conda create -n tulipyconda-dev python=3.10
> conda env update -f environment.yml
```

NOTE: Do make sure to respect the version pins found in the
`environment.yml` file. In particular, different versions of
the reformatting package `yapf` may reformat the code in a
slightly different manner. This will introduce a number of
spurious changes to your local clone that will break testing
in CI if committed.

## Optional: Installing tulipyconda

It is not strictly necessary to install tulipyconda into
the development environment in order to run tests, but you
may wish to run the CLI and to do so we recommend installing
the package as editable into the `tulipyconda-dev` Conda
environment. Note that the `--no-deps` is added here since all
requirements have already been installed using the procedures
stated above.

```
> conda activate tulipyconda-dev
> pip install --no-deps -e .
```

## Running tests

The `setup.cfg` file configures pytest arguments for all the
arguments needed to run tests and to compute test coverage.

To run the tests,

```
> conda activate tulipyconda-dev
> pytest
```

You can also use the [VSCode Python test discovery](https://code.visualstudio.com/docs/python/testing#_test-discovery). It should automatically discover
the tests after configuring the project environment to `tulipyconda-dev`.
A VSCode launch configuration file `.vscode/launch.json` is included in this project
that enables [test debugging](https://code.visualstudio.com/docs/python/testing#_debug-tests).
