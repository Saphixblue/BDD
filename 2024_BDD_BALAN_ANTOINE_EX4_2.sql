#------------------------------------------------------------
# Compter le nombre d''utilisateurs ayant emprunté du matériel de type Objet louche
#------------------------------------------------------------

SELECT COUNT(DISTINCT Reservation.idUtilisateur) AS "Nombre d'utilisateurs louches" 
FROM Reservation 
INNER JOIN Materiel
ON Reservation.idMateriel = Materiel.idMateriel
WHERE typeMateriel = "Objet louche"