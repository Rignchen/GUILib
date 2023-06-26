import zipfile
import threading
from os import listdir, getcwd, remove

#making it run simultaniously
class ZipThread(threading.Thread):
	def __init__(self, zip_name:str = getcwd().replace("\\", "/").split("/")[-1], wanted:list = [], path:str = "", is_first:bool = True, file:zipfile.ZipFile|None = None, init_path:str = "",compress_files: bool = False):
		threading.Thread.__init__(self)
		self.threadID, self.name = 0, "name"
		self.zip = {"zip_name": zip_name, "wanted": wanted, "path": path, "is_first": is_first, "file": file, "init_path": init_path, "compress_files": compress_files}
	def run(self):
		compress(self.zip["zip_name"],self.zip["wanted"],self.zip["path"],self.zip["is_first"],self.zip["file"],self.zip["init_path"],self.zip["compress_files"])
		print(f"{self.zip['zip_name']} done")
def start(zip_name:str = getcwd().replace("\\", "/").split("/")[-1], wanted:list = [], path:str = "", is_first:bool = True, file:zipfile.ZipFile|None = None, init_path:str = "",compress_files: bool = False):
	tred = ZipThread(zip_name, wanted, path, is_first, file, init_path, compress_files)
	tred.start()
#compressing the folder
def compress_file(path: str):
	file = open(path,"r")
	text = file.read().split("\n")
	file.close()
	out = ""
	match path.split(".")[-1]:
		case "json"|"mcmeta":
			for a in text: out += a.strip()
		case "mcfunction":
			for a in text:
				b = a.strip()
				if b != "" and b[0] != "#" :out += b + "\n"
			out = out[:-1]
		case _:
			for a in text: out += a + "\n"
			out = out[:-1]
	file = open("temp.txt","w+")
	file.write(out)
	file.close()
def compress(zip_name:str = getcwd().replace("\\", "/").split("/")[-1], wanted:list = [], path:str = "", is_first:bool = True, file:zipfile.ZipFile|None = None, init_path:str = "",compress_files: bool = False):
	if path and not path.endswith(("/", "\\")): path +=  "/"
	if is_first:
		init_path = path
		all_folder = wanted
		if not zip_name.endswith(".zip"): zip_name +=  ".zip"
		if zip_name in listdir(): remove(zip_name)
		file = zipfile.ZipFile(zip_name, "x", compression=zipfile.ZIP_DEFLATED, compresslevel=9)
	else:
		all_folder = listdir(path)
	
	for a in all_folder:
		try:
			listdir(path + a)
			compress(zip_name = zip_name, path = path+a, is_first = False, file = file,init_path=init_path,compress_files=compress_files)
		except NotADirectoryError:
			if compress_files: 
				compress_file(path + a)
				file.write("temp.txt", (path + a)[len(init_path):])
			else: file.write(path + a, (path + a)[len(init_path):])
	if is_first:
		file.close()
		if compress_files: remove("temp.txt")

start(wanted=["data","LICENSE","README.md","pack.mcmeta","syntaxe.json",],compress_files=True)
