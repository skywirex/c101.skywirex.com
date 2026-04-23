# Cài đặt Yazi trên Debian 12 (Bookworm)

Debian 12 dùng GLIBC 2.36, vì vậy nên dùng **bản build musl** (static link, không phụ thuộc glibc).

## Cài các gói phụ trợ (khuyến nghị)

```bash
sudo apt install ffmpeg jq poppler-utils fd-find ripgrep fzf zoxide file
```

Lý do nên cài:
- `ffmpeg`: hỗ trợ preview metadata/thumbnails cho video và audio.
- `jq`: xử lý JSON cho script/plugin khi cần parse dữ liệu.
- `poppler-utils`: hỗ trợ preview PDF (thường dùng `pdftotext`/`pdfinfo`).
- `fd-find`: tìm file nhanh hơn `find`, hữu ích cho workflow tìm kiếm.
- `ripgrep`: tìm nội dung trong file rất nhanh, tích hợp tốt với terminal tools.
- `fzf`: fuzzy finder để chọn file/thư mục nhanh.
- `zoxide`: nhảy thư mục thông minh theo tần suất dùng.
- `file`: nhận diện loại file để Yazi chọn cách preview/phân loại phù hợp.

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
