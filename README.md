# osmbc-language-icons

This repository holds the language SVG icons for the weeklyosm.eu website

The folder `icons-with-fonts/` contains the SVG icons, which are based on the font whilst the `icons-with-shapes` folder contains the icons based on paths/shapes. The latter can be used without having the custom font installed.


## General info

* frame color: #888888ff
* font family: [Economica](https://www.fontsquirrel.com/fonts/economica) __Bold__
* font color grey: #444444
* font color green: #00b400
* not used anymore, but for completeness: font color blue: #00b7ff
* example font size in de.svg icon: 130 pt
* example font size in hak.svg icon: 100 pt
* example font size in zh-cn.svg icon for the letters zh is 100 pt and for the CN it's 50 pt


## Requirements

The following requirements are needed in order to create a new language icon.


### Language code

You need to know the language abbreviation, e.g. the [ISO Code](https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes).


### Font install

You need to know how to install the font Economica in your operating system in order to use it in Inkscape.


### Software

* [Inkscape](https://inkscape.org) for editing the template
* bash, sed, Inkscape for running the script `convert-inkscape-to-normal-svg.sh`


## How to add an icon

1. Clone this repository
2. Choose a template file from `icons-with-fonts/` folder
3. Copy that file with a new name of the language you want to add below the `icons-with-fonts/` folder. Make sure you choose a template which is already very similar to your target language so that you do not have many changes.
4. Install the Economica font
5. Edit the text in the new template file with Inkscape
6. Save your work in this file.
7. Now use "Save as" to create a copy of this file in the folder `icons-with-shapes/`
8. Select the text object and convert it to a path. This can be done with CTRL+Shift+C or via menu _Path → Convert Object to Path_
9. Save your file and exit Inkscape
10. Run the script `./convert-inkscape-to-normal-svg.sh`
11. Create a pull request to this repository with your new icon
12. [Add the icon](https://osmbc.openstreetmap.de/dokuwiki/osmbc:how_to_add_a_new_language_icon) to the weekly backend and to OSMBC

