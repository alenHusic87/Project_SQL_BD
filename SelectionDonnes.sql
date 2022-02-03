/*Sélection de données*/

/*Obtenir la liste de tous les étudiants qui possède un numéro de telephone commençant par ‘514’        OK*/  
SELECT * FROM etudiant
WHERE Id IN( SELECT IdEtudiant FROM telephone WHERE Indicatif = "514"); 

/*Obtenir la liste (sans restrictions) de la table Étudiant et de la table Téléphone    OK*/
SELECT * FROM etudiant ;
SELECT * FROM telephone ;

/*Obtenir la liste des nom, prénom, rue, numéro et ville dans une seule ordonné par ordre alphabétique sur le le prénom*/
SELECT Nom,Prenom,Rue,Numero,Ville
	FROM etudiant INNER JOIN adresse
    ON etudiant.Id = adresse.IdEtudiant 
		ORDER BY Prenom;

/*Obtenir la liste (nom, prénom, code permanent,ville) de où les étudiants habitent ‘Québec’, qui sont agés de 30 et plus et sont à temps partiel*/
SELECT Nom, Prenom, CodePermanent, Ville,Age
FROM etudiant
	INNER JOIN adresse ON etudiant.Id = adresse.IdEtudiant
	WHERE Ville = "Québec" AND Age >= 30 AND Statut = "Partiel";

/*Obtenir la liste qui sont principals et qui ont un numéros débutant par ‘819’*/
SELECT * FROM telephone
WHERE Principal = "O" AND Indicatif = '819';

/*Obtenir les noms, prénom et numéro de cellulaire des étudiants qui ont réussis plus de 12 crédits*/
SELECT Nom, Prenom,CodePermanent ,Credits
		FROM etudiant
			WHERE Id IN (SELECT IdEtudiant FROM telephone WHERE  Credits > 12 );
       
/*Obtenir les nom, prénom et code permanent des étudiants qui habite la ville de ‘québec’ ou la ville de montréal */
SELECT Nom, Prenom, CodePermanent
FROM etudiant
WHERE Id IN( SELECT IdEtudiant 
FROM adresse WHERE Ville =  "Québec"  ||  Ville = "Montréal");

/* les nom, prénom, code permanent des étudiants qui n’habite pas le Canada*/
SELECT Nom, Prenom,CodePermanent 
	FROM etudiant
	WHERE Id IN (SELECT IdEtudiant FROM adresse WHERE Pays != "Canada" );

/*Obtenir les rue et les villes des adresses où le code postal se termine par ‘R3W’*/
SELECT Rue, Ville ,CodePostal
	FROM adresse
	WHERE CodePostal LIKE '%R3W';

/*Obtenir tous les étudiants qui ont une adresse dans la table adresse*/
SELECT * 
	FROM etudiant
	WHERE Id IN ( SELECT  DISTINCT IdEtudiant FROM adresse);

/*Obtenir toutes les adresses ainsi que les adresses qui sont reliées à un étudiant*/
SELECT *
	FROM adresse
		 LEFT JOIN etudiant
			  ON adresse.IdEtudiant =  etudiant.Id;

/*Obtenir les nom, prénom, numéro, rue, ville des étudiants qui possèdent une adresse. Si un étudiant ne possède pas d’adresse il ne doit pas être affiché.*/
SELECT Nom,Prenom,Numero,Rue,Ville
	FROM etudiant INNER JOIN adresse
		ON etudiant.Id = adresse.IdEtudiant;

/*Obtenir les nom, prénom et code permanent des étudiants qui ont plus de 30 ans.*/
SELECT Nom, Prenom, CodePermanent ,Age
	FROM etudiant
		WHERE Age > 30;


    
    
