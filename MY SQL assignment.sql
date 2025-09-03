select * from magicbricks
# 1.	Average price of properties grouped by District where average price is above ₹1 crore.
select District, avg(Price) as Average_Price
from magicbricks
group by District
having avg(Price) > 10000000
order by Average_Price desc 

#2.	Count of apartments by Location where count is more than 10.
select count(BHK) as Lowest_apartment
from magicbricks
group by Location
order by Lowest_apartment desc

#3.	Total price of all listings in each District where total price exceeds ₹5 crores.
select District, sum(Price) as Total_Price
from magicbricks
group by District
having sum(Price) > 50000000
 
 #4. Average area of Builder_Floor properties grouped by Locality having average area more than 1000 sq.ft.
select avg(area) as Avg_Area
from magicbricks
group by Location
having Avg_Area > '1000 Sq.ft.'

#5. Number of Resale properties by Location where count is greater than 5.
select Location, count(*) as resale_count
from magicbricks
where Transaction = 'RESALE'
group by Location
having resale_count > 5

#6.	Average price per sqft grouped by Type where the average is more than ₹10,000/sqft
Select type, avg(Price) as avg_price_per_sqft
from magicbricks
group by Type
having avg_price_per_sqft > 10000

#7 Count of properties grouped by Furnishing where count is less than 50.
select count(Furnishing) as Total_prop 
       from magicbricks
       where Furnishing < 50
       
#8.	Maximum price grouped by Transaction type where max price is above ₹2 crores.
select Transaction, max(Price) as Maximum_Price
from magicbricks
group by Transaction
having max(Price) > 20000000

#9.	Minimum area grouped by District where min area is below 500 sqft.
select District, min(Area) as Minimum_area
from magicbricks
group by District
having min(Area) < '500 sqft.'

#10.Count of ready-to-move properties by Locality where count exceeds 15.
select Location, count(Status) as total_count
from magicbricks
group by Location
having count(Status) > 15

#11. Average number of bathrooms grouped by BHK where average is greater than 2.
select BHK, avg(Bathroom) as avg_bathroom
from magicbricks
group by BHK
having avg(Bathroom) > 2

#12. Average price grouped by Status where the average price is more than ₹1 crore.
select Status, avg(Price) as Avergae_Price
from magicbricks
group by Status
having avg(Price) > 10000000

#13. Count of listings grouped by Type where count is more than 20
Select Type,count(*) as listing_count
from magicbricks
group by Type
having listing_count > 20

#14. Sum of parking spaces grouped by District where sum > 10.
select District, sum(Parking) as Parking_Space
from magicbricks
group by District
having sum(Parking) > 10

#15 Average per sqft price grouped by District where average > ₹12,000.
select Area, avg(Price) as Average_sqft
from magicbricks
group by Area
having avg(Price) > 12000

#16. Total number of listings grouped by Status where count is less than 30.
Select Status, count(Status) as Total_listing
from magicbricks
group by Status
having count(Status) < 30

#17	Average area by BHK where average is more than 1200 sqft.
select BHK, avg(Area) as avergae_by_BHK
from magicbricks
group by BHK
having avg(Area) > '1200 sqft.'

#18. Total value of 2BHK properties by Locality where total value > ₹3 crores.
Select Location,sum(Price) as total_value
from magicbricks
where BHK = 2
group by Location
having total_value > 30000000

#19. Count of properties with more than 2 bathrooms grouped by Location.
select Location, count(*) as property_count
from magicbricks
where Bathroom > 2
group by Location

#20. Average price per sqft for properties with Furnished status, grouped by District.
select Furnishing, avg(Price) as Avg_Price_sqft
from magicbricks
where Furnishing = 'Furnished'
group by District

#21 Count of properties grouped by BHK where average price > ₹1.5 crore.
select BHK, avg(Price) as Total_Properties
from magicbricks
group by BHK
having avg(Price) > 15000000

#22. Average parking availability by Location having average > 1
select Location, avg(Parking) as Parking_Availability
from magicbricks
group by Location
having avg(Parking) > 1

#23. Maximum price grouped by Type where max price < ₹5 crores.
select Type, max(Price) as total_properties
from magicbricks
group by Type
having max(Price) < 50000000

#24. Count of properties grouped by Transaction where average per sqft is > ₹15,000.
select Transaction, avg(Price) as avergae_sqft,
from magicbricks
group by Transaction
having avergae_sqft > 15000

#25. Average price of properties with area above 1000 sqft grouped by Locality having average > ₹2 crores.
select Price, avg(Price) as Total_Properties
from magicbricks
group by Area
where Area > 1000 sq.ft
group by Locality
having avg(Price) > 20000000


