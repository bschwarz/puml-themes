---
layout: wide
title: gallery
---
## Themes

{% tablerow theme in site.data.themes.themes cols:2 %}
    {{ theme.name }}

    <a href="themes/{{ theme.name }}"><img src="themes/{{ theme.name }}/sequence-ex.svg" width="350" height="350" title="Sequence Diagram" alt="Sequence Diagram"></a>
{% endtablerow %}