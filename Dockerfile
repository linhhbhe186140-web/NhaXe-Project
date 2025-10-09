# Dùng image Nginx làm base
FROM nginx:latest

# Copy file HTML, CSS, hình ảnh vào thư mục gốc của Nginx
COPY html /usr/share/nginx/html

# Copy file cấu hình Nginx tùy chỉnh
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Mở cổng 80
EXPOSE 80

# Chạy Nginx
CMD ["nginx", "-g", "daemon off;"]
