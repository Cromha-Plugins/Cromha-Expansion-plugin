# Cromha-Expansion-sources

This is a repository that contains all assets (.blend, .xcf files) for my Endless Sky plugin, [Cromha-Expansion-plugin](https://github.com/OcelotWalrus/Cromha-Expansion-plugin).

For adding your assets, make sure you use the following pattern tha you can also find [here](https://github.com/OcelotWalrus/Cromha-Expansion-plugin/wiki/Contributor-Guide#coding-tips)

```
  source/
  |-- outfit/
  |   |-- <outfit code name>/
  |       |-- 3D/ (the 3D models)
  |       |   |-- <outfit code name>.blend
  |       |       ...
  |       |-- GIMP/ (optional, only if you added metal texture to your render)
  |       |   |-- <outfit code name>.xcf
  |       |       ...
  |       |-- rendering/ (the blender renders in PNG format)
  |       |   |-- raw/ (the render of your blender model without any re-scaling and GIMP modifications)
  |       |   |   |-- <outfit code name>.png
  |       |   |       ...
  |       |   |-- final/ (the render of your blender model with GIMP modifications)
  |       |   |   |-- <outfit code name>.png
  |       |   |       ...
  |       |   |-- sprites/ (the render of your blender model with GIMP modifications and re-scaling for the game)
  |       |       |-- <outfit code name>.png
  |       |           ...
  |       |-- templates/ (optional, only if you use other parts of blender models that are not already in the source/ directory)
  |           ...
  |
  |-- ships/
      |-- <ship code name>/
          |-- 3D/ (the 3D models)
          |   |-- <ship code name>.blend
          |       ...
          |-- GIMP/ (optional, only if you added metal texture to your render)
          |   |-- <ship code name>.xcf
          |   |-- <ship code name>-thumb.xcf
          |       ...
          |-- rendering/ (the blender renders in PNG format)
          |   |-- raw/ (the render of your blender model without any re-scaling and GIMP modifications)
          |   |   |-- <ship code name>.png
          |   |   |-- <ship code name>-thumb.png
          |   |       ...
          |   |-- final/ (the render of your blender model with GIMP modifications)
          |   |   |-- <ship code name>.png
          |   |   |-- <ship code name>-thumb.png
          |   |       ...
          |   |-- sprites/ (the render of your blender model with GIMP modifications and re-scaling for the game)
          |   |   |-- <ship code name>.png
          |   |   |-- <ship code name>-thumb.png
          |   |       ...
          |-- templates/ (optional, only if you use other parts of blender models that are not already in the source/ directory)
              ...
```
