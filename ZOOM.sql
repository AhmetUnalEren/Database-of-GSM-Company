SELECT aboneler.*,(faturalar.dakikamiktar*tarifeler.tarifedakikaucretikrs+faturalar.smsmiktar*tarifeler.tarifesmsucretikrs) AS odenecekfatura
FROM aboneler,tarifeler,faturalar
WHERE aboneler.abonetarife_id IN
(SELECT tarifeler.id FROM tarifeler WHERE tarifeler.tarifeismi='ZOOM' and tarifeler.tarifedakikaucretikrs=0.5 and tarifeler.tarifesmsucretikrs=0.5)and aboneler.abonetarife_id=tarifeler.id  and faturalar.musteri_id=aboneler.id




