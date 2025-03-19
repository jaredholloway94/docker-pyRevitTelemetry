# Installation

assuming docker-compose and git already installed...

On Windows (in PowerShell):
```
git clone https://github.com/jaredholloway94/docker-pyRevitTelemetry.git
cd docker-pyRevitTelemetry
mkdir db_data
mkdir secrets
Read-Host "Enter a password for postgres" | out-file ./secrets/db_password
docker compose up -d
```

On Linux (in bash):
```
git clone https://github.com/jaredholloway94/docker-pyRevitTelemetry.git
cd docker-pyRevitTelemetry
mkdir db_data
mkdir secrets
read -p "Enter a password for postgres: " pw
echo $pw > ./secrets/db_password
docker compose up -d
```


exposes services at ports on the host:
- pyrevit-telemetryserver: 8080
- postgres: 5432
- metabase: 3000
