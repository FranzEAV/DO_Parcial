import json
import zipfile
import os

api_token={"username":"franzalejo","key":"0f2dbb224442e6addf598e2c21aa08eb"}

with open("C:/Users/Usuario/.kaggle/kaggle.json","w") as file:
    json.dump(api_token, file)

location = "C:/Users/Usuario/Documents/ala/dataset"

if not os.path.exists(location):
    os.mkdir(location)
else:
    for root, dirs, files in os.walk(location, topdown=False):
        for name in files:
            os.remove(os.path.join(root, name))
        for name in dirs:
            os.rmdir(os.path.join(root, name))

os.system("kaggle datasets download -d jiteshkumarsahoo/wikipedia-country-statistics-2023 -p C:/Users/Usuario/Documents/ala/dataset")            

os.chdir(location)
for file in os.listdir():
    zip_ref = zipfile.ZipFile(file,"r")
    zip_ref.extractall()
    zip_ref.close()