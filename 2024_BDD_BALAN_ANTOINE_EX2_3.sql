#------------------------------------------------------------
# Sélection de l''id du matériel et de la date de fin de réservation pour toutes les réservations en cours de l''utilisateur ayant pour id 22310344
#------------------------------------------------------------

SELECT idMateriel, dateFin FROM Reservation WHERE dateDebut < CURRENT_DATE AND dateFin >= CURRENT_DATE AND idUtilisateur = 22310344