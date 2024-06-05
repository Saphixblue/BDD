#------------------------------------------------------------
# Contenu de la table MATERIEL
#------------------------------------------------------------

# Voir Dictionnaire de données & Dépendances fonctionnelles

#------------------------------------------------------------
# Table: MATERIEL
#------------------------------------------------------------

CREATE TABLE MATERIEL(
        idMateriel   Int  Auto_increment  NOT NULL,
        nomMateriel  Varchar (32) NOT NULL,
        typeMateriel Varchar (32) NOT NULL,
        descMateriel Varchar (500) NOT NULL,
	CONSTRAINT MATERIEL_PK PRIMARY KEY (idMateriel)
)ENGINE=InnoDB;

#------------------------------------------------------------
# Ajout de contenu à la table MATERIEL
#------------------------------------------------------------

INSERT INTO MATERIEL (nomMateriel, typeMateriel, descMateriel) VALUES
('Altered - Edition Collector Ultimate Premium Golden', 'Jeu de cartes', 'Un pack extrêmement cher et qualitatif de cartes à jouer et à collectionner. Doit être manipulé avec prudence en raison de son plaquage Or 24 carats.'),
('Poulet', 'Poulet', 'C\'est quoi ce poulet ?'),
('Ampli inverseur CAN STMicroelectronics ZX320', 'Matériel électronique', 'Un appareil magique qui fait des trucs avec la tension. Incompréhensible si l\'on n\'appartient pas au Grand Ensemble Initiatique Industriel.'),
('Clavier DELL collant', 'Matériel informatique', 'Un clavier trouvé en salle Unix-B. Il colle, c\'est désagréable.'),
('Souris DELL collante', 'Matériel informatique', 'Une souris trouvée en salle Unix-A. Elle colle, c\'est désagréable.'),
('Ecran HP miteux', 'Matériel informatique', 'Un écran trouvé en salle Unix-B. Il y a un nouveau pixel mort toutes les semaines, il aura bientôt l\'air éteint.'),
('Tour DELL bruyante', 'Matériel informatique', 'Une tour subtilisée en salle Windows-A. Elle est bruyante mais c\'est normal, il y a une RTX dessus.'),
('Loupe lustrée', 'Matériel d\'enquête', 'Une loupe bien lustrée dans le but initial d\'enquêter sur la disparition de matériel informatique à Polytech. Elle a elle-même disparu peu de temps après.'),
('Malette de KERGOSIEN Dollars', 'Objet louche', 'Une malette remplie de millions de KERGOSIEN Dollars obtenus suite à la dernière Nuit de l\'Info. Cet argent aurait rendu Yannick KERGOSIEN extrêmement riche. Tous les billets doivent être rendus en cas d\'emprunt.'),
('Cocotte', 'Poulet', 'Ne pas la frapper. Elle sera toujours en meilleur état que vous après.');

#------------------------------------------------------------
# Vérification de la bonne insertion du contenu dans la table MATERIEL
#------------------------------------------------------------

SELECT * FROM MATERIEL;