---
layout: default
title: cerulean
published: true
---
## Usage
### Local file

<pre style="font-size: .8rem;">
' Local File
!include puml-theme-{{ page.title }}.puml

'Remote file
!include https://raw.githubusercontent.com/bschwarz/puml-themes/master/themes/{{ page.title }}/puml-theme-{{ page.title }}.puml

' Remote File for legacy plantuml
!includeurl https://raw.githubusercontent.com/bschwarz/puml-themes/master/themes/{{ page.title }}/puml-theme-{{ page.title }}.puml
</pre>

### Remote file

<pre style="font-size: .8rem;">!include https://raw.githubusercontent.com/bschwarz/puml-themes/master/themes/{{ page.title }}/puml-theme-{{ page.title }}.puml</pre>

### Legacy plantuml

<pre style="font-size: .8rem;">!includeurl https://raw.githubusercontent.com/bschwarz/puml-themes/master/themes/{{ page.title }}/puml-theme-{{ page.title }}.puml</pre>


## Gallery
<table style="width: 100%">
    <tr>
        <td>
            <img src="activity-ex.svg">
        </td>
    </tr>
    <tr>
        <td>
            <img src="class-ex.svg">
        </td>
    </tr>
   <tr>
        <td>
            <img src="component-ex.svg">
        </td> 
    </tr>
    <tr>
        <td>
            <img src="sequence-ex.svg">
        </td>
    </tr>
   <tr>
        <td>
            <img src="usecase-ex.svg">
        </td>
    </tr>
    <tr>
        <td>
            <img src="state-ex.svg">
        </td>
    </tr>
    <tr>
        <td>
            <img src="object-ex.svg">
        </td>
    </tr>
</table>
