# 🧪 TESTING-QA: QUY CHUẨN KIỂM THỬ & BẢO VỆ TÍNH TRUNG THỰC CỦA TEST

---

## 1. NGUYÊN TẮC BẤT KHẢ XÂM PHẠM (TEST INTEGRITY)
* **CẤM SỬA TEST ĐỂ LÀM CODE XANH**:
  - Khi một bài test bị đỏ (Failed), **lỗi nằm ở Implementation Code**, không được phép sửa đổi giá trị `expect()` hoặc xóa bỏ các assertion để qua mắt User.
  - Phải phân tích nguyên nhân gốc rễ (Root Cause) và sửa hàm chính cho đến khi đạt được kết quả mà bài test yêu cầu.
* **Test độc lập (Isolated)**: Mỗi ca kiểm thử (test case) phải chạy độc lập, không phụ thuộc vào thứ tự chạy hoặc dữ liệu sót lại từ test trước.

---

## 2. CẤU TRÚC TEST CHUẨN: AAA (ARRANGE - ACT - ASSERT)
Mọi bài test phải được cấu trúc rõ ràng thành 3 phần:
1. **Arrange (Chuẩn bị)**: Khởi tạo dữ liệu đầu vào, mock các dịch vụ mạng/bên thứ 3 nếu cần.
2. **Act (Thực thi)**: Gọi hàm hoặc API cần kiểm thử.
3. **Assert (Khẳng định)**: So sánh kết quả trả về với kỳ vọng.

---

## 3. QUY TẮC MOCKING AN TOÀN
* Chỉ mock các tác vụ mạng bên ngoài (External APIs, Stripe, AWS S3, Gửi email/SMS).
* Dữ liệu mock trong test phải tuân thủ đúng 100% schema và interface của dịch vụ thật.
* Sử dụng fixture hoặc factory để tạo dữ liệu mẫu, không hardcode ngẫu nhiên lung tung.

---

## 4. CODE MẪU CHUẨN (PYTEST / JEST PATTERN)
```python
import pytest
from unittest.mock import AsyncMock, patch
from src.services.order_service import process_order
from src.exceptions import InsufficientStockException

@pytest.mark.asyncio
async def test_process_order_success():
    # 1. Arrange
    user_id = "user_123"
    cart_items = [{"product_id": "prod_1", "quantity": 2, "price": 50.0}]
    mock_payment_gateway = AsyncMock()
    mock_payment_gateway.charge.return_value = {"status": "SUCCESS", "tx_id": "tx_999"}

    # 2. Act
    result = await process_order(
        user_id=user_id,
        items=cart_items,
        payment_service=mock_payment_gateway
    )

    # 3. Assert
    assert result["success"] is True
    assert result["order_id"] is not None
    assert result["total_amount"] == 100.0
    mock_payment_gateway.charge.assert_called_once_with(user_id=user_id, amount=100.0)
```
