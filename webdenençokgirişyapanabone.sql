SELECT top 1 aboneler.id AS abone_id,aboneler.*,tarifeler.tarifeismi,aboneweb.girissayisi AS web_giriþ_sayýsý
FROM aboneler, aboneweb,tarifeler
WHERE aboneler.id=aboneweb.abone_id and tarifeler.id=aboneler.abonetarife_id
ORDER BY aboneweb.girissayisi DESC
