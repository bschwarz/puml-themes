---
layout: default
title: home
---

## Introduction

<code>puml-themes</code> holds some themes for the wonderful [plantuml](https://plantuml.com) diagraming tool. It takes a markdown type text file and converts it into an image of a diagram. This is useful for several reasons:
1. Sometimes it's actually easier to use then a full fledge diagramming tool.
1. Having text in a source control repo is more convenient since you can track changes easier.
1. It's easy to auto generate the diagrams.

The out of the box color scheme for <code>plantuml</code> is not very pleasing to the eyes (at least to me). That and the fact you may want to match your diagrams with the rest of your documentation (as in my case) lead me to put together some themes.

## Usage

There are a few ways you can use these themes:
1. You can clone this repo, and then use the files on your local machine.
2. Download the theme file from the repo. If you don't want the whole repo, you can just download the theme file. There is one file per theme, so you don't have to worry about copying multiple files.
3. Use the themes from a URL. Plantuml allows you to include files on the internet with this syntax:
	<code>!include https://raw.githubusercontent.com/bschwarz/puml-themes/master/themes/<THEME NAME>/puml-theme-<THEME NAME>.puml</code>
    
    All themes have this same format, you can just substitute the name of the theme. For example if I wanted the cerulean theme, then it would look like:
    >
    > !include https://raw.githubusercontent.com/bschwarz/puml-themes/master/themes/cerulean/puml-theme-cerulean.puml
    >
  
    **Note** in previous versions of plantuml you had to use <code>!includeurl http://...</code> syntax.

## Themes

{% for theme in site.data.themes.themes %}
#### {{ theme.name }}
{{ theme.description }}

<a href="themes/{{ theme.name }}"><img src="themes/{{ theme.name }}/sequence-ex.svg" width="350" height="350" title="Sequence Diagram" alt="Sequence Diagram"></a>
{% endfor %}
