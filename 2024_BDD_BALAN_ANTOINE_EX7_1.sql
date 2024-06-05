#------------------------------------------------------------
#  Afficher tous les utilisateurs ayant emprunté au moins un équipement
#------------------------------------------------------------

SELECT DISTINCT Utilisateur.* FROM Utilisateur INNER JOIN Reservation ON Utilisateur.idUtilisateur = Reservation.idUtilisateur