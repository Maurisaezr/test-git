
ssh() {
     -F "/mnt/d/blokly/Antigravity/storage/projects/44/artifacts/Shell_1769697451915/ssh_config" "$@"
}
scp() {
     -F "/mnt/d/blokly/Antigravity/storage/projects/44/artifacts/Shell_1769697451915/ssh_config" "$@"
}
export -f ssh
export -f scp

docker start
