select * from Products 
select * from Categories

select o.ProductName, c.CategoryName from Products as o inner join Categories c on o.CategoryID = c.CategoryID

select o.ProductName, c.CategoryName from Products as o left join Categories c on o.CategoryID = c.CategoryID

select * from Orders
select * from Employees
select * from Shippers

-- select o.OrderDate, e.LastName + e.FirstName, s.CompanyName from Orders o join Employees e join Shippers s on o.ShipVia = s.ShipperID and o.EmployeeID = e.EmployeeID

select o.OrderDate as 'Дата Заказа', 
		e.LastName + e.FirstName as 'ФИО', 
		s.CompanyName as 'Доставка'
from Employees e
join Orders o on e.EmployeeID = o.EmployeeID
join Shippers s on o.ShipVia = s.ShipperID

select City from Customers union select City from Suppliers -- выводит уникальные значения

select City from Customers union all select City from Suppliers  -- одинаковое колчиество столбцов, порядок, одинковый тип данных



--select e.City, e.Country from Employees e 
--union 
--select s.Country, s.City from Suppliers s
--order by city asc

select * from Suppliers
select * from Products
select * from Shippers

select * from Customers
select * from Orders
select * from [Order Details]

select p.ProductName from Products p where p.UnitPrice >= (select avg(UnitPrice) from Products)

select p.ProductName, s.CompanyName from Products p, Suppliers s where p.SupplierID = s.SupplierID
select p.ProductName, s.CompanyName from Products p join Suppliers s on p.SupplierID = s.SupplierID

select c.CategoryName, COUNT(p.ProductName) as 'Product Number' from Categories c, Products p where c.CategoryID = p.CategoryID group by CategoryName

select top 10 ProductName, UnitPrice from Products order by UnitPrice desc

select c.CategoryName, SUM(p.UnitPrice * p.UnitsInStock) as 'Product Price Sum' from Categories c, Products p where c.CategoryID = p.CategoryID group by CategoryName

select distinct c.CompanyName as 'Customers' from Customers c

select ProductName from Products where UnitPrice = (select max(UnitPrice) from Products)

select o.CustomerID from [Order Details] d join Orders o on d.OrderID = o.OrderID
where (d.Quantity * d.UnitPrice) = (select max(d.Quantity * d.UnitPrice) from [Order Details] d)





select s.CompanyName from Suppliers s join Products p on s.SupplierID = p.SupplierID 
where (select SUM(UnitsInStock) from Products where ) 

select SupplierID, SUM(UnitsInStock) from Products group by SupplierID order by SUM(UnitsInStock) desc

