import sys
import time
import os
import shutil
from pathlib import Path
from distutils.dir_util import copy_tree

class CompileMap:
      
      # STILL IN DEVELOPMENT!!!
      # Get full map data
      
      # "map changes.txt"
      with open('plugin/data/Maps/map changes.txt', 'r') as file:
            data_map_changes = file.read().replace('\n', '')

      # "map empire ember waste.txt"
      with open('plugin/data/Maps/map empire ember waste.txt', 'r') as file:
            data_map_empire_ember_waste = file.read().replace('\n', '')
      
      # "map empire.txt"
      with open('plugin/data/Maps/map empire.txt', 'r') as file:
            data_map_empire = file.read().replace('\n', '')
      
      # "map far empire.txt"
      with open('plugin/data/Maps/map far empire.txt', 'r') as file:
            data_map_far_empire = file.read().replace('\n', '')
            
      # "map misc.txt"
      with open('plugin/data/Maps/map misc.txt', 'r') as file:
            data_map_misc = file.read().replace('\n', '')
      
      # "map rebel deep.txt"
      with open('plugin/data/Maps/map rebel deep.txt', 'r') as file:
            data_map_rebel_deep = file.read().replace('\n', '')
      
      # "map rebel isolated systems.txt"
      with open('plugin/data/Maps/map rebel isolated systems.txt', 'r') as file:
            data_map_rebel_isolated_systems = file.read().replace('\n', '')
      
      # "map wormholes.txt"
      with open('plugin/data/Maps/map wormholes.txt', 'r') as file:
            data_map_wormholes = file.readlines()#.replace('\n', '')
            
      # Compile map data to 'devs/map global.txt'
      
      # Create 'devs/map global.txt' if not exist and if it exist, delete it an recreate it
      map_global = "devs/map global.txt"
      
      check_map_global = os.path.isfile(map_global)
      print(check_map_global)
      data = print(data_map_wormholes)
      with open('devs/map global.txt', 'w') as file:
            file.write(data)
      #if check_map_global == False:
            # Create 'devs/map global.txt' plain text
            #with open('devs/map global.txt', 'w') as file:
                  #file.write(data_map_wormholes)