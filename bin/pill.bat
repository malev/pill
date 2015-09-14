@echo off

IF "%~1"=="" (
  goto usage
) ELSE IF "%~1"=="init" (
  mkdir _pill\bin
  set CONDA_BIN_PATH="conda info --root"
  set CONDA_DEFAULT_ENV
) ELSE IF "%~1"=="in" (
  echo "Ready to go in"
) ELSE IF "%~1" == "out" (
  echo "Ready to go out"
) ELSE (
  echo "error"
  goto usage
  exit /b 1
)
exit /b

:usage
echo usage: pill [COMMAND]
echo.
echo SYNOPSIS
echo     Create a local python and conda environment in the current directory.
echo     When activated all the libraries will be installed and imported from
echo     the '_pill' directory in the root of your project.
echo.
echo USAGE
echo     Create and run temporal/local environments.
echo.
echo       $ pill init
echo       $ source pill in
echo       $ source pill out
echo.
echo COMMANDS
echo     init    Creates the .pill directory and create links.
echo     in      Modifies CONDA_DEFAULT_ENV and PATH to use
echo             the .pill directory and sets the PILL_NAME variable.
echo     out     Restores the previous CONDA_DEFAULT_ENV and PATH. Also
echo             unsets PILL_NAME.
echo.
exit /b

:create_symlinks

exit /b

:backup
set PILL_OLD_PATH=%PATH%
set PILL_OLD_CONDA_DEFAULT_ENV=%CONDA_DEFAULT_ENV%
set PILL_PROMPT=%PROMPT%
exit /b

:remove_current_conda
  set CONDA_BIN_PATH="conda info --root"
  set CONDA_BIN_PATH="%CONDA_BIN_PATH%\bin"
  PATH=:$PATH:
  PATH=${PATH//:$CONDA_BIN_PATH:/:}
exit /b
