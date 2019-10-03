## Introduction

<code>puml-themes</code> holds some themes for the wonderful [plantuml](https://plantuml.com) diagraming tool. It takes a markdown type text file and converts it into an image of a diagram. This is useful for several reasons:
1. Sometimes it's actually easier to use then a full fledge diagramming tool.
1. Having text in a source control repo is more convenient since you can track changes easier.
1. It's easy to auto generate the diagrams.

The out of the box color scheme for <code>plantuml</code> is not very pleasing to the eyes (at least to me). That and the fact you may want to match your diagrams with the rest of your documentation (as in my case) lead me to put together some themes.

Below you can browse what the different themes look like.

{% for theme in site.data.themes.themes %}
#### {{ theme.name }}
{{ theme.description }}

<a href="themes/{{ theme.name }}"><img src="themes/{{ theme.name }}/sequence-ex.svg" width="82" height="86" title="Sequence Diagram" alt="Sequence Diagram"></a>
{% endfor %}
