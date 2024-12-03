# Tools

### Chạy chromnium trên VPS

Tạo file `docker-compose.yaml` ở thư mục `chromium` với nội dung sau và chạy với lệnh `docker compose up -d`

```
---
services:
  chromium:
    image: lscr.io/linuxserver/chromium:latest
    container_name: chromium
    security_opt:
      - seccomp:unconfined #optional
    environment:
      - CUSTOM_USER=<yours>
      - PASSWORD=<yours>
      - PUID=1000
      - PGID=1000
      - TZ=Asia/Singapore
    volumes:
      - /root/chromium/config:/config
    ports:
      - 3010:3000   #Change 3010 to your favorite port if needed
    shm_size: "1gb"
    restart: unless-stopped
```
