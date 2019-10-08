---
layout: default
title: home
published: true
---

## Introduction

<code>puml-themes</code> holds some themes for the wonderful [plantuml](https://plantuml.com) diagraming tool. It takes a markdown type text file and converts it into an image of a diagram. This is useful for several reasons:
1. Sometimes it's easier to use text markdown then a full fledge GUI diagramming tool.
1. Having text in a source control repo is more convenient since you can track changes easier.
1. It's easy to auto generate the diagrams.

The out of the box color scheme for <code>plantuml</code> is not very pleasing to the eyes (at least to me). That and the fact you may want to match your diagrams with the rest of your documentation (as in my case) lead me to put together some themes.

## Usage

There are a few ways you can use these themes:
1. You can clone this repo, or you could download just the theme file from the repo. There is one file per theme, so you don't have to worry about copying multiple files.

2. Use the themes from a URL. Plantuml allows you to include files on the internet with this syntax:

[See Usage page for more details]({{ site.baseurl }}{% link usage.md %})


## Themes

{% for theme in site.data.themes.themes limit:5 %}
#### {{ theme.name }}
{{ theme.description }}

<a href="themes/{{ theme.name }}"><img src="themes/{{ theme.name }}/sequence-ex.svg" width="350" height="350" title="Sequence Diagram" alt="Sequence Diagram"></a>
{% endfor %}

[See theme gallery for more themes]({{ site.baseurl }}{% link gallery.md %})
