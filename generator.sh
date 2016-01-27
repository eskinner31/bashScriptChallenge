#!/bin/bash

echo "Input the name of your project";
read projectname;
clear;
mkdir $projectname;
mkdir $projectname/js && touch $projectname/js/app.js; #Using `;` to prevent
mkdir $projectname/css && touch $projectname/css/style.css;
mkdir $projectname/images;
touch $projectname/index.html; #One error location creation
USER=$(whoami); #Getting the wrong user
DATE=$(date +"%x %r %z");
cat << _EOF_ > $projectname/index.html #Another possible error to take advantage of
    <HTML>
    <HEAD>
      <TITLE>
      The title of your page
      </TITLE>
      <LINK HREF="css/style.css" REL="stylesheet">
    </HEAD>

    <BODY>
      <H1>
        Hello World My Name Is $USER
      </H1>
      <P>
        The date is $DATE
      </P>
      Your page content goes here.
      <SCRIPT SRC="js/app.js"></SCRIPT>
    </BODY>
    </HTML>
_EOF_
cat << _EOF_ > $projectname/js/app.js
  alert("connected!");
_EOF_
cat << _EOF_ > $projectname/css/style.css
h1 {
  color: red;
}
p {
  color: blue;
}
_EOF_
cd $projectname;
echo "Done!";
