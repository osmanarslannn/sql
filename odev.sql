select product_name,quantity_per_unit from products  --1.soru

select product_id,product_name from products where discontinued=0 --2.soru

select product_id,product_name from products where discontinued=1 --3.soru

select product_id,product_name,unit_price from products where unit_price<20 --4.soru

select product_id,product_name,unit_price from products where unit_price between 15 and 25 --5.soru

select product_name,units_on_order,units_in_stock from products where units_in_stock < units_on_order -- 6.soru

select * from products where lower (product_name) like 'a%'   -- 7.soru

select * from products where product_name like '%i'  --8.soru

select unit_price*1.18 as "unit_price_kdv" ,unit_price,product_name from products --9.soru

select count(*) as "total" from products where unit_price>30  --10.soru 

select lower(product_name)from products order by unit_price desc --11.soru

select first_name || '' || last_name as "firstLastname"  from employees --12.soru

select count(*) as "total" from suppliers where region is null --13.soru

select count(*) as "total" from suppliers where region is not null --14.soru

select upper('TR' || product_name) from products --15.soru

-- select upper(concat('TR',' ',product_name ))from products  --- 15.soru concat yönetemi

select 'TR' || product_name from products where unit_price<20 --16.soru

select product_name,unit_price from products where unit_price=(select max (unit_price)from products) --17.soru

select product_name,unit_price from products order by unit_price desc limit 10  --18.soru

select product_name,unit_price from products where unit_price > (select avg(unit_price) from products) --19.soru

select sum(unit_price*units_in_stock) as "total" from products where units_in_stock>0  --20.soru

select count(*) as "total" from products where discontinued in (1,0)  --21.soru



select  product_name,categories.category_name from products inner join categories on products.category_id=categories.category_id -- 22.soru

select category_id, avg(unit_price) as "ortFiyat" from products group by category_id order by category_id asc  --23.soru

select product_name,unit_price,categories.category_name  from products 
inner join categories on  products.category_id=categories.category_id order by unit_price desc limit 1;  --24.soru


select p.product_name,c.category_name,s.contact_name from order_details as "od"
inner join products as "p" on p.product_id=od.product_id
inner join categories as "c" on c.category_id = p.category_id
inner join suppliers as "s" on  p.supplier_id = s.supplier_id
order by od.quantity desc limit 1 --25.soru