--1. SELECT SORGUSU



-- UPDATE yazilar
-- SET kul_id = 1
-- WHERE yazi_id = 1;
--select * from yazilar

-- UPDATE yazilar
--  SET kul_id = 2
--  WHERE yazi_id = 2;

-- UPDATE yazilar
--  SET kul_id = 3
--  WHERE yazi_id = 3;

--  UPDATE yazilar
--  SET olusturma_tarihi = '2024-01-02'
--  WHERE yazi_id = 1;

--  UPDATE yazilar
--  SET olusturma_tarihi = '2024-01-05'
--  WHERE yazi_id = 2;

--   UPDATE yazilar
--   SET olusturma_tarihi = '2024-01-08'
--   WHERE yazi_id = 3;

/*
yukarıda yazilar tablosunda kul_id sine deger atadım hangi yazıyı hangi kullanıcı yazdı belli olsun diye
cunku olusturacağım select sorgusunda  kullanmam gerekecek.
sonra yaziların olusturulma_tarihi değerlerini güncelledim cunku yine select sorgusunda kullanacağım.
*/
-- SELECT 
--     ad AS kullanici_ad,
--     soyad AS kullanici_soyad,
--     baslik AS yazinin_basligi,
--     icerik AS yazinin_icerigi
-- FROM kullanicilar 
-- INNER JOIN yazilar  ON kullanici_id = kul_id
-- WHERE olusturma_tarihi BETWEEN '2024-01-01' AND '2024-01-07';

/*
burada kullanicilar ve yazilar tablosunu inner join operatörünü kullanarak birlesştirdim kullanıcılar tablosundan
ad,soyad geldi ve bunlara daha anlamlı olması için as operatörünü kullanarak takma adlar verdim.
yazilar tablosundan ise baslik ve icerik kısmını aldım.bunlara da takma adlar verdim daha anlamlı olması için 
ve kullanici_id ile kul_id ile eşlesenleri birlestirip getirdi.
en son where ve between operatörlerini kullanarak belirli tarihiler arasında olusturulan yazıları getirdim.
*/
--select * from yazilar


-- **********************************************************************************

	-- 2.SELECT SORGUSU
	
	
	

	
	--  SELECT kullanici_id,ad,soyad,kul_id, kullanici_rol.rol_id AS kullanicinin_rol_idsi,roller.rol_id AS roller_id,roller.rol_adi
--  FROM kullanicilar
--  INNER JOIN kullanici_rol ON kullanicilar.kullanici_id = kullanici_rol.kul_id
--  INNER JOIN roller ON kullanici_rol.rol_id = roller.rol_id
--  WHERE kullanicilar.ad LIKE '%ay';
 
 /*
 burada yazdığım select sorgusunda önce amacımı belirtim:
 bize verilen yönergede bir soru şöyleydi:
 Sınıfınızdan en az 5 kişinin bilgilerini kullanicilar tablosuna farklı roller ile ekleyin ve kullanicilar.sql dosyası 
olarak kaydedin.
bu sorguyu yapıp calıstırdığımda şunu farkettim sonuç olarak hangi kullanıcıya hangi rolu atadığımı biliyordum ama bunu somut
olarak görememiştim (calıstırdığımda tabloda)
bu yüzden bunu tabloda somut olarak görebilmek için bu select sorgusunu yazdım.
 */
 /*
 ilk önce tabloda tabloda görmek istediğim alanları giriyorum 
 kullanic_id,ad,soyad,kul_id(burada kul_id'nin kullanici_rol tablosundan geldiğini belirtmek için
 şöyle bir yöntemde kullanabiliriz ama ben tercih etmedim cunku bu alan adında diğer ilişkili oldugu tablolarda bu ad'da alan yoktur),
 kullanici_rol.rol_id(burada ise rol_id diye adlı iki alan iki tabloda var ve bu tablolar ilişkili olduğu için
 baslarına hangi tablodam geldiğinin belirtmemiz gerekti) as  kullanicinin_rol_idsi,(burada takma isim verdik alan adı boş gelmesin diye),
 roller.rol_id AS roller_id,roller.rol_adi
 
 from kullanicilar
 sonra birleştirme işleminin yapacağım inner join operatörünü kullanıyorum burada kullanicilar tablosunu, kullanici_rol tablosu ile kullanici_id alanında, 
 roller tablosu ile rol_id alanında birleştiriyorum bu sayede kullanıcı bilgileri ve kullanıcı rolleri birleşmiş oluyor
 
 INNER JOIN kullanici_rol ON kullanicilar.kullanici_id = kullanici_rol.kul_id
 INNER JOIN roller ON kullanici_rol.rol_id = roller.rol_id
 
 eğer burda butun kullanıcıların rollerini görmek istiyorsak where komutu kullanmaya gerek yok 
 
 burada where komutu kullanarak kullanıcılar tablosunda bulunan bulunan kullanıcıların adının sonu ay ile biten kullanıcılarının
 rollerini öğrenmek  istiyorum bu yuzden where ve like operatörünü kullanıyorum
 WHERE kullanicilar.ad LIKE '%ay';
 
 */



