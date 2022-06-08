---
layout: default
title: home
published: true
---


> **NOTE** Themes are now [built into plantuml](https://plantuml.com/theme), so you don't necessarily need puml-themes anymore, can use the themes directly within plantuml. The only reason why you might still use this package is if you are stuck on an old version of plantuml.


## Introduction

<code>puml-themes</code> is a repo for some themes for the great [plantuml](https://plantuml.com) diagraming tool, which takes a markdown type text file and converts it into an image of a diagram. The reason why you might use ``plantuml`` is for several reasons:
1. Sometimes it's easier to use text markdown then a full fledge GUI diagramming tool.
1. Having text in a source control repo is more convenient since you can track changes easier.
1. It's easy to auto generate the diagrams.

However, the out of the box color scheme for <code>plantuml</code> is not very pleasing to the eyes (at least to me). That and the fact you may want to match your diagrams with the rest of your documentation (as in my case) lead me to put together some themes.

> **note** the themes files use some of the newer syntax from plantuml, so you will need to use at least version <code>1.2020.8</code>. If you can not use that version, then you can download the puml file from this repo, and edit it, and replace each instance of _!procedure_ with _!function_ and _!endprocedure_ with _!endfunction_

## Usage

There are a few ways you can use these themes:
1. You can clone this repo, or you could download just the theme file from the repo. There is one file per theme, so you don't have to worry about copying multiple files.

2. Use the themes from a URL. Plantuml allows you to include files on the internet with this syntax:

[See Usage page for more details]({{ site.baseurl }}{% link usage.md %})


## Themes

{% for theme in site.data.themes.themes limit:5 %}
### {{ theme.name }}
{{ theme.description }}

<a href="themes/{{ theme.name }}"><img src="themes/{{ theme.name }}/sequence-ex.svg" width="350" height="350" title="Sequence Diagram" alt="Sequence Diagram"></a>
{% endfor %}

[See theme gallery for more themes]({{ site.baseurl }}{% link gallery.md %})
