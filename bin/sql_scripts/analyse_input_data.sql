SELECT 
i.PeriodData as SupplyDate,
l.LocationLevel1 as Hospital,
l.LocationLevel2 as Department,
l.LocationLevel3 as Ward,
a.GenericName as Agent,
p.SupplyAmountMg / 1000 as SupplyAmountGrams,
f.DefinedDailyDoseMg / 1000 as DDDGrams,
bd.Quantity / 30 as AmortisedBedDays,
p.SupplyAmountMg / f.DefinedDailyDoseMg / bd.Quantity as UsageDensityRate,
f.SupplyForm as Form,
p.SupplyFormDetail as FormDetail,
f.Restriction

FROM BugBusters.SupplyInputData i
	join ProductLookup p 
	on i.ProductData = p.ProductDesc
	join SupplyAgent a 
	on p.SupplyAgentName = a.GenericName
	join SupplyAgentForm f on a.ATCCode=f.ATCCode and p.SupplyForm = f.SupplyForm
	join BugBusters.Location l  
	on ( i.LocationData = l.LocationLevel3 or (i.LocationData != l.LocationLevel3 and i.LocationData = l.LocationAlias1))
	join BedDays bd
	on l.LocationCode = bd.LocationCode and year(bd.PeriodStart) = year(str_to_date(PeriodData, '%d-%m-%Y')) and month(bd.PeriodStart) = month(str_to_date(PeriodData, '%d-%m-%Y'))
