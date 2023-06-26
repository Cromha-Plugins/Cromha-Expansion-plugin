#!/bin/bash

data_vanilla_map=$(cat "devs/vanilla map.txt")
data_map_changes=$(cat "plugin/data/Maps/map changes.txt")
data_map_empire_ember_waste=$(cat "plugin/data/Maps/map empire ember waste.txt")
data_map_empire=$(cat "plugin/data/Maps/map empire.txt")
data_map_far_empire=$(cat "plugin/data/Maps/map far empire.txt")
data_map_misc=$(cat "plugin/data/Maps/map misc.txt")
data_map_rebel_deep=$(cat "plugin/data/Maps/map rebel deep.txt")
data_map_rebel_isolated_systems=$(cat "plugin/data/Maps/map rebel isolated systems.txt")
data_map_wormholes=$(cat "plugin/data/Maps/map wormholes.txt")

WriteData () {
      echo "$data_vanilla_map" >> "$map_global"
      echo "$data_map_changes" >> "$map_global"
      echo "$data_map_empire_ember_waste" >> "$map_global"
      echo "$data_map_empire" >> "$map_global"
      echo "$data_map_far_empire" >> "$map_global"
      echo "$data_map_misc" >> "$map_global"
      echo "$data_map_rebel_deep" >> "$map_global"
      echo "$data_map_rebel_isolated_systems" >> "$map_global"
      echo "$data_map_wormholes" >> "$map_global"
}

map_global="devs/map global.txt"
if test -f "$map_global"; then
      rm -r "devs/map global.txt"
      WriteData
else
      WriteData
fi