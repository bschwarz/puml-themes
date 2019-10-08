---
layout: wide
title: gallery
published: true
---
## Themes

<table>
{% tablerow theme in site.data.themes.themes cols:2 %}
    <a href="themes/{{ theme.name }}"><img src="themes/{{ theme.name }}/sequence-ex.svg" width="500" height="500" title="{{ theme.name }}" alt="{{ theme.name }}" style="margin: 15px;"></a>
{% endtablerow %}
  </table>
