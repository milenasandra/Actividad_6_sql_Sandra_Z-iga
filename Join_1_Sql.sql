SELECT species_of_animal.name AS 'nombre',
 condition_confirmation.name AS 'Condición', 
 amount AS 'cantidad'
 
 FROM species_of_animal
 	 JOIN species_types ON species_types.id = specie_type_id
 	 JOIN condition_confirmation ON condition_confirmation.id = condition_confirmation_id

 	
 	