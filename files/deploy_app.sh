#!/bin/bash
# Copyright (c) HashiCorp, Inc.

# Script to deploy a very simple web application.
# The web app has a customizable image and some text.

cat << EOM > /var/www/html/index.html
<html>
  <head><title>Meow!</title></head>
  <body>
  <div style="width:800px;margin: 0 auto">

  <!-- BEGIN -->
  <center><img src="http://${PLACEHOLDER}/${WIDTH}/${HEIGHT}"></img></center>
  <center><h2>Meow World!</h2></center>
  Welcome to ${PREFIX}'s app. Taylor Swift once said "I made you my temple, my mural, my sky. Now I'm begging for footnotes in the story of your life. Drawing hearts in the byline. Always taking up too much space and time. But what would you do if IIIIIII... break free and leave us in ruins. Took this dagger in me and removed it. Took the weight of you then lose it. Believe me, I can do it!!!"
  <!-- END -->

  </div>
  </body>
</html>
EOM

echo "Script complete."
