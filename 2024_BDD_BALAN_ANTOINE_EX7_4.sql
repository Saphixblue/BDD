#------------------------------------------------------------
#   Afficher le nombre d’emprunt pour chaque utilisateur
#------------------------------------------------------------

SELECT Utilisateur.*, `Nombre d''emprunts` 
FROM Utilisateur 
INNER JOIN (SELECT idUtilisateur, 
COUNT(*) AS "Nombre d''emprunts" 
FROM Reservation 
GROUP BY idUtilisateur) sr 
ON Utilisateur.idUtilisateur = sr.idUtilisateur