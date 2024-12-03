# Tools

## Chromnium trên VPS

### Kiểm tra Múi giờ
```console
realpath --relative-to /usr/share/zoneinfo /etc/localtime
```

### Cài đặt Chromium
**1. Tạo thư mục**
```console
mkdir chromium
cd chromium
```

**2. Tạo file `docker-compose.yaml`**
```
nano docker-compose.yaml
```

**3. Dán đoạn mã sau vào file**
* `CUSTOM_USER` & `PASSWORD`: Thay bằng thông tin đăng nhập muốn sử dụng cho Chromium  
* `TZ`: Thay bằng múi giờ của máy chủ  
* `ports`: Bạn có thể thay đổi `3010` & `3011` nếu xảy ra xung đột cổng  
```
---
services:
  chromium:
    image: lscr.io/linuxserver/chromium:latest
    container_name: chromium
    security_opt:
      - seccomp:unconfined
    environment:
      - CUSTOM_USER=<yours>
      - PASSWORD=<yours>
      - PUID=1000
      - PGID=1000
      - TZ=Asia/Singapore
    volumes:
      - /root/chromium/config:/config
    ports:
      - 3010:3000
    shm_size: 1gb
    restart: unless-stopped
```
> Để lưu và thoát: `Ctrl+X+Y+Enter`  

### Chạy Chromium

```console
cd $HOME && cd chromium

docker compose up -d
```
**Bạn có thể truy cập ứng dụng bằng cách vào một trong các địa chỉ sau trên trình duyệt của máy tính**  
* http://Server_IP:3010/  

### Dừng và Xóa Chromium

```
docker stop chromium  
docker rm chromium  
docker system prune  
```
