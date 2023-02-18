import time
import sys
import os
import shutil
from distutils.dir_util import copy_tree
from pathlib import Path

class Install:
	
	path = input("Please enter the path of your endless sky plugin directory (https://pastebin.com/9h7cGgEW for help)\n")
	
	print(path + ": Selected as plugin directory")
	
	print("Saving your plugin directory path")
	
	file = open(".settings.txt", "w")
	file.write(path)
	file.close()
	
	print("Installing the plugin on the selected plugin directory")
	toolbar_width = 40

	# setup toolbar
	sys.stdout.write("[%s]" % (" " * toolbar_width))
	sys.stdout.flush()
	sys.stdout.write("\b" * (toolbar_width+1)) # return to start of line, after '['

	for i in range(toolbar_width):
	    time.sleep(0.1) # do real work here
	    # update the bar
	    sys.stdout.write("#")
	    sys.stdout.flush()

	sys.stdout.write("]\n") # this ends the progress bar
	# Copy plugin to plugins directory
	source = "plugin/"
	target = path + "Cromha-expansion"
	copy_tree(source, target)
	
	print("Done")
	
