#------------------------------------------------------------
# Table: DISPONIBILITE
#------------------------------------------------------------

CREATE TABLE DISPONIBILITE(
        id_disponibilite Int  Auto_increment  NOT NULL,
		id_materiel 	 Int NOT NULL,
        date_debut       Date,
        date_fin         Date,
		
	CONSTRAINT DISPONIBILITE_PK PRIMARY KEY (id_disponibilite),

	CONSTRAINT DISPONIBILITE_MATERIEL_FK FOREIGN KEY (id_materiel) REFERENCES MATERIEL(idMateriel)
		ON DELETE CASCADE
		ON UPDATE CASCADE
)ENGINE=InnoDB;