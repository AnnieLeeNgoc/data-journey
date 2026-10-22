# Ngày 12 - GROUP BY, HAVING, hàm tổng hợp

## Ghi chú
- Hàm tổng hợp (COUNT, SUM, AVG, MIN, MAX) làm gì?
    Count: Đếm số lượng
    Sum: Tổng giá trị
    Avg: Trung bình
    Min - Max: Nhỏ nhất _ Lớn nhất
- GROUP BY làm gì? Nhóm các giá trị trùng lặp trong cột
- WHERE khác HAVING ở chỗ:
    WHERE lọc dòng trước khi gom nhóm, áp dụng cho từng dòng dữ liệu gốc
    HAVING lọc nhóm sau khi gom nhóm, áp dụng cho kết quả của hàm tổng hợp, sau Group By

- Lỗi mình dễ mắc: thường mình sẽ dùng where nhiều hơn, từ nay phải dùng having cho quen

## 5 ví dụ trên Olist

### 1. Liệt kê đơn hàng có số bài đánh giá > 1
SELECT order_id, count(*)
FROM olist_order_reviews_dataset
group by order_id
having count(*) > 1 
### 2. Trung bình giá trị của từng đơn hàng
SELECT order_id, avg(payment_value)
FROM olist_order_payments_dataset
group by order_id
### 3. Tìm seller có mã zip_code nhỏ nhất
SELECT seller_city, min(seller_zip_code_prefix)
FROM olist_sellers_dataset
### 4. Sản phẩm có giá trị cao nhất
SELECT product_id, max(price)
FROM olist_order_items_dataset
### 5. Sản phẩm có cước vận chuyển cao nhất
SELECT product_id, max(freight_value)
FROM olist_order_items_dataset