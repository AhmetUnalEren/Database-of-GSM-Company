SELECT top 1 aboneler.id AS abone_id,aboneler.*,tarifeler.tarifeismi,aboneweb.girissayisi AS web_giri�_say�s�
FROM aboneler, aboneweb,tarifeler
WHERE aboneler.id=aboneweb.abone_id and tarifeler.id=aboneler.abonetarife_id
ORDER BY aboneweb.girissayisi DESC
