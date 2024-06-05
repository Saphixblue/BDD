#------------------------------------------------------------
#  Afficher les équipements n’ayant jamais été empruntés
#------------------------------------------------------------

SELECT * FROM Materiel WHERE idMateriel NOT IN (SELECT idMateriel FROM Reservation)