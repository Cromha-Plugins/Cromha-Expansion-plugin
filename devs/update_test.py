import time
import sys
import os
import shutil
import git
from git import Repo
from distutils.dir_util import copy_tree
from pathlib import Path

class DevUpdate:
      
      # Pull main to origin
      print("Pulling main branch to local repo...")
      repo = git.Repo('.git')
      origin = repo.remote(name='origin')
      origin.pull()
      
      print("Done")