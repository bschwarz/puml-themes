---
layout: wide
title: gallery
published: true
---
## Themes

{% tablerow theme in site.data.themes.themes cols:2 %}
    {{ theme.name }}
    <a href="themes/{{ theme.name }}"><img src="themes/{{ theme.name }}/sequence-ex.svg" width="400" height="400" title="Sequence Diagram" alt="Sequence Diagram"></a>
{% endtablerow %}
