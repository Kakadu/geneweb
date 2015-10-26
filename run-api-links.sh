set -x
api/gwd_api -lang en -hd . -bd . -max_clients 30 -sig sig_file -redis localhost -redis_p 6379 -links_tree_url '^[0-9a-z]:localhost:2322' -p 2322
