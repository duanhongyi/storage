[jwt.signing]
key = "%DRYCC_STORAGE_JWT%"
expires_after_seconds = 10           # seconds

[jwt.signing.read]
key = "%DRYCC_STORAGE_JWT%"
expires_after_seconds = 10           # seconds

[grpc]
ca = "%DRYCC_STORAGE_CA%"

[grpc.volume]
key  = "%DRYCC_STORAGE_KEY%"
cert = "%DRYCC_STORAGE_CERT%"

[grpc.master]
key  = "%DRYCC_STORAGE_KEY%"
cert = "%DRYCC_STORAGE_CERT%"

[grpc.filer]
key  = "%DRYCC_STORAGE_KEY%"
cert = "%DRYCC_STORAGE_CERT%"

[grpc.client]
key  = "%DRYCC_STORAGE_KEY%"
cert = "%DRYCC_STORAGE_CERT%"
