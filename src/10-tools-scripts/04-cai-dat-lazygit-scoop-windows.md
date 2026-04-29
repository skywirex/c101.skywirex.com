# Cài đặt lazygit bằng Scoop trên Windows

Cài đặt nhanh `lazygit` trên Windows bằng `scoop` để tích hợp vào workflow Git hằng ngày.

---

## Các bước cài đặt

Nếu bạn đã cài đặt Scoop, hãy mở Terminal (PowerShell hoặc Windows Terminal) và chạy lệnh sau:

1. **Thêm bucket "extras"** (`lazygit` nằm trong bucket này):

```powershell
scoop bucket add extras
```

2. **Cài đặt lazygit**:

```powershell
scoop install lazygit
```

---

## Kiểm tra sau khi cài đặt

Sau khi lệnh chạy xong, bạn có thể gõ:

```powershell
lazygit --version
```

Để bắt đầu sử dụng, bạn chỉ cần di chuyển (`cd`) vào một thư mục project có Git và gõ:

```powershell
lazygit
```

---

## Một vài lưu ý nhỏ cho workflow trên Windows

- **Font chữ:** Để giao diện của `lazygit` hiển thị đẹp nhất (có các icon, mũi tên...), bạn nên sử dụng các bộ font **Nerd Fonts** (như *JetBrainsMono Nerd Font*) trong Terminal của mình.
- **Tích hợp Editor:** Nếu bạn đang dùng Neovim hoặc VS Code, `lazygit` hoạt động cực kỳ mượt mà khi gọi trực tiếp từ terminal tích hợp bên trong các editor này.
- **Cập nhật:** Sau này, nếu muốn cập nhật lên bản mới nhất, bạn chỉ cần chạy:

```powershell
scoop update lazygit
```
