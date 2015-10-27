/* missing forms - default rows*/
SELECT distinct a.ATCCode, p.SupplyForm, 'E' as Restriction, 1000 as 'DefinedDailyDoseMg'
FROM BugBusters.SupplyInputData i
        join ProductLookup p
        on i.ProductData = p.ProductDesc
        join SupplyAgent a
        on p.SupplyAgentName = a.GenericName
        left outer join SupplyAgentForm f on a.ATCCode=f.ATCCode and p.SupplyForm = f.SupplyForm    
where idSupplyAgentForm is null

