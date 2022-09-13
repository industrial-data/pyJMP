@ECHO OFF
:: author = Francisco Navarro (@franktoffel)
:: contact = github.com/industrial-data


set JMP_PYTHON_PTH=C:\ProgramData\Miniforge_JMP

CALL %JMP_PYTHON_PTH%\Scripts\activate.bat %JMP_PYTHON_PTH%

SET current_path=%~dp0
echo %current_path:~0,-1%

SET notebook_file=jmp_addin_minimum_features_tests.ipynb

SET notebook_file_path=%current_path%%notebook_file% 
echo %notebook_file_path%


start /wait /B  ""  jupyter nbconvert --execute --to notebook --inplace %notebook_file_path%

start /wait /B  ""  jupyter nbconvert --execute --to html %notebook_file_path%

echo Jupyter Notebook execution worked properly