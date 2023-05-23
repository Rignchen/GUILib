from os import listdir

path = "data/guilib/"
version = input("new_version:\n")
old = listdir(path + "/functions")[0]
def search(fun:tuple,path:str=path,old_version:str=old,version:str=version):
    all_folder = listdir(path)
    for a in all_folder:
        try:
            listdir(path + a)
            search(fun)
            if a == old_version: fun[0](path,old_version,version)
        except NotADirectoryError:
            fun[1](path,old_version,version)
def score(version:str) -> int:
    if version.startswith("v"): version = version[1:]
    if "." in version:
        version = version.split(".")
        return -(100*int(version[0]) + int(version[1]))
    return int(version)
def folder():pass
def file(path:str,old_version:str,version:str):
    a = open(path,"r")
    b = a.read().replace(old_version,version)
    a.close
    a = open(path,"w")
    a.write(b)
    a.close()

search((folder,file))