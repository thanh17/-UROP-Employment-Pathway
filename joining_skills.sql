SELECT 
a.element_id as element_id,
a.onetsoc_code as onetsoc_code,
a.scale_id as scale_id,
a.data_value as data_value,
a.n as n,
a.standard_error as standard_error,
a.lower_ci_bound as lower_ci_bound,
a.upper_ci_bound as upper_ci_bound,
a.recommend_suppress as recommend_suppress,
a.not_relevant as not_relevant,
a.date_updated as date_updated,
a.domain_source as domain_source
FROM employment.abilities a
LEFT JOIN  employment.skills b
ON
a.element_id = b.element_id
LEFT JOIN employment.knowledge c
ON a.element_id = c.element_id

UNION

SELECT 
b.element_id as element_id,
b.onetsoc_code as onetsoc_code,
b.scale_id as scale_id,
b.data_value as data_value,
b.n as n,
b.standard_error as standard_error,
b.lower_ci_bound as lower_ci_bound,
b.upper_ci_bound as upper_ci_bound,
b.recommend_suppress as recommend_suppress,
b.not_relevant as not_relevant,
b.date_updated as date_updated,
b.domain_source as domain_source
FROM employment.skills b
LEFT JOIN  employment.abilities a
ON
b.element_id = a.element_id
LEFT JOIN employment.knowledge c
ON b.element_id = c.element_id

UNION

SELECT 
c.element_id as element_id,
c.onetsoc_code as onetsoc_code,
c.scale_id as scale_id,
c.data_value as data_value,
c.n as n,
c.standard_error as standard_error,
c.lower_ci_bound as lower_ci_bound,
c.upper_ci_bound as upper_ci_bound,
c.recommend_suppress as recommend_suppress,
c.not_relevant as not_relevant,
c.date_updated as date_updated,
c.domain_source as domain_source
FROM employment.knowledge c
LEFT JOIN  employment.abilities a
ON
c.element_id = a.element_id
LEFT JOIN employment.skills b
ON c.element_id = b.element_id;