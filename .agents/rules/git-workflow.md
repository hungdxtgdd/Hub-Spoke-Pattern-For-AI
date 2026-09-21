# 🌿 GIT-WORKFLOW: KỶ LUẬT QUẢN LÝ PHIÊN BẢN & PHANH AN TOÀN

Git là tấm khiên bảo vệ duy nhất ngăn AI phá nát dự án. Tuân thủ nghiêm ngặt các quy tắc sau:

---

## 1. KIỂM TRA TRƯỚC KHI CODE (PRE-FLIGHT STATUS)
* **Kiểm tra trạng thái Working Tree**: Nếu phát hiện User có uncommitted changes lớn trước khi bắt đầu tính năng mới, hãy nhắc User commit hoặc tạo nhánh mới.
* **Quy tắc tạo nhánh**:
  - Tính năng mới: `git checkout -b feat/<tên-tính-năng-ngắn-gọn>`
  - Sửa lỗi: `git checkout -b fix/<tên-lỗi>`
  - Thử nghiệm: `git checkout -b chore/<tên-nhiệm-vụ>`

---

## 2. QUY CHUẨN COMMIT TỰ ĐỘNG (CONVENTIONAL COMMITS)
Sau mỗi lần hoàn thành 1 nhiệm vụ nhỏ, AI **bắt buộc** phải chuẩn bị sẵn câu lệnh Git Commit ở cuối câu trả lời theo format:

```bash
git add <danh_sách_file_đã_sửa>
git commit -m "<type>(<scope>): <mô tả ngắn gọn bằng tiếng Anh hoặc tiếng Việt>"
```

### Bảng phân loại Commit Type:
* `feat`: Thêm tính năng mới
* `fix`: Sửa lỗi / bug
* `refactor`: Tái cấu trúc code (không đổi behavior)
* `style`: Sửa format, UI, CSS (không đổi logic)
* `test`: Thêm hoặc cập nhật unit/integration test
* `docs`: Cập nhật tài liệu, README, rules

---

## 3. NGUYÊN TẮC CONTEXT MANAGEMENT (RESET CHAT)
* Ngay sau khi cung cấp lệnh commit cho 1 tính năng hoàn tất, AI phải nhắc User:
  > *"✅ Tính năng đã hoàn thành và lưu checkpoint an toàn. Hãy chạy commit trên, sau đó **mở New Chat (`Cmd + L`)** để bắt đầu tính năng tiếp theo nhằm giữ context luôn sạch sẽ."*

---

## 4. QUY TRÌNH PHỤC HỒI KHẨN CẤP (ROLLBACK PROTOCOL)
Nếu gặp lỗi logic nghiêm trọng, xung đột hoặc sửa qua 2 lần vẫn không chạy:
* **Tuyệt đối KHÔNG tiếp tục vá víu chồng chéo.**
* Hướng dẫn User lùi về commit an toàn gần nhất bằng:
  ```bash
  # Hủy toàn bộ thay đổi chưa commit
  git restore .
  git clean -fd
  ```
  hoặc:
  ```bash
  # Quay lại commit an toàn trước đó
  git reset --hard HEAD
  ```
