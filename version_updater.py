from os import listdir, renames

def find_version() -> str:
    for a in listdir(path + "/functions"):
        try:
            listdir(path + "/functions/" + a)
            return a
        except NotADirectoryError:
            pass
    exit()

path = "data/guilib/"
version = input("new_version:\n")
if not version.startswith("v"): version = "v"+version
old = find_version()

def search(fun:tuple,path:str=path,old_version:str=old,version:str=version):
    all_folder = listdir(path)
    for a in all_folder:
        try:
            listdir(path + a)
            search(fun,path + a + "/")
            if a == old_version: fun[0](path,old_version,version)
        except NotADirectoryError:
            fun[1](path + a,old_version,version)
def score(version:str) -> int:
    if version.startswith("v"): version = version[1:]
    if "." in version:
        version = version.split(".")
        return -(100*int(version[0]) + int(version[1]))
    return int(version)
def folder(path:str,old_version:str,version:str):
    renames(path + old_version,path + version)
    #copy(path + old_version,path + version)
    #removedirs(path + old_version)
def file(path:str,old_version:str,version:str):
    a = open(path,"r")
    b = a.read().replace(old_version,version)
    a.close
    a = open(path,"w")
    a.write(b)
    a.close()
def load_version(function_folder:str,old_version:str,version:str):
    a = open("data/guilib/functions/" + function_folder + "/load_version.mcfunction","r")
    b = a.read()
    a.close()
    b = b.split("\n")
    out = ""
    for a in range(len(b)):
        if b[a].startswith("execute ") and " score #GUILib load.status " in b[a]:
            c = b[a].split(" ")
            if "matches" in c:
                d = c[6].split("..")
                if score(version) < 0:
                    d[0] = score(version) + 1
                    d[1] = (-score(version))//100
                else:
                    d[0] = -100 * (score(version) - 1) - 99
                    d[1] = score(version) - 1
                c[6] = str(d[0]) + ".." + str(d[1])
            c[-1] = score(version)
            b[a] = ""
            for d in c:
                b[a] += str(d) + " "
            b[a] = b[a][:-1]
        out += b[a] + "\n"
    a = open("data/guilib/functions/" + function_folder + "/load_version.mcfunction","w")
    a.write(out[:-1])
    a.close
def load(function_folder:str,version:str):
    a = open("data/guilib/functions/" + function_folder + "/load.mcfunction")
    b = a.read().split("\n")
    a.close()
    out = ""
    for a in b:
        if a.startswith("execute if score #GUILib load.status matches"):
            c = a.split(" ")
            c[6] = score(version)
            a = ""
            for d in c:
                a += str(d) + " "
            a = a[:-1]
        out += a + "\n"
    a = open("data/guilib/functions/" + function_folder + "/load.mcfunction","w")
    a.write(out)
    a.close()

search((folder,file))
function_folder = find_version()
load_version(function_folder,old,version)
load(function_folder,version)
