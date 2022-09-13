@ECHO OFF
:: author = @franktoffel (github)
:: url = https://github.com/industrial-data/predictor-explainer
:: license =  BSD - Clause 3

set JMP_PYTHON_PTH=C:\ProgramData\Miniforge_JMP\

CALL %JMP_PYTHON_PTH%\Scripts\activate.bat %JMP_PYTHON_PTH%

SET current_path=%~dp0
echo %current_path:~0,-1%

SET python_file=test.py

SET python_file_path=%current_path%%python_file% 
echo %python_file_path%

start /B /wait "" ipython %python_file_path%

