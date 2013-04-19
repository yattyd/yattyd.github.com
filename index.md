---
layout: page
title: YaTTYD
---
{% include JB/setup %}

+ [Updates](#updates) 
+ [My Posts](#posts)
+ [Links](#links)

----------------------------------

## Updates <p id="updates"></p>
- Download the latest version [here](./Downloads/YaTTYD "Downloads"). Any comments or bugs report to [me](mailto:yattyd@gmail.com "E-mail") please.

## My Posts <p id="posts"></p>

<ul class="posts">
  {% for post in site.posts %}
    <li><span>{{ post.date | date_to_string }}</span> &raquo; <a href="{{ BASE_PATH }}{{ post.url }}">{{ post.title }}</a></li>
  {% endfor %}
</ul>

##Links <p id="links"></p>
- [Google][1]
- [RespberryPi][2]
- [Parallela][3]
- [Downloads][4]
- [Bug report][5]
- [more][6]

  [1]: http://google.com/        "Google"
  [2]: http://www.raspberrypi.org/ "Respberry Pi"
  [3]: http://www.adapteva.com/introduction/ "Parallela"
  [4]: ./Downloads/YaTTYD        "Downloads"
  [5]: mailto:yattyd@gmail.com   "E-mail"
  [6]: ./links "more links"
<!-- BEGIN: Powered by Supercounters.com -->
<script type="text/javascript" src="http://widget.supercounters.com/texthit.js"></script>
<script type="text/javascript">var sc_texthit_var = sc_texthit_var || [];sc_text_hit(548097,"","000000");</script>

<!-- END: Powered by Supercounters.com -->
<!-- END: Powered by Supercounters.com -->
