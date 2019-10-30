---
layout: default
title: usage
---
## Usage

There are a few ways you can use these themes:
1. You can clone this repo, or you could download just the theme file (*.puml under each theme directory) from the repo. There is one file per theme, so you don't have to worry about copying multiple files. Then you can use the file in two different ways:
* Using <code>!include</code>from within a plantuml markdown file, like so:
~~~
!include <path to file>/puml-theme-<THEME NAME>.puml
~~~
* Or you can use it on the command line:
~~~
java -jar plantuml.jar -config <path to file>/puml-theme-<THEME NAME>.puml
~~~

2. Use the themes from a URL. Plantuml allows you to include files on the internet with this syntax:
	~~~
    !include https://raw.githubusercontent.com/bschwarz/puml-themes/master/themes/<THEME NAME>/puml-theme-<THEME NAME>.puml
    ~~~
    
    All themes have this same format, you can just substitute the name of the theme. For example if I wanted the cerulean theme, then it would look like:
    ~~~
    !include https://raw.githubusercontent.com/bschwarz/puml-themes/master/themes/cerulean/puml-theme-cerulean.puml
    ~~~
  
    **Note** in previous versions of plantuml you had to use <code>!includeurl ...</code> syntax to include files from the internet.

#### subpart
You can also use subpart. Subpart is a feature of plantuml that allows you to only use part of a plantuml markdown file. <code>puml-themes</code> also supports this. For example, if you only wanted to use the ``sequence`` part of a theme, but have the other diagram types use something different, then you can use this syntax:
~~~
!include <path to file>/puml-theme-<THEME NAME>.puml!sequence
~~~
The <code>!sequence</code> at the end tells plantuml to only use that section of the config file.