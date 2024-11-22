# Sử dụng image cơ bản của OpenJDK
FROM openjdk:17-jdk-slim

# Đặt thư mục làm việc bên trong container
WORKDIR /app

# Sao chép file JAR của ứng dụng vào thư mục làm việc
COPY target/r2s-mobile-store.jar /app/r2s-mobile-store.jar

# Mở cổng 8080 (hoặc cổng mà ứng dụng của bạn chạy)
EXPOSE 8080

# Lệnh để chạy ứng dụng khi container bắt đầu
ENTRYPOINT ["java", "-jar", "/app/r2s-mobile-store.jar"]