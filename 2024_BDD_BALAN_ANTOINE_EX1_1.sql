#------------------------------------------------------------
# Contenu de la table UTILISATEUR
#------------------------------------------------------------

# Voir Dictionnaire de données & Dépendances fonctionnelles

#------------------------------------------------------------
# Table: UTILISATEUR
#------------------------------------------------------------

CREATE TABLE UTILISATEUR(
        idUtilisateur     Int (8) NOT NULL,
        nomUtilisateur    Varchar (35) NOT NULL,
        prenomUtilisateur Varchar (50) NOT NULL,
        emailUtilisateur  Varchar (320) NOT NULL,
	CONSTRAINT UTILISATEUR_PK PRIMARY KEY (idUtilisateur)
)ENGINE=InnoDB;

#------------------------------------------------------------
# Ajout de contenu à la table UTILISATEUR
#------------------------------------------------------------

INSERT INTO UTILISATEUR (idUtilisateur, nomUtilisateur, prenomUtilisateur, emailUtilisateur) VALUES
(22104001, 'BALAN', 'Antoine', 'antoine.balan@etu.univ-tours.fr'),
(22000725, 'BOURCIER', 'Alexandre', 'alexandre.bourcier@etu.univ-tours.fr'),
(22311734, 'BRANCO SIMOES', 'Kévin', 'kevin.brancosimoes@etu.univ-tours.fr'),
(21801799, 'BRISSON', 'Dorian', 'dorian.brisson@etu.univ-tours.fr'),
(22310477, 'CAILLAUD', 'Morgen', 'morgen.caillaud@etu.univ-tours.fr'),
(22310344, 'FARINOLA', 'Raffaele', 'raffaele.farinola@etu.univ-tours.fr'),
(22102396, 'LANGLAIS', 'Amandine', 'amandine.langlais@etu.univ-tours.fr'),
(22003820, 'PETIT', 'Lucien', 'lucien.petit@etu.univ-tours.fr'),
(22102699, 'RAIS', 'Nawfel', 'nawfel.rais@etu.univ-tours.fr'),
(21907381, 'REMY', 'Léo', 'leo.remy@etu.univ-tours.fr'),
(22110590, 'SAIFI', 'Salma', 'salma.saifi@etu.univ-tours.fr'),
(22106768, 'YEPEZ', 'Marie', 'marie.yepez@etu.univ-tours.fr');

#------------------------------------------------------------
# Vérification de la bonne insertion du contenu dans la table UTILISATEUR
#------------------------------------------------------------

SELECT * FROM UTILISATEUR;