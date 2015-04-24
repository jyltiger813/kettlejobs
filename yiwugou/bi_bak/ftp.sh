#!/bin/bash
CLASSPATH=.:/home/yiwu/jdk1.7:/opt/nginx/MainDispatcher.jar
DATESTR=`date +%Y%m%d`
DATESTR_YES=`date -d '-1 day' +%Y%m%d`
export LANG=en_US.UTF-8
echo $DATESTR
echo "date_str"$DATESTR
GET_STR="http://10.6.2.115:81/access1-"$DATESTR".log.gz"
echo "get_str :"$GET_STR
GET_STR1="http://10.6.2.16:81/access1-"$DATESTR".log.gz"
#GET_WAP_STR="ftp://10.6.2.72/pub/logs/access_log_"$DATESTR_YES".log-"$DATESTR.gz
GET_WAP_STR="ftp://10.6.2.72/pub/logs/access_log_"$DATESTR_YES".log.1.gz"
GET_WORK_STR="http://10.6.2.121:82/access1-"$DATESTR".log.gz"
GET_APP_STR="http://10.6.2.112:82/access1-"$DATESTR".log.gz"
GET_HEZUO_STR="http://10.6.2.77:81/access1-"$DATESTR".log.gz" 
echo "get_str :"$GET_STR1
echo "get_wap :"$GET_WAP_STR
echo "get_work :"$GET_WORK_STR
/bin/sleep 10
cd /opt/logfiles/nginx1
wget $GET_STR
cd /opt/logfiles/nginx2
wget $GET_STR1
cd /opt/logfiles/wap
wget $GET_WAP_STR
cd /opt/logfiles/work
wget $GET_WORK_STR
cd /opt/logfiles/app
wget $GET_APP_STR
cd /opt/logfiles/hezuo
wget $GET_HEZUO_STR
cd /opt/nginx
/bin/sleep 20
/home/yiwu/jdk1.7/bin/java -jar  -Xmn1024m -Xms3048m -Xmx3048m /opt/nginx/MainDispatcher.jar
cd /opt/pentaho/data-integration
./kitchen.sh  /norep /file  /opt/pentaho/etl/exclude_unman_visit_by_ip/exclude_umman_visit_by_ip_main.kjb
/bin/sleep 30
/home/yiwu/jdk1.7/bin/java -jar  -Xmn512m -Xms1024m -Xmx1024m /opt/nginx/EtlController1.jar
cd /opt/pentaho/data-integration
#/bin/sleep 20
export KETTLE_HOME=/opt/pentaho/data-integration
./kitchen.sh  /norep /file  /opt/pentaho/etl/dispatch_main.kjb 
./kitchen.sh  /norep /file  /opt/pentaho/etl/seller_buyer_both/main.kjb
exit 1

