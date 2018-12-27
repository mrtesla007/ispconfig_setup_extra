## ispconfig_setup_extra


# Aynı olan tüm kelimeler değiştirilecekse;

sed -i 's/değiştirilecek kelime/yeni kelime/' /yol/dosya

# Dosya içinde aynı kelimeden birden çok var ve sadece satır numarası bilinen kelime değiştirilecekse; (örn : kelime 3. satırda bulunuyorsa)

sed -i '3s/değiştirilecek kelime/yeni kelime/' /yol/dosya

# Dosya içinde aynı kelimeden birden çok var fakat satır numarası bilinmiyor ama değişecek kelimenin tekrar eden kaçıncı kelime olduğu biliniyorsa; (örn: tekrar eden 4. kelime için) 

sed -i ':a;N;$!ba; s/değiştirilecek kelime/yeni kelime/4' /yol/dosya

# Kelimeyi bir değişken temsil edecekse; (yukardaki durumlar içinde geçerli)

sed -i "s/değiştirilecek kelime/$değişken/" /yol/dosya

# Sed kullanımında kelimeleri ayıran seperotörler ile kelimenin içinde bulunan terimler aynı ise terimin seperator olmadığını belirtmek amacı ile ters slash kullanılabilir.

sed -i "s/\/home\/user/yeni kelime/" /yol/dosya

# Veya seperator değiştirilebilir. , % | gibi. Genellikle değişken içinde ters slash oluşturulamayacağı için bu yöntem kullanılır.

sed -i "s%değişken1%$değişken2%" /yol/dosya

# sed kullanmadan bir dosya en sonuna yazi ekleme

echo "eklenecek kelime" >> /yol/dosya
örnek
echo "zend_extension=/usr/local/ioncube/ioncube_loader_lin_7.3.so" >> /etc/php.ini
