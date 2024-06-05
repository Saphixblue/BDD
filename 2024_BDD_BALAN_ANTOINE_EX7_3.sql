#------------------------------------------------------------
#  Afficher les équipements ayant été emprunté plus de 3 fois 
#------------------------------------------------------------

SELECT * FROM Materiel WHERE idMateriel IN (SELECT idMateriel FROM Reservation GROUP BY idMateriel HAVING COUNT(*) > 3)