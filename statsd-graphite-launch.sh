#!/bin/bash
G=$(docker run -d carver/graphite-for-skyline)
SD=$(docker run -d carver/statsd-configured)
echo -n "test.count:1|c" | nc -w 1 -u localhost 8125

