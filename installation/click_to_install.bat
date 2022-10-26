@ECHO OFF
:: author = Francisco Navarro (@franktoffel)
:: License =  BSD-Clause 3
:: GH = github.com/industrial-data

set PTH=C:\ProgramData\Miniforge_JMP

if exist C:\ProgramData\Miniforge_JMP\ echo "Folder already exists"
if not exist C:\ProgramData\Miniforge_JMP\ mkdir %PTH%


echo Installing miniforge ... && echo.
timeout 3

echo Check for any inconclusive antivirus warnings... && echo.
timeout 1

echo If installation is blocked, close this window and try downloading the latest version of miniforge... && echo.
timeout 1


:: Miniforge is prefered to avoid license issues
:: To download --> https://github.com/conda-forge/miniforge#miniforge
:: Yet Solvay antivirus does not recognize this file
start /wait "" Miniforge3-Windows-x86_64.exe /S /InstallationType=JustMe /AddToPath=0 /RegisterPython=0 /NoRegistry=1 /D=%PTH%



echo Miniforge installed && echo.
timeout 3

:: Loading Anaconda Prompt (Miniforge)

echo Loading Anaconda Prompt (Miniforge) with system variables and path... && echo.
timeout 3

CALL %PTH%\Scripts\activate.bat %PTH%

:: Installing packages

timeout 3
echo Installing conda-forge common packages && echo.
timeout 3

:: Using --file requirements.txt and --yes to install all files
start /wait /B  ""  conda install -y -c conda-forge --file package-list_min.txt

:: Alternative, direct call to packages instead of using requirements file
::start /wait /B  ""  conda install -y -c conda-forge scikit-learn pandas numpy scipy matplotlib ipython jupyter networkx numba scikit-image dask datashader bokeh holoviews colorcet shap lightgbm gspread umap-learn hdbscan optuna pynndescent

echo Miniforge installed && echo.
timeout 3
