<p align=center><img src="https://github.com/OcelotWalrus/Cromha-Expansion-plugin/assets/87318892/0210316e-92d1-4d32-ae96-b95cf7466fea" alt="https://github.com/OcelotWalrus/Cromha-Expansion-plugin/assets/87318892/0210316e-92d1-4d32-ae96-b95cf7466fea" /></p>

<h1><p align=center>Endless Sky Plugin:<br />Cromha-Expansion</p></h1>

This is a plugin for the free, open-source game [Endless Sky][es]. This plugin
is developed and tested against the [Endless Sky continuous][continuous] build.
Learn more [about Endless Sky][esweb].
**You can join the discord server [here](https://discord.gg/tafa8dVH5Q)** if you want to discuss about the plugin or ask more in depth questions to me.


<details>

  <summary>Summary</summary>

* [About plugin](https://github.com/OcelotWalrus/Cromha-Expansion-plugin#about-plugin)
    * [This plugin](https://github.com/OcelotWalrus/Cromha-Expansion-plugin#this-plugin)
* [Contributing](https://github.com/OcelotWalrus/Cromha-Expansion-plugin#contributing)
* [Development status](https://github.com/OcelotWalrus/Cromha-Expansion-plugin#development-status)
* [Installation](https://github.com/OcelotWalrus/Cromha-Expansion-plugin#installation)
    * [Install steps](https://github.com/OcelotWalrus/Cromha-Expansion-plugin#install-steps)
    * [Keeping the plugin updated](https://github.com/OcelotWalrus/Cromha-Expansion-plugin#keeping-the-plugin-updated)

</details>

# About Plugin:

Adds a new civilization to the Korath Space (now named the 'Empire Space'): The Cromha Empire. Also known as 'The Empire', it is a government that dirige a huge part of the north of the Milky Way. It also a very high advanced government, that has kind of remixed outfits and ships from other vanilla governments. They are human but don't directly have contact with human Merchants, they have contact with the Syndicate, the Republic but they don't allow them to enter their territory. Know more about the plugin in the [wiki](https://github.com/OcelotWalrus/Cromha-Expansion-plugin/wiki)! (or test the game yourself)

## This plugin:

* Adds governments that are related to the vanilla storyline (kind of).
* The storyline that the plugin adds is made so it is the most similar possible to the vanilla one.
* Add new outfits and ships from different governments.
* Expands upon the existing map for exploration (New Systems in the north of the galaxy and near the Deep Space).
* Adds a new galaxy but it is still in work.

# Contributing

All Contributions are welcome!
To contribute to the plugin, you can create issues to describe an error from spelling errors to mission bug or anything else.
You can also create an issue to request specific feature.

If you wanna know more about contributing, check the [wiki page](https://github.com/OcelotWalrus/Cromha-Expansion-plugin/wiki/Contributor-Guide).

# Development Status
It is currently a Beta plugin.

* A medium WIP (work in progress) plugin.
* Story is not fully implemented but for most of the part, it is.
* Spaceport and planets descriptions are not fully done.
* Outfits and ships descriptions are not fully done.
* The whole 'Empire Rebels' part is not started very yet. (check [wiki](https://github.com/OcelotWalrus/Cromha-Expansion-plugin/wiki/Governments-&-Major-Factions))

# Installation
Go [here](https://github.com/OcelotWalrus/Cromha-Expansion-plugin/wiki/User-Guide) for more infos on installing the plugin.
You can download the [lite version](https://codeload.github.com/OcelotWalrus/Cromha-Expansion-plugin/zip/refs/heads/lite-version), it is basically just the plugin data & images without all other useless stuff. It's recommended to use the [lite version](https://codeload.github.com/OcelotWalrus/Cromha-Expansion-plugin/zip/refs/heads/lite-version) if you're not planning to contribute but if you are, use the normal version.

## Install steps

You can just copy this block if you're a bash shell user. If not, do how you normally do or just clone the repository and copy the "plugin" folder to your [endless sky plugin directory](https://github.com/endless-sky/endless-sky/wiki/CreatingPlugins).

```
git clone https://github.com/OcelotWalrus/Cromha-Expansion-plugin.git
cd Cromha-Expansion-plugin
chmod +x install.py
python install.py
```

## Keeping the plugin updated
The update.py python script will update the local repo and update the plugin that is already in your [endless sky plugin directory](https://github.com/endless-sky/endless-sky/wiki/CreatingPlugins).
```
chmod +x update.py
python update.py
```
[es]: https://github.com/endless-sky/endless-sky
[continuous]: https://github.com/endless-sky/endless-sky/releases/tag/continuous
[esweb]: https://endless-sky.github.io/
