# Đọc Xu Hướng Coin Khung 1H

> **Nguyên tắc cốt lõi:** Cần ít nhất **3/6 chỉ số đồng thuận** để xác nhận xu hướng. Dưới ngưỡng này — không xác định được xu hướng.

---

## Bước 1 — Cấu Trúc Giá (Price Action)

*Đọc trước tiên, không cần chỉ số kỹ thuật nào.*

| Xu hướng | Dấu hiệu |
|---|---|
| **Uptrend** | HH + HL liên tiếp — đỉnh sau cao hơn đỉnh trước, đáy sau cao hơn đáy trước |
| **Downtrend** | LH + LL liên tiếp — đỉnh sau thấp hơn đỉnh trước, đáy sau thấp hơn đáy trước |
| **Sideway** | Đỉnh và đáy nằm trong biên ngang, không phá vỡ kháng cự và hỗ trợ |

**Tại sao đọc trước:** Cấu trúc giá là "bản đồ thực tế" — không bị trễ như các chỉ số tính toán. Nếu cấu trúc không rõ ràng, các chỉ số bên dưới sẽ nhiễu loạn.

---

## Bước 2 — EMA 20 / 50 / 200 (Bộ Lọc 3 Lớp)

*Xác nhận hướng và sức mạnh xu hướng trung hạn.*

| Xu hướng | Điều kiện EMA |
|---|---|
| **Uptrend** | Giá > EMA20 > EMA50 > EMA200 — 3 đường xếp hàng tăng dần |
| **Downtrend** | Giá < EMA20 < EMA50 < EMA200 — 3 đường xếp hàng giảm dần |
| **Sideway** | EMA nằm ngang, đan xen nhau, giá cắt qua lại liên tục |

**Lưu ý:**
- EMA càng giãn xa nhau → xu hướng càng mạnh
- EMA thu hẹp và đan xen → thị trường đang chuyển giao
- Không rõ xu hướng khi giá ở giữa vùng EMA đan xen

---

## Bước 3 — ADX (14) — Sức Mạnh Xu Hướng

*Trả lời câu hỏi: "Xu hướng có đang khỏe không?"*

| Giá trị ADX | Ý nghĩa |
|---|---|
| ADX < 25 | Không có xu hướng → Sideway (dù EMA trông có vẻ xếp hàng) |
| ADX 25–40 | Xu hướng đang hình thành hoặc duy trì |
| ADX > 40 | Xu hướng rất mạnh |
| ADX > 60 | Xu hướng cực mạnh, cẩn thận đảo chiều |

**Phân biệt hướng bằng DI:**
- +DI > -DI và ADX > 25 → **Uptrend** có lực
- -DI > +DI và ADX > 25 → **Downtrend** có lực
- +DI ≈ -DI và ADX < 25 → **Sideway**

> ⚠️ **Bẫy phổ biến nhất:** EMA vừa xếp hàng nhưng ADX vẫn < 25 → đây là tín hiệu giả.

---

## Bước 4 — RSI (14) — Vùng Sức Mạnh

*Xác định momentum và vùng giá có xác suất cao.*

| Xu hướng | Vùng RSI | Ý nghĩa |
|---|---|---|
| **Uptrend** | 50–70 | RSI giữ trên 50 trong pullback → xu hướng tăng còn mạnh |
| **Downtrend** | 30–50 | RSI bounce không vượt 50 → xu hướng giảm còn mạnh |
| **Sideway** | 35–65 | RSI dao động qua lại → mua <35, bán >65 |

**Tín hiệu bổ sung:**
- RSI **phân kỳ dương** (giá tạo LL mới nhưng RSI không) → cảnh báo đảo chiều tăng sớm
- RSI **phân kỳ âm** (giá tạo HH mới nhưng RSI không) → cảnh báo đảo chiều giảm sớm

---

## Bước 5 — MACD (12/26/9) — Xác Nhận Momentum

*Xác nhận chiều và lực của xu hướng.*

| Xu hướng | Tín hiệu MACD |
|---|---|
| **Uptrend** | MACD > Signal line · Histogram dương và đang tăng |
| **Downtrend** | MACD < Signal line · Histogram âm và đang giảm |
| **Sideway** | MACD và Signal đan xen liên tục · Histogram phẳng gần 0 |

**Tín hiệu xác nhận:**
- Crossover MACD cắt lên Signal (trong uptrend) → vào lệnh mua
- Crossover MACD cắt xuống Signal (trong downtrend) → thoát lệnh / cảnh báo
- Histogram thu nhỏ dần dù giá tiếp tục tăng → xu hướng đang yếu đi

---

## Bước 6 — Volume — Bằng Chứng Cuối Cùng

*Xu hướng không có volume đi kèm là xu hướng yếu.*

| Xu hướng | Tín hiệu Volume |
|---|---|
| **Uptrend** | Nến tăng có volume cao hơn nến giảm — lực mua áp đảo |
| **Downtrend** | Nến giảm có volume cao hơn nến tăng — lực bán áp đảo |
| **Sideway** | Volume thấp đều, không nến nào nổi bật |

---

## Bảng Hội Tụ — Điều Kiện Xác Nhận Đầy Đủ

### ▲ Uptrend — Đủ điều kiện khi ≥ 4/6 khớp

| # | Chỉ số | Điều kiện |
|---|---|---|
| 1 | Cấu trúc giá | HH + HL liên tiếp |
| 2 | EMA | Giá > EMA20 > EMA50 > EMA200 |
| 3 | ADX | ADX > 25 và +DI > -DI |
| 4 | RSI | RSI vùng 50–70, giữ trên 50 |
| 5 | MACD | MACD > Signal, histogram dương tăng |
| 6 | Volume | Nến xanh volume > nến đỏ |

**Khi ≥ 4/6 khớp:** Xác suất tiếp diễn uptrend ~85%

---

### ▼ Downtrend — Đủ điều kiện khi ≥ 4/6 khớp

| # | Chỉ số | Điều kiện |
|---|---|---|
| 1 | Cấu trúc giá | LH + LL liên tiếp |
| 2 | EMA | Giá < EMA20 < EMA50 < EMA200 |
| 3 | ADX | ADX > 25 và -DI > +DI |
| 4 | RSI | RSI vùng 30–50, bounce không vượt 50 |
| 5 | MACD | MACD < Signal, histogram âm giảm |
| 6 | Volume | Nến đỏ volume > nến xanh |

**Khi ≥ 4/6 khớp:** Xác suất tiếp diễn downtrend ~85%

---

### ↔ Sideway — Đủ điều kiện khi ≥ 4/6 khớp

| # | Chỉ số | Điều kiện |
|---|---|---|
| 1 | Cấu trúc giá | Đỉnh/đáy không phá biên ngang |
| 2 | EMA | EMA 20/50 nằm ngang, đan xen |
| 3 | ADX | ADX < 25 |
| 4 | RSI | Dao động 35–65, không cực đoan |
| 5 | MACD | Histogram phẳng gần 0, đan xen liên tục |
| 6 | Volume | Thấp đều, không nến nổi bật |

**Khi ≥ 4/6 khớp:** Xác suất giữ range ~72%
