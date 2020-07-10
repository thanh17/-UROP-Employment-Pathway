SELECT * FROM employment.abilities;
SELECT * FROM employment.occupation_data;
SELECT *FROM employment.content_model_reference;
SELECT * FROM employment.scales_reference;
SELECT * FROM employment.skills;
SELECT * FROM employment.knowledge;

SELECT title, element_name, scale_name, data_value, n, standard_error, lower_ci_bound, upper_ci_bound, recommend_suppress
FROM employment.abilities 
LEFT JOIN employment.occupation_data USING (onetsoc_code)
LEFT JOIN employment.content_model_reference USING (element_id)
LEFT JOIN employment.scales_reference USING (scale_id)
WHERE title LIKE 'Respiratory Therapists'
AND
scale_name LIKE 'Level'
ORDER BY data_value;


