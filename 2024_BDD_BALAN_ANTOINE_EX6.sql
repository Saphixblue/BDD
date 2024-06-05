#------------------------------------------------------------
# Supprimer toutes les réservations de l''écran HP miteux
#------------------------------------------------------------

DELETE FROM Reservation WHERE idMateriel = (SELECT idMateriel FROM Materiel WHERE nomMateriel = "Ecran HP miteux")