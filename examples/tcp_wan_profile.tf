provider "bigip" {
  address = "xxx.xxx.xxx.xxx"
  username = "xxxx"
  password = "xxxx"
}


resource "bigip_ltm_profile_tcp" "sanjose-tcp-wan-profile"

        {  
            name = "sanjose-tcp-wan-profile"
            defaults_from = "/Common/tcp-wan-optimized"
            idle_timeout = 300
            close_wait_timeout = 5
            finwait_2timeout = 5
            finwait_timeout = 300
            keepalive_interval = 1700
            deferred_accept = "enabled"
            fast_open = "enabled"
        }


