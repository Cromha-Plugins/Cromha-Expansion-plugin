import time
import sys
import os
import shutil
import git
from git import Repo
from distutils.dir_util import copy_tree
from pathlib import Path

class Push:
      
      # Asking user input for a commit message
      phrase = input("Please enter a commit message:\n")
      
      # Checking if user didn't put a messsage to the commit
      if phrase == "":
            # Use the default commit message to fix possible errors
            phrase = "Did changes"
      
      # Adding files to the commit
      print("Adding files to the commit...")
      
      repo = git.Repo('../.git')
      repo.git.add("plugin/")
      repo.git.add(".devs/")
      repo.git.add("copyright")
      repo.git.add("LICENSE")
      repo.git.add("README.md")
      repo.git.add("about.txt")
      repo.git.add("update.py")
      repo.git.add("install.py")
      
      # Creating the commit
      print("Creating commit...")
      repo.git.commit('-m', phrase)
      
      # Pushing the commit to the main branch
      print("Pushing local branch to main branch...")
      origin = repo.remote(name='origin')
      origin.push()
      print("Done")