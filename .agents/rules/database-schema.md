# 🗄️ DATABASE-SCHEMA: QUY CHUẨN CƠ SỞ DỮ LIỆU & MIGRATION AN TOÀN

---

## 1. NGUYÊN TẮC THIẾT KẾ SCHEMA (DATA MODELING)
* **Khóa chính & Định danh**: Ưu tiên sử dụng `UUIDv4` hoặc `ULID`/`CUID` cho các bảng cần mở rộng phân tán, hoặc `BIGINT Auto Increment` cho các bảng đơn giản nội bộ.
* **Thời gian chuẩn (Timestamps)**: Mọi bảng bắt buộc phải có 2 trường:
  - `created_at`: Thời gian tạo (UTC, default now)
  - `updated_at`: Thời gian cập nhật gần nhất (UTC, auto update)
* **Xóa mềm (Soft Delete)**: Với dữ liệu người dùng, giao dịch hoặc cấu hình quan trọng, sử dụng `deleted_at (TIMESTAMP NULL)` thay vì lệnh `DELETE` cứng.

---

## 2. QUY CHUẨN MIGRATION AN TOÀN (ZERO-DOWNTIME MIGRATION)
* **Không Migration phá vỡ (Non-breaking migrations)**:
  - Khi đổi tên cột: Tạo cột mới $ightarrow$ Đồng bộ dữ liệu $ightarrow$ Chuyển code sang dùng cột mới $ightarrow$ Xóa cột cũ ở migration sau.
  - Khi thêm cột `NOT NULL`: Luôn đặt giá trị `DEFAULT` hợp lệ để không gây lỗi trên dữ liệu cũ.
* **Tạo Index hợp lý**:
  - Đánh Index trên mọi Foreign Key.
  - Đánh Composite Index theo thứ tự query (`WHERE col_a = ? AND col_b > ?`).
  - Không đánh Index tràn lan trên các cột ít khi tìm kiếm để tránh làm chậm thao tác Ghi (INSERT/UPDATE).

---

## 3. CODE MẪU MIGRATION CHUẨN (ALEMBIC / SQL SCHEMA)
```sql
CREATE TABLE IF NOT EXISTS orders (
    id VARCHAR(36) PRIMARY KEY,
    user_id VARCHAR(36) NOT NULL,
    total_amount DECIMAL(12, 2) NOT NULL DEFAULT 0.00,
    status VARCHAR(30) NOT NULL DEFAULT 'PENDING',
    metadata JSONB NULL,
    created_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT CURRENT_TIMESTAMP,
    deleted_at TIMESTAMP WITH TIME ZONE NULL,
    
    CONSTRAINT fk_orders_user FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE RESTRICT
);

CREATE INDEX IF NOT EXISTS idx_orders_user_status ON orders(user_id, status) WHERE deleted_at IS NULL;
CREATE INDEX IF NOT EXISTS idx_orders_created_at ON orders(created_at DESC);
```
