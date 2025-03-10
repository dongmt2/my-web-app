# Sử dụng image nginx phiên bản nhẹ
FROM nginx:alpine

# Copy toàn bộ mã nguồn vào thư mục mặc định của nginx
COPY . /usr/share/nginx/html

# Mở cổng 80 để truy cập web
EXPOSE 80
