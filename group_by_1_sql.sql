SELECT *
FROM species_of_animal

	JOIN species_types ON species_types.id = specie_type_id
	JOIN condition_confirmation ON condition_confirmation.id = condition_confirmation_id
	JOIN habitats_animals_species ON animals_species_id = species_of_animal.id

	
	GROUP BY amount