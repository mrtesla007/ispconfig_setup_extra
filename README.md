# ispconfig_setup_extra


#Aynı olan tüm kelimeler değiştirilecekse;
#Kod: [Seç]
#sed -i 's/değiştirilecek kelime/yeni kelime/' /yol/dosya

#Dosya içinde aynı kelimeden birden çok var ve sadece satır numarası bilinen kelime değiştirilecekse; (örn : kelime 3. satırda bulunuyorsa)
#Kod: [Seç]
#sed -i '3s/değiştirilecek kelime/yeni kelime/' /yol/dosya

#Dosya içinde aynı kelimeden birden çok var fakat satır numarası bilinmiyor ama değişecek kelimenin tekrar eden kaçıncı kelime olduğu biliniyorsa; (örn: tekrar eden 4. kelime için) 
#Kod: [Seç]
#sed -i ':a;N;$!ba; s/değiştirilecek kelime/yeni kelime/4' /yol/dosya

#Kelimeyi bir değişken temsil edecekse; (yukardaki durumlar içinde geçerli)
#Kod: [Seç]
#sed -i "s/değiştirilecek kelime/$değişken/" /yol/dosya

#Sed kullanımında kelimeleri ayıran seperotörler ile kelimenin içinde bulunan terimler aynı ise terimin seperator olmadığını belirtmek amacı ile ters slash kullanılabilir.
#Kod: [Seç]
#sed -i "s/\/home\/user/yeni kelime/" /yol/dosya

#Veya seperator değiştirilebilir. , % | gibi. Genellikle değişken içinde ters slash oluşturulamayacağı için bu yöntem kullanılır.
#Kod: [Seç]
#sed -i "s%değişken1%$değişken2%" /yol/dosya
