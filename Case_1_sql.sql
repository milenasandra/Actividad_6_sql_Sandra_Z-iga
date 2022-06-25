SELECT NAME AS Nombre, amount AS 'Cantidad',
condition_confirmation_id AS 'estado',
 
Case condition_confirmation_id
When 1 then 'Extinta'
When 2 then 'Bajo Riesgo'
When 3 then 'Amenazada'
END AS condition_confirmation_id FROM species_of_animal 