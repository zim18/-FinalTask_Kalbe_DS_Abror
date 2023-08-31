// query 1: Berapa rata-rata umur customer jika 
dilihat dari marital statusnya ?
select distinct "Marital_Status", AVG(age) as average_age
from customer c 
where "Marital_Status" != ''
group by "Marital_Status"

// query 2 : Berapa rata-rata umur customer jika 
dilihat dari gender nya ?
SELECT "gender", AVG(age) AS avg_ageGender
FROM customer
GROUP BY "gender"

// query 3 : Tentukan nama store dengan total 
quantity terbanyak!
select s.storename, sum(t.qty) as total_qty
from store s 
join "Transaction" t 
on s.storeid = t.storeid 
group by s.storename 
order by total_qty desc 
limit 1

// query 4 : Tentukan nama produk terlaris dengan 
total amount terbanyak!
SELECT "Product_Name", SUM(t.totalamount) AS total_amount
FROM product p 
JOIN "Transaction" t  ON p.productid = t.productid
GROUP BY p."Product_Name" 
ORDER BY total_amount DESC
LIMIT 1;


