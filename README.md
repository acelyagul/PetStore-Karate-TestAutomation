# Petstore API Automation Tests

Bu repo Kloia Test Bootcamp'in final projelerinden API Otomasyon Test projesi için oluşturulmuştur. Java Karate ile birçok test otomasyonu yazıldı. Burada yapılan bazı test api filtreleme, helper dosyası yaratma ve sahte veri üretmek, bu sahte veriler ile json istek göndermek, callers yaratıp kullanmak gibi test senaryoları idi. Github adresimde proje detayları bulunmaktadır.

## Kurulum Öncesi Gereksinimler
* Java
* Maven
* karate-junit4
* javafaker
* maven-surefire-plugin

## Kurulum Adımları

1- Bash ekranı açılır.
`

2- PetStore-Karate-TestAutomation reposu lokal cihaza kopyalanır.

``` git clone https://github.com/acelyagul/PetStore-Karate-TestAutomation.git ```

3- Klasöre gidilir.

``` cd PetStore-Karate-TestAutomation ```

4- Ardından test dosyaları çalıştırılır.

``` mvn clean test -Dtest=MyRunner  ```

Not: Test sonuçları "Target" klasörü altında yer alan "karate.log" dosyasında raporlanmaktadır. 

