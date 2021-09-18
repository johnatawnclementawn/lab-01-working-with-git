/*
  Create a query that returns all of the business in Philadelphia along with
  the name of the neighborhood the business is in.

  Hint: You can use ST_Contains to determine whether one geometry lies within
  another:https://postgis.net/docs/ST_Contains.html
*/

/* with business_neighborhood as ( */
  select b.legalname, n.name
    from business_licenses b
  join neighborhoods_philadelphia n
  on st_contains(n.the_geom, b.the_geom)
/* )

select b.*, n.name 
from business_neighborhood b
join neighborhoods_philadelphia n
on n.name = b.legalname */
