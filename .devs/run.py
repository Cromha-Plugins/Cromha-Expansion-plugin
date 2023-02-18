import time
import sys
import os
import shutil
from distutils.dir_util import copy_tree
from pathlib import Path

class Run:
	file = open("../.settings.txt", "r")
	path = file.read()
	# Copy plugin to plugins directory
	source = "../plugin/"
	target = str(path) + "Cromha-expansion"
	copy_tree(source, target)
	
	print("Done")
