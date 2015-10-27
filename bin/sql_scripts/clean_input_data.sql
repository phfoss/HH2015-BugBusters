update SupplyInputData 
set ProductData = replace(ProductData, '  ', ' ') 
where ProductData like '%  %'
