--1. ¿Qué consulta ejecutarías para obtener 
--todos los países que hablan esloveno?
-- Tu consulta debe devolver el nombre del país,
-- el idioma y el porcentaje de habla del idioma.  
--Tu consulta debe ordenar el resultado por porcentaje 
--de habla del idioma en orden descendente. (1) 

select
c.name,
l.language,
l.percentage
from countries c join languages l on c.id = l.country_id
where l.language = 'Slovene'
order by 3 desc;


/*
2. ¿Qué consulta ejecutarías para mostrar el número
 total de ciudades de cada país?  
Tu consulta debe devolver el nombre del país,
 el idioma y el número total de ciudades.
 Tu consulta debe ordenar el resultado por el 
 número de ciudades en orden descendente. (3) 
*/

select DISTINCT
countries.name,
count(cities.id)
from cities join countries 
on cities.country_id = countries.id 
where countries.id = cities.country_id
group by countries.name
order by 2 desc;

/*
3. ¿Qué consulta ejecutarías para obtener todos ciudades
 de México con una población mayor a 500,000? 
Tu consulta debe ordenar el resultado
 por población en orden descendente. (1) 
*/

select 
co.name,
ci.name,
ci.population
from countries co join 
cities ci on co.id = ci.country_id
where co.name = 'México' and ci.population > 500000
order by 3 desc;


/*
4. ¿Qué consulta ejecutarías para obtener todos los
 idiomas en cada país con un porcentaje de habla mayor a 89%? 
Tu consulta debe ordenar el resultado por
 porcentaje de habla en orden descendente. (1) 
*/



/*

5.¿Qué consulta ejecutarías para obtener todos 
los países con un área de superficie menor a 501 y
 población mayor a 100,000? (2) 
*/




--6. ¿Qué consulta ejecutarías para obtener países 
--solo con monarquía constitucional, un capital
--superior a 200 y una esperanza de vida mayor a 75 años?  (1)






--7. ¿Qué consulta ejecutarías para obtener todas las 
--ciudades de Argentina dentro del
--distrito de Buenos Aires con una población mayor a 500,000 habitantes?
--La consulta debe devolver el nombre del país, 
--el nombre de la ciudad, el distrito y la población.  (2)
 



 --8.¿Qué consulta ejecutarías para
--resumir el número de países en cada región?
--Tu consulta debe mostrar el nombre de la región y
-- el número de países. Además, debe ordenar el
-- resultado por el número de países en orden descendente. (2) 
