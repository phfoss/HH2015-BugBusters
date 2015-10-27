SELECT p.SupplyAgentName, count(*) as 'MissingInstances'
FROM ProductLookup p left outer join SupplyAgent a
        on p.SupplyAgentName = a.GenericName
	where a.GenericName is null
	group by p.SupplyAgentName
	order by count(*) desc
