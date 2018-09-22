#!/bin/sh

echo "cd /volume2/nexus"
cd /volume2/nexus

echo "`date` : check etl container run and start it if not up" >> /var/log/run_docker_etl.log

docker exec etl echo "etl is running"  2>/dev/null || \
	( echo "etl not running, start it" ;
	docker run --rm --name etl \
		-v /volume2/nexus/etl/var.log:/var/log \
		-v /volume2/nexus/etl/var.etl:/var/etl \
		-v /volume2/nexus/etl/var.spool.cron.crontabs:/var/spool/cron/crontabs \
		-d gosigma/nexus:v04_ca_cert
	)

#	--net=host \

