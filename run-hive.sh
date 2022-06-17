source ~/.bash_profile
 
case $1 in
start)
echo "Starting metastore..."
nohup $HIVE_HOME/bin/hive --service metastore > $HIVE_HOME/logs/hivemetastore.log 2>&1 &
sleep 20
ps -ef | grep HiveMetaStore | awk '$8 ~ /jdk1.8.0_151.jdk/ {print $2}' > $HIVE_HOME/metastore.pid
echo "Starting hiveserver2..."
nohup $HIVE_HOME/bin/hiveserver2 > $HIVE_HOME/logs/hiveserver2.log 2>&1 &
sleep 10
ps -ef | grep HiveServer | awk '$8 ~ /jdk1.8.0_151.jdk/ {print $2}' > $HIVE_HOME/hiveserver2.pid
;;
 
stop)
hiveserver2_pid=`cat $HIVE_HOME/hiveserver2.pid`
echo "Stopping hiveserver2...$hiveserver2_pid"
kill $hiveserver2_pid
sleep 10
hivemetastore_pid=`cat $HIVE_HOME/metastore.pid`
echo "Stopping metastore... $hivemetastore_pid"
kill $hivemetastore_pid
sleep 10
;;
 
esac
