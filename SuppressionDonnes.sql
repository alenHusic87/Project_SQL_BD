/* Suppression de données  */

/*Suppression physique d’éléments de la table Étudiant*/
DELETE FROM  etudiant
WHERE Id = 1;
/*Suppression physique de la table Téléphone*/
DROP TABLE telephone;
/*Suppression logique d’élément de la table Adresse*/
UPDATE adresse
set Supprime =1
WHERE Id = 1;

