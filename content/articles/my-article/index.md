--- 
title: Example page for authoring articles
author: Ryan Florence
date: 2011-07-01
---

If your article has assets, create a folder like this one and stick them there, and name the article index.

Code Blocks
-----------

Include code blocks like this:

<%= code '01.js' %>

The path is relative to the article's folder.

Images
------

Place your image in the article's directory and ...

<%= img 'burger.png' %>

Or just get the image path if you need to do something fancier:

<%= img_path 'burger.png' %>


