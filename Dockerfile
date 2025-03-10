FROM nginx:alpine

# Cập nhật danh sách gói và nâng cấp tất cả các gói lên phiên bản mới nhất
RUN apk update && apk upgrade

# Copy toàn bộ mã nguồn vào thư mục mặc định của Nginx
COPY . /usr/share/nginx/html

# Mở cổng 80 để truy cập ứng dụng
EXPOSE 80
