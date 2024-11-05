# Kiến thức cơ bản

Để bắt đầu chạy một node trước tiên bạn cần phải có **kiến thức cơ bản về LINUX dòng lệnh**

Ngoài ra, chạy một node blockchain đòi hỏi kiến thức kết hợp giữa kỹ thuật, thực hành và bảo mật. Mỗi blockchain có yêu cầu riêng, vì vậy kinh nghiệm cụ thể với blockchain mà bạn vận hành node sẽ rất hữu ích.

### 1. **Phần Cứng và Hệ Điều Hành**
   - **Yêu Cầu về Máy Chủ**: Kiến thức về các thông số phần cứng cần thiết, như CPU, RAM, bộ nhớ và băng thông, tùy theo yêu cầu của mạng lưới. Ví dụ, các full node của Bitcoin đòi hỏi nhiều dung lượng lưu trữ và băng thông.
   - **Hệ Điều Hành**: Hiểu biết về các hệ điều hành dựa trên Linux (như Ubuntu, Alpine) là cần thiết, vì đa phần các node chạy trên các hệ điều hành này để đảm bảo tính ổn định và bảo mật.

### 2. **Kiến Thức Cơ Bản về Blockchain**
   - **Cơ Chế Đồng Thuận**: Hiểu về các cơ chế như Proof of Work (PoW), Proof of Stake (PoS), hoặc các giao thức khác tùy theo blockchain mà bạn quan tâm, vì mỗi cơ chế có yêu cầu vận hành khác nhau.
   - **Kiến Trúc Blockchain**: Biết về cấu trúc của các block, giao dịch, và cách các node tương tác trong mạng lưới.
   - **Các Loại Node**: Hiểu các loại node (full node, light node, validator node) và mục đích của chúng. Chẳng hạn, full node lưu trữ toàn bộ blockchain, còn light node chỉ lưu trữ một phần, và validator node thì xác thực giao dịch.

### 3. **Mạng và Bảo Mật**
   - **Cấu Hình Firewall**: Cấu hình tường lửa để cho phép kết nối vào và ra chỉ trên các cổng cần thiết.
   - **Thiết Lập Mạng**: Hiểu biết về mạng ngang hàng (P2P), NAT traversal và chuyển tiếp cổng để đảm bảo kết nối node đúng cách.
   - **Phòng Chống DDoS và Mối Đe Dọa**: Nhận biết các mối đe dọa bảo mật như tấn công DDoS và cách phòng chống (ví dụ, sử dụng VPN hoặc tường lửa đám mây).
   - **Bảo Mật Dữ Liệu và Quyền Riêng Tư**: Hiểu về các phương pháp mã hóa và thực hành bảo mật, đặc biệt khi chạy node cho các blockchain tập trung vào quyền riêng tư.

### 4. **Vận Hành Node**
   - **Phần Mềm Đặc Thù Blockchain**: Nắm vững phần mềm máy khách (như `bitcoind` cho Bitcoin, `geth` cho Ethereum) và cách cài đặt, cấu hình, cập nhật.
   - **Kỹ Năng CLI**: Phần lớn các hoạt động của node được quản lý qua lệnh CLI. Biết cách khởi động, dừng và kiểm tra trạng thái node, cũng như khắc phục sự cố là rất quan trọng.
   - **Quản Lý Lưu Trữ**: Biết cách quản lý việc sử dụng dung lượng đĩa và giám sát dữ liệu blockchain, đặc biệt nếu chạy full node với yêu cầu lưu trữ có thể tăng đáng kể.

### 5. **Bảo Trì và Giám Sát**
   - **Giám Sát Hệ Thống**: Sử dụng các công cụ như Grafana, Prometheus hoặc các công cụ đặc thù blockchain để giám sát hiệu suất node, thời gian hoạt động và tài nguyên sử dụng.
   - **Cập Nhật Thường Xuyên**: Luôn nắm bắt thông tin về các bản cập nhật phần mềm và thực hiện cập nhật kịp thời để đảm bảo tương thích với các thay đổi mạng lưới và vá lỗi bảo mật.
   - **Sao Lưu và Khôi Phục Dữ Liệu**: Biết cách sao lưu dữ liệu của node và khôi phục khi có sự cố.

### 6. **Khắc Phục Sự Cố và Debug**
   - **Phân Tích Log**: Kiểm tra log để tìm ra lỗi hoặc các bất thường nhằm chẩn đoán sự cố. Mỗi phần mềm blockchain có hệ thống log riêng, nên việc hiểu biết về điều này là cần thiết.
   - **Sự Cố Kết Nối**: Xác định và khắc phục các vấn đề như mất kết nối mạng, vấn đề đồng bộ, hoặc chiều cao block không đồng bộ.

### 7. **Hiểu Biết Về Hệ Sinh Thái và Quản Trị**
   - **Chính Sách Mạng Lưới**: Hiểu biết về quản trị, như các đợt hard fork, soft fork và các thay đổi giao thức, vì điều này có thể ảnh hưởng đến vận hành của node.
   - **Tham Gia Cộng Đồng**: Nhiều vấn đề và cập nhật được cộng đồng thúc đẩy. Tham gia vào các diễn đàn cộng đồng hoặc nhóm Discord có thể giúp bạn cập nhật các thay đổi.