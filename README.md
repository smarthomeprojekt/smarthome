# FHEM Smart Home

## Docker Container Starten

Folgenden Befehl ausfürehn um den Docker Container zu starten.

```Shell
docker-compose up -d
```

Folgenden Befehl ausfürehn um den Docker Container auf dem Raspberry Pi zu starten.

```Shell
docker-compose -f "docker-compose.yml" -f "docker-compose.raspberrypi.yml" up -d
```
