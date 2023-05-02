select * from SalesProject..SalesData

select sum(total) as TotalSaleValue from SalesProject..SalesData

select City,sum(total) as TotalSaleValue from SalesProject..SalesData 
group by City

select branch,sum(total) as TotalSaleValue from SalesProject..SalesData 
group by branch
order by TotalSaleValue DESC

select branch,[Product line],sum(total) as TotalSaleValue from SalesProject..SalesData 
group by branch,[Product line]
order by branch ASC,TotalSaleValue DESC

select Gender,[Product line],sum(total) as TotalSaleValue from SalesProject..SalesData 
group by Gender,[Product line]
order by Gender,TotalSaleValue DESC

select Gender,[Customer type],[Product line],max(total) as MaximumSaleValue,[gross income]  from SalesProject..SalesData 
group by Gender,[Product line],[Customer type],[gross income]
order by Gender,MaximumSaleValue DESC

select branch,[Product line],sum(quantity) as Totalquantity from SalesProject..SalesData 
group by branch,[Product line]
order by branch,Totalquantity DESC

select branch,[Product line],max([Tax 5%]) as MaximumTax from SalesProject..SalesData 
group by branch,[Product line]
order by branch,MaximumTax DESC


select branch,sum(total) as TotalAmount,sum([gross income]) GrossIncome from SalesProject..SalesData 
where [Customer type]='Member'
group by branch


select Branch,[Product line],rating from SalesProject..SalesData 
group by Branch,[Product line],rating
order by Branch,rating DESC











