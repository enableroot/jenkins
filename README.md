# Jenkins

Bu repo, Docker ile tek bir `Dockerfile` kullanarak Jenkins (Blue Ocean eklentili) çalıştırmak için hazırlanmıştır.

**Proje:**
- **Amaç:** Tek Dockerfile ile Jenkins + Blue Ocean eklentilerini içeren reproduklenebilir bir imaj oluşturmak.


**Admin Parolası**
- **Yol:** Başlangıçtaki admin parolası container içinde `/var/jenkins_home/secrets/initialAdminPassword` dosyasında bulunur.

**Blue Ocean erişimi**
- **URL:** `http://localhost:8080/blue`
- **Not:** Sidebar link görünmüyorsa doğrudan `/blue` adresini ziyaret edin.

**Neden plugin her yeniden başlatmada tekrar kuruluyor?**
- **Sebep:** `JENKINS_HOME` kalıcı bir volume ile bağlanmamış veya container her seferinde `--rm` ile siliniyor.
- **Çözüm:** Yukarıdaki `-v jenkins_home:/var/jenkins_home` ile named volume kullanın ve container'ı `docker stop/start` ile yönetin.


**İpucu**
- Plugin sürümlerini sabitlemek isterseniz `jenkins-plugin-cli --plugins "blueocean:1.25.3 ..."` şeklinde versiyon belirtebilirsiniz.
- Hataları hızlı görmek için build komutunu `--progress=plain` ile çalıştırın.

---

Katkıda bulunmak isterseniz pull request gönderin veya issue açın.

wwww.enableroot.com
