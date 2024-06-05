#------------------------------------------------------------
# Sélection du numéro étudiant, du nom et du prénom des utilisateurs dont le numéro étudiant commence par 221
#------------------------------------------------------------

SELECT idUtilisateur, nomUtilisateur, prenomUtilisateur FROM Utilisateur WHERE idUtilisateur LIKE "221%"