
ssh() {
     -F "/mnt/d/blokly/Antigravity/storage/projects/44/artifacts/Shell_1769742226122/ssh_config" "$@"
}
scp() {
     -F "/mnt/d/blokly/Antigravity/storage/projects/44/artifacts/Shell_1769742226122/ssh_config" "$@"
}
export -f ssh
export -f scp

{"kind":"oc_safe_step","type":"cli_command","params":{"command":"echo 'Hello'","env":""}},
{"kind":"oc_safe_step","type":"cli_command","params":{"command":"curl -u guest:guest -s http://localhost:15672/api/queues | jq '.[].name'","env":""}},
{"kind":"oc_safe_step","type":"cli_command","params":{"command":"curl -s http://localhost:9200/_cluster/health?pretty","env":""}},
