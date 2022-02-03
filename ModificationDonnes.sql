/* Modification de données */

/*Le numéro de téléphone principal d’un étudiant  =  par [N] ou [O] */
UPDATE telephone
	SET Principal  = 'N'
		WHERE Id =  1 AND IdEtudiant = 1;
        
/*Changer le statut d’un étudiant  = par [Partiel] ou [Plein] */
UPDATE etudiant
	SET Statut= "Plein"
		WHERE Id = 1;
        
/*Changer le ID du téléphone dans la table Étudiant  */
/*A VERIFIE */
UPDATE telephone
	SET IdEtudiant= 2
		WHERE Id = 1 AND IdEtudiant = 1;
        
/*  Changer l’adresse principale d’un Étudiant;*/
UPDATE adresse
	SET Numero = 999,
		Rue = "Rue Bardy",
		Ville = "Sherbrook",
		CodePostal = "G1J 5B5",
		Province = "QC",
		Pays = "Bosnie"
		WHERE Id = 1 AND IdEtudiant = 1 ;

/* Changer le numéro de téléphone principal dans la table Téléphone */
UPDATE telephone
	SET Numero= "555-9999"
		WHERE Id = 1 AND IdEtudiant = 1 ;
        
/*Désigner un nouveau numéro comme étant le numéro principal  */   /*A VERIFIE */
UPDATE telephone
	SET Principal = 'O'
		WHERE Id = 1 AND IdEtudiant = 1;
        
/*Changer la ville, le code postal et le numéro dans la même requête */
UPDATE adresse
	SET Ville = "Montréal",
		CodePostal= "A1A 3B6",
		Numero = 8
		WHERE Id = 1 AND IdEtudiant = 1;
        
/*Affacter une adresse à un autre étudiant*/

