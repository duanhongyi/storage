[tikv]
enabled = true
# If you have many pd address, use ',' split then:
#   pdaddrs = "pdhost1:2379,pdhost2:2379,pdhost3:2379"
pdaddrs = "%DRYCC_STORAGE_PD_ADDRS%"
# Concurrency for TiKV delete range
deleterange_concurrency = 1
# Enable 1PC
enable_1pc = false
# Set the CA certificate path
ca_path="%DRYCC_STORAGE_CA%"
# Set the certificate path
cert_path="%DRYCC_STORAGE_CERT%"
# Set the private key path
key_path="%DRYCC_STORAGE_KEY%"
# The name list used to verify the cn name
verify_cn=""