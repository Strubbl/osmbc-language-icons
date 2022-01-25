# osmbc-language-icons

This repository holds the language SVG icons for the weeklyosm.eu website


## General info

* frame color: #888888ff
* font family: [Economica](https://www.fontsquirrel.com/fonts/economica)
* font color grey: #444444ff
* font color green: #00b400ff
* font color blue: #00b7ffff


## How to add an icon

1. Clone this repository
2. Choose a template file from `tmpl/` folder
3. Copy that file with a new name of the language you want to add below the `tmpl/` folder. Make sure you choose a template which is already very similar to your target language
4. Install the Economica font
5. Edit the file with inkscape
6. Run the script `./convert-inkscape-to-normal-svg.sh`
7. Create a pull request to this repository with your new template
8. Add the icon the weekly backend and to OSMBC

