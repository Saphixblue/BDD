#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------

DROP DATABASE IF EXISTS reservation_materiel;
CREATE DATABASE reservation_materiel;
USE reservation_materiel;

#------------------------------------------------------------
# Table: UTILISATEUR
#------------------------------------------------------------

CREATE TABLE UTILISATEUR(
        idUtilisateur     Int (8) NOT NULL ,
        nomUtilisateur    Varchar (35) NOT NULL ,
        prenomUtilisateur Varchar (50) NOT NULL ,
        emailUtilisateur  Varchar (320) NOT NULL
	,CONSTRAINT UTILISATEUR_PK PRIMARY KEY (idUtilisateur)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: MATERIEL
#------------------------------------------------------------

CREATE TABLE MATERIEL(
        idMateriel   Int  Auto_increment  NOT NULL ,
        nomMateriel  Varchar (32) NOT NULL ,
        typeMateriel Varchar (32) NOT NULL ,
        descMateriel Varchar (500) NOT NULL
	,CONSTRAINT MATERIEL_PK PRIMARY KEY (idMateriel)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: RESERVATION
#------------------------------------------------------------

CREATE TABLE RESERVATION(
        idReservation Int  Auto_increment  NOT NULL ,
        dateDebut     Date NOT NULL ,
        dateFin       Date NOT NULL ,
        idUtilisateur Int (8) NOT NULL ,
        idMateriel    Int NOT NULL
	,CONSTRAINT RESERVATION_PK PRIMARY KEY (idReservation)

	,CONSTRAINT RESERVATION_UTILISATEUR_FK FOREIGN KEY (idUtilisateur) REFERENCES UTILISATEUR(idUtilisateur)
	,CONSTRAINT RESERVATION_MATERIEL0_FK FOREIGN KEY (idMateriel) REFERENCES MATERIEL(idMateriel)
)ENGINE=InnoDB;

