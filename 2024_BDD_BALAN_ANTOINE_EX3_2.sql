#------------------------------------------------------------
# Sélectionner les noms et descriptions du matériel emprunté par Lucien PETIT
#------------------------------------------------------------
SELECT nomMateriel, descMateriel
FROM Materiel
INNER JOIN Reservation
ON Materiel.idMateriel = Reservation.idMateriel
INNER JOIN Utilisateur
ON Reservation.idUtilisateur = Utilisateur.idUtilisateur
WHERE nomUtilisateur = "PETIT" AND prenomUtilisateur = "Lucien"