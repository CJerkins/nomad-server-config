# Increase log verbosity
log_level = "DEBUG"

data_dir = "/tmp/nomad/server"

server {
  # Enable server mode for the local agent
  enabled          = true
  # Number of server nodes to wait for before
  # bootstrapping, depending on cluster size
  bootstrap_expect = 1
  job_gc_threshold = "2m"
}

datacenter = "toronto"

region = "east"

advertise {
  http = 0.0.0.0
//   http = "{{ GetInterfaceIP `eth1` }}"
//   rpc  = "{{ GetInterfaceIP `eth1` }}"
//   serf = "{{ GetInterfaceIP `eth1` }}"
}

// plugin "raw_exec" {
//   config {
//     enabled = true
//   }
// }

// consul {
//   address = "127.0.0.1:8500"
// }