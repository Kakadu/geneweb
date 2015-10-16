set -x
cd test && redis-server redis.conf && sleep 2
rdb --command json grimaldi.rdb | python -m json.tool

