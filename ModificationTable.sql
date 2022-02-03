/* Modification de table*/

/*Ajouter le champ ‘DiplomeObtenu’ dans la table Étudiant*/
ALTER TABLE `etudiant`
ADD DiplomeObtenu ENUM('O','N') ;

/*Ajouter le champ ‘AnnéeDiplomation’ dans la table Étudiant*/
ALTER TABLE `etudiant`
ADD AnnéeDiplomation YEAR(4);

/*Ajouter le champ ‘Compté’ dans la table Adresse*/
ALTER TABLE `adresse` 
ADD Compté VARCHAR(20) NOT NULL ;

/*Ajouter le champ ‘Maison’ dans la table Telephone*/
ALTER TABLE telephone
ADD Maison VARCHAR(20) ;


