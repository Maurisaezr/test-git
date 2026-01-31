
ssh() {
     -F "/mnt/d/blokly/Antigravity/storage/projects/44/artifacts/Shell_1769708306579/ssh_config" "$@"
}
scp() {
     -F "/mnt/d/blokly/Antigravity/storage/projects/44/artifacts/Shell_1769708306579/ssh_config" "$@"
}
export -f ssh
export -f scp

{
  "kind": "oc_plan",
  "steps": [
    {
      "kind": "oc_step",
      "action": "login",
      "params": {
        "server": "https://api.te01.paas.red.uy:6443",
        "token": "sha256~uiLwKah1GDFpniZ-T9ADMM2D3mmAFxs0TELCigacdFw",
        "insecure": true
      }
    },
    {
      "kind": "oc_step",
      "action": "project",
      "params": {
        "namespace": "domel2-enotificaciones-dev"
      }
    }
  ]
}