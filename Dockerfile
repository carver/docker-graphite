
FROM nickstenning/graphite

MAINTAINER Jason Carver <ut96caarrs@snkmail.com>

#configure to forward to skyline
ADD carbon.conf /var/lib/graphite/conf/carbon.conf
ADD relay-rules.conf /var/lib/graphite/conf/relay-rules.conf

ENTRYPOINT ["/usr/bin/supervisord"]
