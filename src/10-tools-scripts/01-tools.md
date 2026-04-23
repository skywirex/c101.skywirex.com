# Tools

## [VMware Workstation Pro](https://www.vmware.com/products/desktop-hypervisor/workstation-and-fusion)

![VMware Workstation Pro (For Windows) 25H2](https://pub-b731809282d4443bba205fbf4c8ae4ee.r2.dev/18a953377febba0d3e1c9bb809d4667d.png)

## [Proxifier](https://www.proxifier.com/)

## Cài Yazi trên Debian 12 (Bookworm) bằng bản musl prebuilt

Debian 12 dùng GLIBC 2.36, vì vậy bạn nên dùng **bản build musl** (static link, không phụ thuộc glibc).

```bash
# 1. Tự động detect kiến trúc
ARCH=$(uname -m)
case $ARCH in
  x86_64)  TARGET="x86_64-unknown-linux-musl" ;;
  aarch64) TARGET="aarch64-unknown-linux-musl" ;;
  armv7*)  TARGET="armv7-unknown-linux-musleabihf" ;;
  *)       echo "Kiến trúc không được hỗ trợ: $ARCH"; exit 1 ;;
esac

# 2. Download đúng bản theo kiến trúc
curl -Lo yazi.zip "https://github.com/sxyazi/yazi/releases/latest/download/yazi-${TARGET}.zip"

# 3. Extract với busybox
busybox unzip yazi.zip

# 4. Cài đặt
mv "yazi-${TARGET}/yazi" /usr/local/bin/
mv "yazi-${TARGET}/ya" /usr/local/bin/

# 5. Dọn dẹp
rm -rf "yazi-${TARGET}" yazi.zip

# 6. Clear cache và kiểm tra
hash -r
yazi --version
```

**Các kiến trúc được hỗ trợ:**
- `x86_64` → PC/server thông thường
- `aarch64` → Raspberry Pi 4+, ARM server
- `armv7` → Raspberry Pi 2/3 (32-bit)

**Lưu ý quan trọng:**
- Dùng bản `*-unknown-linux-musl`, **không dùng** `linux-gnu` vì có thể yêu cầu GLIBC mới hơn trên Debian 12.
- Nếu trước đó đã cài yazi bằng `cargo install`, hãy gỡ trước: `rm ~/.cargo/bin/yazi`.
- Sau khi thay binary, chạy `hash -r` để xóa cache đường dẫn lệnh của shell.
