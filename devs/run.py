import time
import sys
import os
import shutil
from distutils.dir_util import copy_tree
from pathlib import Path

class Run:
      
      # Getting saved path
	print("Getting your Endless Sky plugin directory...")
	file = open(".settings.txt", "r")
	path = file.read()
	# Copy plugin to plugins directory
	source = "plugin/"
	target = str(path) + "Cromha-expansion-plugin"
	print("Re-installing the plugin to apply updates...")
	copy_tree(source, target)
	
	print("Done")