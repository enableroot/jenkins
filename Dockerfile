# Yüklenecek jenkins imajını yazıyoruz.
FROM jenkins/jenkins:lts-jdk17

# Burada root kullanıcısına geçiyoruz çünkü plugin kurulumu için gerekli izinlere sahip olmamız gerekiyor.
USER root

# Pluginleri yüklüyoruz.
RUN jenkins-plugin-cli --plugins "blueocean:1.27.24" 

# Tekrar jenkins kullanıcısına geçiyoruz çünkü jenkins bu kullanıcı altında çalışıyor.
USER jenkins

# Portları belirtiyoruz.
EXPOSE 8080 50000


