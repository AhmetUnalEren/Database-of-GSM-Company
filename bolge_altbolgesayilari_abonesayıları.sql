SELECT bolgebayilikleri.bolgeadi,COUNT(altbayilikler.id) AS altbayilik_say�s�,count(aboneler.id) AS abone_say�s�
FROM ((bolgebayilikleri LEFT JOIN altbayilikler
ON bolgebayilikleri.id=altbayilikler.bolgebayilik_id)LEFT JOIN aboneler ON aboneler.abonebayilik_id=altbayilikler.id)
GROUP BY bolgeadi;
