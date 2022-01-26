# osmbc-language-icons

This repository holds the language SVG icons for the weeklyosm.eu website


## General info

* frame color: #888888ff
* font family: [Economica](https://www.fontsquirrel.com/fonts/economica)
* font color grey: #444444ff
* font color green: #00b400ff
* font color blue: #00b7ffff


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
2. Choose a template file from `tmpl/` folder
3. Copy that file with a new name of the language you want to add below the `tmpl/` folder. Make sure you choose a template which is already very similar to your target language so that you do not have many changes.
4. Install the Economica font
5. Edit the new template file with inkscape
6. Run the script `./convert-inkscape-to-normal-svg.sh`
7. Create a pull request to this repository with your new template
8. [Add the icon](https://osmbc.openstreetmap.de/osmww/wiki/How-to-add-a-new-language-icon) the weekly backend and to OSMBC

