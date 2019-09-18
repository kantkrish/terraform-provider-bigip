provider "bigip" {
  address = "xxx.xxx.xxx.xxx"
  username = "xxxxx"
  password = "xxxxx"
}


resource "bigip_ltm_profile_fastl4" "sjfastl4profile"

        {
            name = "/Common/sjfastl4profile"
            partition = "Common"
            defaults_from = "/Common/fastL4"
            client_timeout = 40
            explicitflow_migration = "enabled"
            hardware_syncookie = "enabled"
            idle_timeout = "200"
            iptos_toclient = "pass-through"
            iptos_toserver = "pass-through"
            keepalive_interval = "disabled"  //This cannot take enabled
        }
