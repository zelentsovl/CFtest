mkdir ./taskcat_outputs
echo '<html><head>Taskcat execution result:</head><body>' > ./taskcat_outputs/taskcat-exec-report.html
/usr/local/bin/taskcat -c ./cf-template/config.yml | sed -r 's/'$(echo -e "\033")'\[[0-9]{1,2}(;([0-9]{1,2})?)?[mK]//g' |& tee -a ./taskcat_outputs/taskcat-exec-report.html
echo '</body></html>' >> ./taskcat_outputs/taskcat-exec-report.html
