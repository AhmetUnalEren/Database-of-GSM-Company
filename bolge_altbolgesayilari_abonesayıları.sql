SELECT bolgebayilikleri.bolgeadi,COUNT(altbayilikler.id) AS altbayilik_sayýsý,count(aboneler.id) AS abone_sayýsý
FROM ((bolgebayilikleri LEFT JOIN altbayilikler
ON bolgebayilikleri.id=altbayilikler.bolgebayilik_id)LEFT JOIN aboneler ON aboneler.abonebayilik_id=altbayilikler.id)
GROUP BY bolgeadi;
