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
    b = a.read()
    a.close
    b = b.replace(old_version,version)
    b = b.replace("score #GUILib load.status matches "+str(score(old_version)),"score #GUILib load.status matches "+str(score(version)))
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

load_version(old,old,version)
search((folder,file))
