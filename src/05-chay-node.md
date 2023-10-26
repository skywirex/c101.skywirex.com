# Chạy node

Trong thế giới blockchain, thuật ngữ "node" thường được hiểu là một thiết bị hoặc máy tính tham gia vào mạng lưới bằng cách duy trì một bản sao của sổ cái (ledger) của blockchain và thực hiện việc xác minh và chứng thực các giao dịch. Các node đóng một vai trò quan trọng trong hoạt động của mạng blockchain và có thể được phân loại thành các loại khác nhau dựa trên vai trò và trách nhiệm của nó:

1. **Node Đầy Đủ (Full Nodes):** Đây là loại node phức tạp nhất trong mạng blockchain. Node đầy đủ lưu trữ một bản sao đầy đủ của sổ cái của blockchain và tham gia vào quá trình xác minh và lan truyền các giao dịch và khối mới. Chúng giúp đảm bảo tính toàn vẹn và an ninh của mạng bằng cách độc lập xác minh tất cả các giao dịch.

2. **Node Khai Thác (Mining Nodes):** Node khai thác là một phần con của các node đầy đủ. Chúng tham gia vào cơ chế đồng thuận của blockchain (ví dụ: chứng minh công việc hoặc chứng minh cổ phần) và cạnh tranh để thêm khối mới vào blockchain. Những node này thực hiện các nhiệm vụ tài nguyên cần đòi hỏi để giải quyết câu đố mật mã trong hệ thống chứng minh công việc và trong quá trình này, chúng có cơ hội kiếm thưởng dưới dạng tiền mã hóa (ví dụ Bitcoin).

3. **Node Nhẹ (Light Nodes):** Các node nhẹ không lưu trữ toàn bộ sổ cái của blockchain, mà thay vào đó phụ thuộc vào các node đầy đủ để xác minh giao dịch. Chúng duy trì chỉ một lượng dữ liệu tối thiểu cần thiết để xác minh giao dịch. Điều này giảm yêu cầu về lưu trữ và băng thông, làm cho chúng phù hợp cho các thiết bị có tài nguyên hạn chế như điện thoại di động.

4. **Node Trung Tâm (Masternodes):** Node trung tâm là các node trong một số mạng blockchain (ví dụ: Dash) thực hiện các chức năng bổ sung ngoài việc xác minh giao dịch. Thường chúng hỗ trợ tính năng như giao dịch tức thì, giao dịch riêng tư và quản trị phi tập trung. Chạy một node trung tâm thường đòi hỏi một số tiền đặt cọc mã hoá đáng kể để đảm bảo rằng người vận hành node có quyền lợi đối với an ninh của mạng.

5. **Node Giống Hạt (Seed Nodes):** Node giống hạt rất quan trọng cho việc thiết lập và đồng bộ hóa các node mới trên mạng. Chúng lưu trữ một danh sách các node hoạt động và giúp các node mới khám phá và kết nối với mạng.

6. **Node Giảm Kích Thước (Pruned Nodes):** Các node giảm kích thước chỉ lưu trữ một phần của lịch sử của blockchain, thường chỉ lưu giữ các giao dịch và khối mới nhất. Điều này giảm yêu cầu về lưu trữ trong khi vẫn cho phép xác minh giao dịch.

Các node hợp tác để duy trì tính phi tập trung và không tin cậy của mạng blockchain. Bằng cách phân phối sổ cái và trách nhiệm về đồng thuận qua một mạng các node, công nghệ blockchain đảm bảo tính minh bạch, an ninh và chống lại sự kiểm soát tập trung hoặc điểm kiểm soát đơn lẻ.

Thông thường để cài đặt và vận hành một node, bạn cần có kiến thức cơ bản về Linux. Sử dụng Linux thông thạo bằng dòng lệnh là một kiến thức cần phải có để bắt đầu công việc chạy node.