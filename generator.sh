#!/bin/bash

echo "Input the name of your project";
read projectname;
clear;

mkdir $projectname;
mkdir $projectname/js && touch $projectname/js/app.js;

USER= "User Name";
DATE= "2/14/2016";

cat << _EOF_ > $projectname/index.html #Another possible error to take advantage of
    <!DOCTYPE html>
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

cd $projectname;
echo "Done!";
