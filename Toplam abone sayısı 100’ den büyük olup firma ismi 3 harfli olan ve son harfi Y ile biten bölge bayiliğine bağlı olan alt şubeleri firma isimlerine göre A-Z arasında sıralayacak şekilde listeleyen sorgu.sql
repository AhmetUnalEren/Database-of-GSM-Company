SELECT * FROM altbayilikler INNER JOIN bolgebayilikleri ON altbayilikler.bolgebayilik_id=bolgebayilikleri.id WHERE bolgebayilikleri.id IN

(SELECT bolgebayilikleri.id
FROM ((bolgebayilikleri 
INNER JOIN altbayilikler ON bolgebayilikleri.id = altbayilikler.bolgebayilik_id and bolgebayilikleri.bolgeadi LIKE '__c%')
INNER JOIN aboneler ON altbayilikler.id=aboneler.abonebayilik_id)
GROUP BY bolgebayilikleri.id
HAVING COUNT(altbayilikler.bolgebayilik_id)>1 )
ORDER BY altbolgeadi ASC
;



