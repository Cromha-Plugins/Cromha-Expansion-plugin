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
      print("Pulling main branch to local repo...")
      repo = git.Repo('.git')
      origin = repo.remote(name='origin')
      origin.pull()
      
      # Get saved path
      print("Getting your Endless Sky plugin directory...")
      file = open(".settings.txt", "r")
      path = file.read()
	# Copy plugin to plugins directory
      source = "plugin/"
      target = str(path) + "Cromha-expansion-plugin"
      print("Re-installing the plugin to apply updates...")
      copy_tree(source, target)
	
      print("Done")