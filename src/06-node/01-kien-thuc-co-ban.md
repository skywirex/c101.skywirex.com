# Kiến thức cơ bản

Kiến thức cơ bản về dòng lệnh Linux là quan trọng đối với bất kỳ ai làm việc với hệ thống Linux hoặc các hệ thống dựa trên Unix. Nó giúp bạn thực hiện các công việc và quản lý hệ thống của bạn một cách hiệu quả. 

**Để học căn bản và từ đầu bạn nên tham khảo bài bài học ở link bên dưới. Nó rất tuyệt vời!**

[ryanstutorials](https://ryanstutorials.net/linuxtutorial/)


Sơ qua dưới đây là một số khái niệm và lệnh cơ bản của dòng lệnh Linux:

1. **Terminal và Shell:**
   - **Terminal:** Terminal là giao diện bạn sử dụng để tương tác với dòng lệnh.
   - **Shell:** Shell là trình thông dịch lệnh xử lý các lệnh của bạn. Các loại shell phổ biến bao gồm Bash, Zsh và Fish.

2. **Duyệt qua Hệ thống tập tin:**
   - `pwd`: In thư mục làm việc hiện tại.
   - `ls`: Liệt kê các tập tin và thư mục trong vị trí hiện tại.
   - `cd`: Thay đổi thư mục hiện tại.
   - `cd ..`: Di chuyển lên một thư mục cha.
   - `cd ~`: Đi đến thư mục người dùng.

3. **Quản lý tập tin và Thư mục:**
   - `mkdir`: Tạo thư mục mới.
   - `touch`: Tạo tập tin trống.
   - `cp`: Sao chép tập tin và thư mục.
   - `mv`: Di chuyển hoặc đổi tên tập tin và thư mục.
   - `rm`: Xóa tập tin và thư mục (sử dụng cẩn thận).
   - `cat`: Hiển thị nội dung của tập tin.

4. **Phân quyền tập tin:**
   - `chmod`: Thay đổi quyền truy cập tập tin.
   - `chown`: Thay đổi quyền sở hữu tập tin.

5. **Xem và Sửa tập tin:**
   - `nano`, `vim`, `emacs`: Các trình soạn thảo văn bản để tạo và chỉnh sửa tập tin.
   - `cat`, `less`, `more`: Xem nội dung tập tin.
   - `head` và `tail`: Hiển thị phần đầu hoặc cuối của tập tin.

6. **Tìm Kiếm tập tin:**
   - `find`: Tìm kiếm tập tin và thư mục.
   - `grep`: Tìm kiếm văn bản trong tập tin.
   - `locate`: Nhanh chóng tìm kiếm tập tin theo tên.

7. **Quản lý Gói Phần Mềm:**
   - `apt` (Debian/Ubuntu) hoặc `yum` (Fedora/CentOS): Cài đặt, cập nhật và gỡ bỏ các gói phần mềm.

8. **Quản lý Người dùng và Nhóm:**
   - `adduser` hoặc `useradd`: Thêm người dùng mới.
   - `passwd`: Thay đổi mật khẩu người dùng.
   - `usermod`: Sửa đổi cài đặt người dùng.
   - `groups`: Hiển thị thông tin về các nhóm của người dùng.
   - `sudo`: Thực thi các lệnh với quyền quản trị.

9. **Quản lý Quy trình:**
   - `ps`: Liệt kê các quy trình đang chạy.
   - `kill`: Dừng các quy trình.
   - `top` hoặc `htop`: Theo dõi tài nguyên hệ thống và quy trình.

10. **Thông tin Hệ thống:**
    - `uname`: Hiển thị thông tin hệ thống.
    - `df`: Hiển thị tình trạng sử dụng không gian đĩa.
    - `free`: Hiển thị tình trạng sử dụng bộ nhớ hệ thống.
    - `lsb_release`: Lấy thông tin về phiên bản hệ thống Linux.

11. **Nén và Giải nén tập tin:**
    - `tar`: Tạo và trích xuất các tập tin tar.
    - `zip` và `unzip`: Tạo và trích xuất các tập tin ZIP.
    - `gzip`, `gunzip`, `bzip2` và `unzip`: Nén và giải nén tập tin.

12. **Mạng:**
    - `ping`: Kiểm tra kết nối mạng.
    - `ifconfig` hoặc `ip`: Cấu hình mạng.
    - `ssh`: Kết nối một cách an toàn đến máy chủ từ xa.

13. **Chuyển tập tin:**
    - `scp`: Sao chép tập tin một cách an toàn giữa hệ thống cục bộ và hệ thống từ xa.
    - `rsync`: Đồng bộ hóa tập tin và thư mục giữa các hệ thống.

14. **Khởi động lại và Tắt hệ thống:**
    - `reboot`: Khởi động lại hệ thống.
    - `shutdown`: Tắt hệ thống.

Những lệnh này là một số trong những lệnh cơ bản nhất và phổ biến nhất của Linux. Học các lệnh này sẽ cung cấp nền tảng vững chắc để làm việc trong môi trường Linux. Khi bạn tích luỹ kinh nghiệm, bạn có thể khám phá các lệnh và khái niệm nâng cao hơn. Sử dụng lệnh `man` theo sau bởi tên lệnh (ví dụ: `man ls`) để truy cập tài liệu hướng dẫn và tìm hiểu thêm.