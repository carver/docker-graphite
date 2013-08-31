#!/bin/bash
GRAPHITE=$(docker ps | grep graphite | cut -d' ' -f1) && docker kill $GRAPHITE
STATSD=$(docker ps | grep statsd | cut -d' ' -f1) && docker kill $STATSD
