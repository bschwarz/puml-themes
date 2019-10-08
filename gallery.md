---
layout: wide
title: gallery
published: true
---
## Themes

<table cellspacing="20px">
{% tablerow theme in site.data.themes.themes cols:2 %}
  <h4>{{ theme.name }} </h4>
    <a href="themes/{{ theme.name }}"><img src="themes/{{ theme.name }}/sequence-ex.svg" width="460" height="400" title="{{ theme.name }}" alt="{{ theme.name }}" style="background-color: {{ theme.background }}"></a>
{% endtablerow %}
  </table>
