if [[ $servstat == *"active (running)"* ]]; then
  echo "process is running"
else echo "process is not running"
configtestResult=$(sudo apachectl configtest 2>&1)
 if  [ "$configtestResult" == "Syntax OK" ]; then
    sudo systemctl restart httpd
        echo " Apache Restarted "
 else
        echo " Please Check config file"
 fi
fi
