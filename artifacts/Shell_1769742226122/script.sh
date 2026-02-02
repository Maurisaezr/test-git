
ssh() {
     -F "/mnt/d/blokly/Antigravity/storage/projects/44/artifacts/Shell_1769742226122/ssh_config" "$@"
}
scp() {
     -F "/mnt/d/blokly/Antigravity/storage/projects/44/artifacts/Shell_1769742226122/ssh_config" "$@"
}
export -f ssh
export -f scp

{"action":"ssh_target","params":{"host":"10.237.132.12","port":22,"user":"root","auth_method":"PASSWORD","cred_ref":"/root/.ssh/id_rsa","sudo":false},"jump":{"enabled":false,"host":"10.241.57.10","port":24022,"user":"msaez","cred_ref":"/root/.ssh/id_rsa.pub","agent_forwarding":false}},