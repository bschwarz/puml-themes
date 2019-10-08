---
layout: wide
title: gallery
published: true
---
## Themes

<table cellspacing="30" cellpadding="30">
{% tablerow theme in site.data.themes.themes cols:2 %}
    <a href="themes/{{ theme.name }}"><img src="themes/{{ theme.name }}/sequence-ex.svg" width="600" height="500" title="{{ theme.name }}" alt="{{ theme.name }}" style="background-color: {{ theme.background }}"></a>
{% endtablerow %}
  </table>
