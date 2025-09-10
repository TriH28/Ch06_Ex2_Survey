# Sử dụng Tomcat 9 với JDK 17
FROM tomcat:9.0.89-jdk17-temurin

# Xóa ứng dụng mặc định (ROOT)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR của bạn vào Tomcat, đổi tên thành ROOT.war để chạy trực tiếp trên "/"
COPY ch06_ex2_survey_war.war /usr/local/tomcat/webapps/ROOT.war

# Expose cổng 8080 (Render sẽ tự map port này)
EXPOSE 8080

# Chạy Tomcat
CMD ["catalina.sh", "run"]
