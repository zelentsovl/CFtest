#!/bin/bash
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash && 
source ~/.nvm/nvm.sh && 
nvm install --lts && 
~/.nvm/versions/node/v8.10.0/bin/npm install -g cfn-lint && 
rm -rf ./cf_lint_outputs
mkdir ./cf_lint_outputs
#~/.nvm/versions/node/v8.10.0/bin/cfn-lint validate $1 | sed -r 's/'$(echo -e "\033")'\[[0-9]{1,2}(;([0-9]{1,2})?)?[mK]//g' >> ./cf_lint_outputs/validation-report.log 2>&1
~/.nvm/versions/node/v8.10.0/bin/cfn-lint validate $1 &>> ./cf_lint_outputs/validation-report.log
