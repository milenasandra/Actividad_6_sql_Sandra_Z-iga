SELECT species_of_animal.id , NAME AS Nombre, amount AS 'Cantidad',
condition_confirmation_id AS 'estado'
 FROM species_of_animal
HAVING amount > 10000
