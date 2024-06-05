#------------------------------------------------------------
# Suppression de la table Réservation
#------------------------------------------------------------

DROP TABLE Reservation;

#------------------------------------------------------------
# Re-création de la table Reservation
#------------------------------------------------------------

CREATE TABLE RESERVATION(
        idReservation 	 Int  Auto_increment  NOT NULL,
        dateDebut     	 Date NOT NULL,
        dateFin       	 Date NOT NULL,
        idUtilisateur 	 Int (8) NOT NULL,
        idMateriel    	 Int NOT NULL,
		id_disponibilite Int NOT NULL,
		
	CONSTRAINT RESERVATION_PK PRIMARY KEY (idReservation),

	CONSTRAINT RESERVATION_UTILISATEUR_FK FOREIGN KEY (idUtilisateur) REFERENCES UTILISATEUR(idUtilisateur)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
	CONSTRAINT RESERVATION_MATERIEL_FK FOREIGN KEY (idMateriel) REFERENCES MATERIEL(idMateriel)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
	CONSTRAINT RESERVATION_DISPONIBILITE_FK FOREIGN KEY (id_disponibilite) REFERENCES DISPONIBILITE(id_disponibilite)
		ON UPDATE CASCADE
)ENGINE=InnoDB;

#------------------------------------------------------------
# Remplissage de la table Disponibilité
#------------------------------------------------------------
INSERT INTO DISPONIBILITE (id_materiel, date_debut, date_fin)
SELECT idMateriel, NULL, NULL
FROM MATERIEL;