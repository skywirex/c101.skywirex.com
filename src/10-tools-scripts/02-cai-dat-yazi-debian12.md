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

## Cấu hình phím tắt với `keymap.toml`

Yazi dùng file `keymap.toml` để cấu hình key bindings.

```bash
# Tạo thư mục config nếu chưa có
mkdir -p ~/.config/yazi

# Tạo file keymap.toml
cat > ~/.config/yazi/keymap.toml << 'EOF'
[manager]
keymap = [
  # --- Navigation ---
  { on = "k", run = "arrow -1", desc = "Move cursor up" },
  { on = "j", run = "arrow 1",  desc = "Move cursor down" },
  { on = "h", run = "leave",    desc = "Go to parent directory" },
  { on = "l", run = "enter",    desc = "Enter directory / open file" },
  { on = "g", run = "arrow -99999999", desc = "Go to top" },
  { on = "G", run = "arrow 99999999",  desc = "Go to bottom" },

  # --- File operations ---
  { on = "y", run = "yank",           desc = "Copy (yank)" },
  { on = "x", run = "yank --cut",     desc = "Cut" },
  { on = "p", run = "paste",          desc = "Paste" },
  { on = "r", run = "rename",         desc = "Rename file" },
  { on = "d", run = "remove",         desc = "Move to trash" },
  { on = "<Delete>", run = "remove --permanently", desc = "Delete permanently" },

  # --- Selection ---
  { on = "<Space>", run = "select --state=none", desc = "Toggle selection" },
  { on = "v",       run = "visual_mode",          desc = "Visual mode" },
  { on = "V",       run = "select_all --state=none", desc = "Select all" },

  # --- Tabs ---
  { on = "t", run = "tab_create --current", desc = "New tab" },
  { on = "w", run = "tab_close",            desc = "Close tab" },
  { on = "1", run = "tab_switch 0", desc = "Switch to tab 1" },
  { on = "2", run = "tab_switch 1", desc = "Switch to tab 2" },
  { on = "3", run = "tab_switch 2", desc = "Switch to tab 3" },

  # --- Misc ---
  { on = ".",  run = "hidden toggle",  desc = "Toggle hidden files" },
  { on = "/",  run = "find",           desc = "Find files" },
  { on = "q",  run = "quit",           desc = "Quit" },
  { on = "<Escape>", run = "escape",   desc = "Escape / cancel" },
]
EOF
```

**Điểm quan trọng:**
- `d` → chuyển vào **trash** (có thể khôi phục)
- `<Delete>` → xóa **vĩnh viễn**, không vào trash
- Nhấn `<Escape>` để hủy thao tác đang chọn

Khởi động lại yazi để áp dụng:

```bash
yazi
```
