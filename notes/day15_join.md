# Ngày 15 - Hàm Inner/Left/Right/Full Join

## Ghi chú
- Inner Join: Chỉ lấy các dòng có trong cả 2 bảng A và B
- Left Join: Lấy tất cả dòng ở bảng A
- Right Join: Lấy tất cả dòng ở bảng B
- Full Join: Lấy tất cả dòng của cả 2 bảng

## Ví dụ
select ...
from table1 a
inner/left/right/full join table2 b
    on a.cot = b.cot            -- on nối FK của bảng con với PK của bảng cha
        - Left Join: giữ mọi dòng của bảng đứng trước JOIN
        - Right Join: giữ mọi dòng của bảng đứng sau JOIN