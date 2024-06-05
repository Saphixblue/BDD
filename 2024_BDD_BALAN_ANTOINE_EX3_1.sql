#------------------------------------------------------------
# Sélectionner le nom et le prénom de tous les utilisateurs ayant réseré du matériel de type Jeu de cartes
#------------------------------------------------------------

SELECT nomUtilisateur, prenomUtilisateur 
FROM Utilisateur 
INNER JOIN Reservation 
ON Utilisateur.idUtilisateur = Reservation.idUtilisateur
INNER JOIN Materiel
ON Reservation.idMateriel = Materiel.idMateriel
WHERE typeMateriel = "Jeu de cartes"