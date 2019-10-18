SELECT aboneler.*,tarifeler.tarifeismi
FROM aboneler,tarifeler
WHERE aboneler.id = ANY (SELECT faturalar.musteri_id
FROM faturalar
WHERE faturalar.dakikamiktar= ANY (SELECT MAX(faturalar.dakikamiktar) FROM faturalar )) and aboneler.abonetarife_id=tarifeler.id;