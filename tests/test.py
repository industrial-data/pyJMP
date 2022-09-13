import time 

'''
This code tests if main libraries have been installed properly

2020-11-27

@franktoffel (github)
License BSD-Clause 3

github.com/industrial-data
'''

list_libraries = ['numpy', 'pandas', 'sklearn', 'shap', 'lightgbm', 'umap', 'hdbscan']
modules = {}

failed_installation = False
failed_libraries = []

print('Starting test...')

for library in list_libraries:
    try:
        modules[library] = __import__(library)
    except ImportError:
        failed_installation = True
        failed_libraries.append(library)

if failed_installation:
    print('These libraries were not installed:', failed_libraries)
else:
    print('Bingo, bango, bongo! Python works')

        
time.sleep(10)