# docker.etl

volume mapping

/var/etl                        etl application, shell/jars
/var/log                        rsyslog log files
/var/spool/cron/crontabs/       contain file 'root'

install java and certificate :
   37  apt-get install apt-file
   41  apt-get install software-properties-common
   43  apt-get update
   44  apt-get install openjdk-8-jdk
  120  update-ca-certificates -f
