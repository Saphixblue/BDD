# + Question 4 pour les erreurs
#------------------------------------------------------------
# On récupère les lignes de Disponibilite pour le matériel X comprenant le créneau de réservation demandé
#------------------------------------------------------------

SELECT id_disponibilite FROM Disponibilite
WHERE id_materiel = X AND (date_debut <= X OR date_debut IS NULL) 
AND (date_fin >= X OR date_fin IS NULL)

#------------------------------------------------------------
# On crée la procédure renvoyant une erreur si le matériel n''est pas disponible
# Elle est appelée avant insertion
#------------------------------------------------------------

DELIMITER //
CREATE PROCEDURE CheckReservation(
	IN NewIdReservation
	IN NewDateDebut Date,
	IN NewDateFin Date,
	IN NewIdMateriel Int,
	IN NewIdDisponibilite,
	IN typeOperation
)
BEGIN
	IF typeOperation = 'INSERT' THEN
		DECLARE idDispo;
		
		SELECT id_disponibilite INTO idDispo
		FROM Disponibilite
		WHERE idMateriel = NewIdMateriel
		AND (date_debut <= NewDateDebut OR date_debut IS NULL) 
		AND (date_fin >= NewDateFin OR date_fin IS NULL)
		LIMIT 1;
		
		IF idDispo IS NULL THEN 
			SIGNAL SQLSTATE = '45000'
			SET MESSAGE_TEXT = 'Le matériel n''est pas disponible !';
	ELSEIF typeOperation = 'UPDATE' THEN
		DECLARE dateFinTest
		DECLARE dateDebutTest1
		DECLARE dateDebutTest2
		
		SELECT dateFin INTO dateFinTest1
		FROM Reservation 
		WHERE idReservation = NewIdReservation;
		
		SELECT date_debut INTO dateDebutTest
		FROM Disponibilite 
		WHERE id_disponibilite = NewIdDisponibilite
		
		SELECT date_fin INTO dateFinTest2
		FROM Disponibilite
		WHERE date_debut = dateFinTest1
		
		IF dateDebutTest IS NOT NULL THEN
			IF (dateDebutTest > NewDateDebut) OR (dateFinTest2 < NewDateFin) THEN
				SIGNAL SQLSTATE = '45000'
				SET MESSAGE_TEXT = 'Le matériel n''est pas disponible !';
			END IF;
		END IF;
	END IF;
END //

DELIMITER ;
	
#------------------------------------------------------------
# On crée le trigger 
#------------------------------------------------------------

DELIMITER //

CREATE TRIGGER InsertionUpdateReservation
BEFORE INSERT ON Reservation
FOR EACH ROW
BEGIN
	IF TRIGGER_OPERATION() = 'INSERT' THEN
		CALL CheckReservation(NULL, NEW.dateDebut, NEW.dateFin, NEW.idMateriel, NULL, TRIGGER_OPERATION());
		
		SET NEW.id_disponibilite = (SELECT id_disponibilite 
									FROM DISPONIBILITE 
									WHERE id_materiel = NEW.idMateriel
									  AND (date_debut <= NEW.dateDebut OR date_debut IS NULL)
									  AND (date_fin >= NEW.dateFin OR date_fin IS NULL)
									LIMIT 1);
	ELSEIF TRIGGER_OPERATION() = 'UPDATE' THEN
		CALL CheckReservation(NEW.idReservation, NEW.dateDebut, NEW.dateFin, NEW.idMateriel, NEW.id_disponibilite, TRIGGER_OPERATION());
END //

DELIMITER ;

#------------------------------------------------------------
# Procédure de MAJ de Dispo
#------------------------------------------------------------

#------------------------------------------------------------
# Création du trigger de MAJ (AFTER INSERT OR UPDATE)
#------------------------------------------------------------

#------------------------------------------------------------
# Gérer la suppression
#------------------------------------------------------------