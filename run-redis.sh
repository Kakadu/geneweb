set -x
cd test && redis-server redis.conf && sleep 2
echo "KEYS *" | grep redis-cli
rdb --command json grimaldi.rdb | python -m json.tool

