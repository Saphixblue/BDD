#------------------------------------------------------------
# Contenu de la table RESERVATION
#------------------------------------------------------------

# Voir Dictionnaire de données & Dépendances fonctionnelles

#------------------------------------------------------------
# Table: RESERVATION
#------------------------------------------------------------

CREATE TABLE RESERVATION(
        idReservation Int  Auto_increment  NOT NULL,
        dateDebut     Date NOT NULL,
        dateFin       Date NOT NULL,
        idUtilisateur Int (8) NOT NULL,
        idMateriel    Int NOT NULL,
		
	CONSTRAINT RESERVATION_PK PRIMARY KEY (idReservation),

	CONSTRAINT RESERVATION_UTILISATEUR_FK FOREIGN KEY (idUtilisateur) REFERENCES UTILISATEUR(idUtilisateur)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
	CONSTRAINT RESERVATION_MATERIEL_FK FOREIGN KEY (idMateriel) REFERENCES MATERIEL(idMateriel)
		ON DELETE CASCADE
		ON UPDATE CASCADE
)ENGINE=InnoDB;

#------------------------------------------------------------
# Ajout de contenu à la table RESERVATION
#------------------------------------------------------------

INSERT INTO RESERVATION (dateDebut, dateFin, idUtilisateur, idMateriel) VALUES
('2024-03-21', '2026-08-28', 21907381, 9),
('2024-02-20', '2100-12-31', 22104001, 1),
('2024-03-21', '2024-06-30', 22106768, 8),
('2022-09-01', '2026-08-28', 22003820, 3),
('2023-09-01', '2024-06-30', 22310344, 2),
('2023-09-01', '2024-06-30', 22310344, 10),
('2024-05-24', '2024-07-24', 22311734, 6);

#------------------------------------------------------------
# Vérification de la bonne insertion du contenu dans la table RESERVATION
#------------------------------------------------------------

SELECT * FROM RESERVATION;