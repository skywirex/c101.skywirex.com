# An toàn trực tuyến

Extension bảo vệ an toàn trực tuyến: [pocketuniverse](https://join.pocketuniverse.app/ref/UUR1)

Các thông báo khi Popup hiện lên màu đỏ là không an toàn, phải dừng lại và kiểm tra chắc chắn

![Popup nguy hiểm](images/popup-nguy-hiem.jpg)

![website-nguy-hiem](https://pub-b731809282d4443bba205fbf4c8ae4ee.r2.dev/b89a01ccc038deb5f037d5aa3a90f46a.jpg)

Các thông báo khi Popup hiện lên màu tím là an toàn, có thể kí được:

![Popup an toàn](images/popup-an-toan.jpg)


## ⚠️ Chiêu lừa mới lợi dụng EIP-7702 Delegations

Kẻ tấn công đang **tự động rút sạch ví (auto-drain)** ngay khi có tiền chuyển vào — khiến nhiều người dùng hoang mang không hiểu vì sao ví mình trống rỗng và nghi ngờ cả các ứng dụng yêu thích. Hãy cùng tìm hiểu **chuyện gì đang xảy ra** và **cách bảo vệ bản thân.**

### 🔍 EIP-7702 Delegations là gì?

Hãy tưởng tượng EIP-7702 như việc bạn **giao cho ví của mình một “trợ lý thông minh”** — giúp ví thực hiện giao dịch phức tạp hơn, chẳng hạn như các tính năng của **account abstraction** (tài khoản trừu tượng).

Tuy nhiên, **mặt trái** là: nếu bạn vô tình phê duyệt (approve) một **ủy quyền độc hại (malicious delegation)**, bạn có thể **mất sạch tiền trong ví** 🚫


### ⚙️ Chuyện này xảy ra như thế nào?

Kẻ tấn công **đánh lừa người dùng ký duyệt** thông qua các trang web giả mạo:

* Trang “mint NFT miễn phí”, “giveaway”, hoặc các **giao diện nhái** ứng dụng nổi tiếng.
* Khi bạn ký xong:
  • Hợp đồng độc hại có thể **tự động rút toàn bộ tiền trong ví bạn**
  • Một số hợp đồng dùng **fallback function** để **tự động gửi đi toàn bộ token gốc (ETH, BNB, v.v.)** ngay khi ví nhận được 
  • Đặc biệt: kẻ tấn công **không cần gửi thêm giao dịch nào**, tiền **bị rút ngay trong cùng block mà bạn vừa nhận tiền** 

### 🛡️ Cách bảo vệ ví của bạn

✅ **Chỉ ký ủy quyền (delegation)** với ứng dụng **uy tín và đã được xác minh** 
✅ **Đọc kỹ mọi yêu cầu chữ ký (signature request)** trước khi chấp nhận 
✅ **Vệ sinh ví thường xuyên** bằng công cụ như [RevokeCash](https://revoke.cash/) 

> 👉 Kiểm tra mục **Outgoing Delegations** ở tab **Delegation** (như hình minh họa) để chắc chắn rằng bạn **không vô tình ủy quyền** cho ví hoặc hợp đồng lạ.

![Delegation](https://pub-b731809282d4443bba205fbf4c8ae4ee.r2.dev/46df7c8945091e8f317840c0751da0cc.jpg) 

✅ **Cảnh giác với các “free mint” hoặc ưu đãi quá hấp dẫn** 
✅ **Kiểm tra kỹ URL**, **không nhấp vào liên kết lạ hoặc rút gọn** 
✅ Nếu tiền trong ví **biến mất bất thường**, hãy **kiểm tra lại các delegations ngay lập tức** 

### 🚨 Nếu nghi ngờ ví bị xâm phạm

• **Thu hồi (revoke)** ngay các delegations đáng ngờ bằng công cụ đáng tin cậy 
• **Chuyển toàn bộ tài sản sang ví mới**, không có quyền truy cập nào khả nghi 
• **Theo dõi hoạt động ví**, chú ý nếu có các giao dịch lặp lại hoặc bất thường 

💡 *Tóm lại:* EIP-7702 giúp cải thiện trải nghiệm người dùng Web3, nhưng cũng mở ra kẽ hở mới cho kẻ gian. Cẩn trọng khi ký bất kỳ yêu cầu nào — mỗi chữ ký là một ủy quyền!
