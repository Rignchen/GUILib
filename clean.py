from os import listdir, remove, rmdir

def search(noTest:list = [], path:str|None = None):
	print(path)
	if not path == None and not path.endswith(("/","\\")): path += "/"
	all_folder = listdir(path)
	path2 = path if path != None else ""
	for a in all_folder:
		if a not in [".git", ".gitattributes","LICENSE"] + noTest:
			try:
				if listdir(path2 + a) == []: rmdir(path2 + a)
				else: search(noTest, path2 + a)
			except NotADirectoryError:
				try:
					file = open(path2 + a, "r")
					txt = file.read()
					file.close()
					texts = txt.split("\n")
					rmv = True
					for b in texts:
						if b.split() != "":
							rmv = False
							break
					if rmv: remove(path2 + a)
				except UnicodeDecodeError: pass
			if listdir(path) == []: rmdir(path)
search(["all versions","README.md"])
