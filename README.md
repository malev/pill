# Pill

```
  ,.--.   ,.--.
//  \  \ // \  \
\\   \ / \\  \ /
  `'--'   `'--'
```

Minimalistic conda environments.

## Description

It will create a `.kapsel` directory in the current path. It
will update environmental variables so that your conda packages
will now be installed in your new local environment.

# Installation

`conda install pill -y -c malev`

## Usage

```
usage: pill [COMMAND]

SYNOPSIS
    Create a local kapsel, conda-environment and python environment
    in the current directory. When activated all the libraries will
    be installed and imported from the '.kapsel' directory in the
    root of your project.

USAGE
    Create and run temporal/local kapsels.

      $ pill init
      $ source pill in
      $ source pill out

COMMANDS
    init    Creates the .kapsel directory
    in      Modifies KAPSEL_PREFIX, CONDA_DEFAULT_ENV and PATH to use
            the .kapsel directory and sets the KAPSEL_NAME variable.
    out     Restores the previous CONDA_DEFAULT_ENV and PATH. Also
            unsets KAPSEL_PREFIX and KAPSEL_NAME.
```

## Recommendations

After you create your new environment you should install `python`.

```
$ pill init
$ source pill in
$ conda install -y python=3.4
```

You can also instal python 2.7 but let's face it, it's time to start using
python 3.

## Inspiration

This software is based in [gst](https://github.com/tonchis/gst) and
[gs](https://github.com/soveran/gs). Minimalistic gemsets for ruby.
