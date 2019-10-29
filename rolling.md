---
layout: default
title: rolling
---
## Rolling Your Own Theme

1. Clone or fork this <a href="https://github.com/bschwarz/puml-themes">repo</a>
2. Create a new directory under the ``themes/`` directory with the name of your theme. For example, if your theme name is ``sunburst``, then there should be a directory called ``themes/sunburst``.
3. Copy an existing *.puml file (i.e. puml-theme-cerulean.puml) into the new directory, and name it ``puml-theme-<theme name>.puml``
~~~
themes/sunburst/puml-theme-sunburst.puml
~~~
4. Open the new file for editing
5. Change the ``$THEME`` variable to the name of your theme.
~~~
!$THEME = "sunburst"
~~~
6. Change the ``$BGCOLOR`` variable to the default background color of the theme
7. Proceed to edit the file to make changes to the colors. Most likely you will only need to make changes to the variables that are declared towards the top of the file.
8. Once all edits are complete, you can generate the images. Preferred format is ``svg``. There is a build scripts in the ``bin/`` directory. You can use the ``build.sh`` script on Linux or using git bash on windows. The first argument to the script is the theme name, and execute it from the root puml-themes directory:
~~~
bin/build.sh sunburst
~~~
This will save the images into the theme directory.
9. Submit a pull request for the new theme, or you can host it on your own if you want.

Cheers!
