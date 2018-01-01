FROM tozd/base:ubuntu-trusty

RUN apt-get update -q -q && \
 apt-get install --yes --force-yes runit

COPY ./runsvdir-start /usr/local/sbin/runsvdir-start
COPY ./service /etc/service
COPY ./etc.rsyslog.d.60-cron.conf /etc/rsyslog.d/60-cron.conf

ENTRYPOINT ["/usr/local/sbin/runsvdir-start"]
