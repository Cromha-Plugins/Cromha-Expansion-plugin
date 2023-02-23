import time
import sys
import os
import shutil
import git
from git import Repo
from distutils.dir_util import copy_tree
from pathlib import Path

class Update:
      
      # Pull main to origin
      print("Pulling main branch to local repo")
      repo = git.Repo('.git')
      origin = repo.remote(name='origin')
      origin.pull()
      
      # Get saved path
      file = open(".settings.txt", "r")
      path = file.read()
	# Copy plugin to plugins directory
      source = "plugin/"
      target = str(path) + "Cromha-expansion-plugin"
      copy_tree(source, target)
      
      print("Reinstalling plugin")
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
	
      print("Done")