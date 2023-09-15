from os import listdir,path as chr, renames

def search(path: str = "", exclude:list[str] = []) -> tuple[list[str],list[str]]:
	"""
	return (files,folders)
	"""
	output = ([],[])
	current = ""
	enter_folder = True
	if not path.endswith(("/","\\")) and path != "": path += "/"
	while 1:
		dossier = listdir(None if path in [""] else path)
		try:
			if enter_folder:
				enter_folder = False
				current = dossier[0]
			else: current = dossier[dossier.index(current) + 1]
		except IndexError:
			temp = path.split("/")
			path = path[:-len(temp[-2])-1]
			current = temp[-2]
			enter_folder = False
			continue
		if path + current not in exclude:
			if chr.isdir(path + current):
				output[1].append(path + current)
				path += current + "/"
				enter_folder = True
			else: output[0].append(path + current)
		if current == dossier[-1] and path == "": return output
def path_list_to_dir_dict(paths:list[str]) -> dict[str,dict[str,str]|str]:
	if isinstance(paths,tuple) and isinstance(paths[0],list) and isinstance(paths[0][0],str):paths = paths[0]
	out = {}
	for path in paths:
		temp = [out]
		files = path.split("/")
		for file in range(len(files)):
			if file == len(files)-1:
				temp[-1][files[file]] = files[file].split(".")[-1]
			else:
				try:temp[-1][files[file]]
				except KeyError:
					temp[-1][files[file]] = {}
				temp.append(temp[-1][files[file]])
	return out
def find_version() -> str:
    for a in listdir(path + "/functions"):
        try:
            listdir(path + "/functions/" + a)
            return a
        except NotADirectoryError:
            pass
    exit() 
def get_version_score(version):
	versions = version[1:].split(".")
	out = ""
	while versions.__len__() < 3: versions.append("00")
	for a in range(3):
		str(int(versions[a]))
		out += "0" + versions[a] if versions[a].__len__() == 1 else versions[a][:2]
	return out

path = "data/guilib/"
new_version = "v" + input("What's the new version?\n")
if new_version.__len__() == 2: new_version += ".0"
old_version = find_version()
while 1:
	do = True
	all_folders = search(path)[1]
	for folder in all_folders:
		if folder.endswith("/" + old_version):
			renames(folder,folder[:-len(old_version)] + new_version)
			do = False
			break
	if do: break
for files_path in search(path)[0]:
	file = open(files_path,"r")
	content = file.read()
	file.close()
	if old_version in content or "score #GUILib load.status matches " + get_version_score(old_version) in content:
		content = content.replace(old_version,new_version).replace("score #GUILib load.status matches " + get_version_score(old_version),"score #GUILib load.status matches " + get_version_score(new_version))
		if files_path == f"data/guilib/functions/{new_version}/load_version.mcfunction": content = content.replace("scoreboard players set #GUILib load.status " + get_version_score(old_version), "scoreboard players set #GUILib load.status " + get_version_score(new_version))
		file = open(files_path,"w")
		file.write(content)
		file.close()
