# osmbc-language-icons

This repository holds the language SVG icons for the weeklyosm.eu website


## General info

* frame color: #888888ff
* font family: [Economica](https://www.fontsquirrel.com/fonts/economica)
* font color grey: #444444ff
* font color green: #00b400ff
* font color blue: #00b7ffff


## How to add an icon

0. Clone this repository
1. Choose a template file from `tmpl/` folder
2. Copy that file with a new name of the language you want to add below the `tmpl/` folder. Make sure you choose a template which is already very similar to your target language
3. Install the Economica font
4. Edit the file with inkscape
5. Run the script `./convert-inkscape-to-normal-svg.sh`
6. Create a pull request to this repository with your new template
7. Add the icon the weekly backend and to OSMBC

