/* Direct SQL against the SupplyInputData table to mimic the 
   end-state processing output in the warehouse table */
SELECT 
i.PeriodData as SupplyDate,
l.LocationLevel1 as Hospital,
l.LocationLevel2 as Department,
l.LocationLevel3 as Ward,
a.GenericName as Agent,
p.SupplyAmountMg * i.QuantityData / 1000 as SupplyAmountGrams,
f.DefinedDailyDoseMg / 1000 as DDDGrams,
bd.Quantity / 30 as AmortisedBedDays,
p.SupplyAmountMg * i.QuantityData / f.DefinedDailyDoseMg / (bd.Quantity / 30) as UsageDensityRate,
f.SupplyForm as Form,
p.SupplyFormDetail as FormDetail,
f.Restriction,
p.SupplyAmountMg / 1000 as SingleDose,
i.QuantityData as NumDoses

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
