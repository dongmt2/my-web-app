FROM nginx:alpine

# Cập nhật danh sách gói và nâng cấp tất cả các gói lên phiên bản mới nhất
RUN apk update && apk upgrade

# Copy toàn bộ mã nguồn vào thư mục mặc định của Nginx
COPY . /usr/share/nginx/html

# Thêm healthcheck: mỗi 30 giây kiểm tra endpoint chính
HEALTHCHECK --interval=30s --timeout=3s --start-period=10s --retries=3 \
    CMD curl -f http://localhost/ || exit 1

# Mở cổng 80 để truy cập ứng dụng
EXPOSE 80
