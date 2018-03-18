rm -rf ./taskcat_outputs
mkdir ./taskcat_outputs
/usr/local/bin/taskcat -c ./cf-template/config.yml | sed -r 's/'$(echo -e "\033")'\[[0-9]{1,2}(;([0-9]{1,2})?)?[mK]//g' |& tee -a ./taskcat_outputs/taskcat-exec-report.log
