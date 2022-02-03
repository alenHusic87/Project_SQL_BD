CREATE TABLE `etudiant`
(
  `Id`int(12) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(50) NOT NULL,
  `Prenom` varchar(50) NOT NULL,
   `Age` int  NOT NULL,
  `Statut` varchar(12) NOT NULL,
  `CodePermanent` varchar(12) NOT NULL,
   `Credits` int  NOT NULL,
  `DateDeNaissance`date NOT NULL,
 
  PRIMARY KEY (`Id`)
);
CREATE TABLE `telephone` 
(
  `Id`int(12)NOT NULL AUTO_INCREMENT,
  `IdEtudiant` INT NOT NULL,
  `Indicatif` varchar(5) NOT NULL,
  `Numero` varchar(12) NOT NULL,
  `Principal` ENUM('O','N')  NOT NULL,
  `Cellulaire` ENUM('O','N')  NOT NULL,

  PRIMARY KEY (`Id`),
  FOREIGN KEY(`IdEtudiant`) REFERENCES etudian(`Id`)
);

CREATE TABLE `adresse` 
(
  `Id` int(12) NOT NULL AUTO_INCREMENT,
  `IdEtudiant` INT NOT NULL,
  `Numero` int NOT NULL,
  `Rue` varchar(50) NOT NULL,
  `Ville` varchar(50) NOT NULL,
  `CodePostal` varchar(50) NOT NULL,
  `Province` varchar(50) NOT NULL,
  `Pays` varchar(50) NOT NULL,
  `Principal` ENUM('O','N')  NOT NULL,
  `Supprime`  BIT NOT NULL DEFAULT 0,
  
  PRIMARY KEY (`Id`),
  FOREIGN KEY(`IdEtudiant`) REFERENCES etudian(`Id`)
);
