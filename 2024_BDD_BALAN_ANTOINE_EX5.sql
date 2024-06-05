#------------------------------------------------------------
# Décaler d''un jour dans le futur la date de fin de la réservation 1
#------------------------------------------------------------

UPDATE Reservation SET dateFin = DATE_ADD((SELECT dateFin FROM Reservation WHERE idReservation = 1), INTERVAL 1 DAY) WHERE idReservation = 1;