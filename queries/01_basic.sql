-- Câu 1: Tổng số đơn hàng
SELECT count(*)
FROM olist_orders_dataset

-- Câu 2: Tổng doanh thu
SELECT sum(payment_value) as Doanh_thu_tong         -- Doanh thu bao gồm phí ship (tiền khách thực trả)
FROM olist_order_payments_dataset

SELECT sum(price) as Doanh_thu_san_pham         -- Doanh thu sản phẩm
FROM olist_order_items_dataset

-- Câu 3: Số khách hàng (người mua thật)
SELECT count(distinct customer_unique_id) as so_nguoi_mua
FROM olist_customers_dataset