#!/bin/bash
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash && 
source ~/.nvm/nvm.sh && 
nvm install --lts && 
~/.nvm/versions/node/v8.10.0/bin/npm install -g cfn-lint && 
mkdir cf_lint_outputs
# echo "<html><head>Template validation report: </font></head><body>" > ./cf_lint_outputs/validation-report.html
~/.nvm/versions/node/v8.10.0/bin/cfn-lint validate $1  | sed -r 's/'$(echo -e "\033")'\[[0-9]{1,2}(;([0-9]{1,2})?)?[mK]//g' |& tee -a ./cf_lint_outputs/validation-report.log
# echo "</body></html>" >> ./cf_lint_outputs/validation-report.html
