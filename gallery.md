---
layout: wide
title: gallery
published: true
---
## Theme Gallery

<table style="border:1px dotted #eeeeee; border-spacing: 10px 10px;">
{% tablerow theme in site.data.themes.themes cols:2 %}
  <h4>{{ theme.name }} </h4>
    <a href="themes/{{ theme.name }}"><img src="themes/{{ theme.name }}/sequence-ex.svg" width="450"  title="{{ theme.name }}" alt="{{ theme.name }}" style="background-color: {{ theme.background }}"></a>
{% endtablerow %}
  </table>
