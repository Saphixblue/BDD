#------------------------------------------------------------
# Compter le nombre de réservations débutant entre le 1er septembre 2023 et le 1er mars 2024 (inclus)
#------------------------------------------------------------

SELECT COUNT(*) AS "Nombre de réservations" FROM Reservation WHERE dateDebut >= '2023-09-01' AND dateDebut <= '2024-03-01'