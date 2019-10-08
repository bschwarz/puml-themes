---
layout: wide
title: gallery
published: true
---
## Themes

<table>
{% tablerow theme in site.data.themes.themes cols:2 %}
    <a href="themes/{{ theme.name }}"><img src="themes/{{ theme.name }}/sequence-ex.svg" width="400" height="400" title="{{ theme.name }}" alt="{{ theme.name }}"></a>
{% endtablerow %}
  </table>
