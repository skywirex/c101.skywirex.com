# Tools

## [VMware Workstation Pro](https://www.vmware.com/products/desktop-hypervisor/workstation-and-fusion)

![VMware Workstation Pro (For Windows) 25H2](https://pub-b731809282d4443bba205fbf4c8ae4ee.r2.dev/18a953377febba0d3e1c9bb809d4667d.png)

## [Chromnium trên VPS](https://share.note.sx/6mxc433m#RGe0vZnoJmUkB1RKCHii52KpzT6hrrLTo2iU+4cRCtc)

## [Proxifier](https://www.proxifier.com/)

## Cài Yazi trên Debian 12 (Bookworm) bằng bản musl prebuilt

Debian 12 dùng GLIBC 2.36, vì vậy bạn cần dùng **bản build musl** (static link, không phụ thuộc glibc).

```bash
# 1. Tải binary musl prebuilt
curl -Lo yazi.zip https://github.com/sxyazi/yazi/releases/latest/download/yazi-x86_64-unknown-linux-musl.zip

# 2. Giải nén bằng busybox (không cần unzip)
busybox unzip yazi.zip

# 3. Cài binary
mv yazi-x86_64-unknown-linux-musl/yazi /usr/local/bin/
mv yazi-x86_64-unknown-linux-musl/ya /usr/local/bin/

# 4. Xóa cache bash và kiểm tra
hash -r
yazi --version
```

**Lưu ý quan trọng:**
- Dùng `yazi-x86_64-unknown-linux-musl.zip`, **không dùng** bản `linux-gnu` vì bản đó cần GLIBC 2.39 và sẽ lỗi trên Debian 12.
- Nếu trước đó đã cài yazi bằng `cargo install`, hãy gỡ trước: `rm ~/.cargo/bin/yazi`.
- Cần chạy `hash -r` để xóa cache đường dẫn binary của bash sau khi thay binary cũ.

