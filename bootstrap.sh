#!/bin/bash
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash && 
source ~/.nvm/nvm.sh && 
nvm install --lts && 
~/.nvm/versions/node/v8.10.0/bin/npm install -g cfn-lint && 
echo "<html><head>Template validation report</head><body><font size='14'>" > validation-report.html
~/.nvm/versions/node/v8.10.0/bin/cfn-lint validate ./Wordpress_CF_template.json >> validation-report.html
echo "</font></body></html>" >> validation-report.html
