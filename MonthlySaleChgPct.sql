select 
	curr.Rpt_Year, curr.[Data Type], curr.[NAICS  Code], curr.[Kind of Business]
	,prev.[01] as Prev_01, ((curr.[01] - prev.[01]) / curr.[01]) as [01 Chg%], curr.[01] as Curr_01

	,prev.[02] as Prev_02, ((curr.[02] - prev.[02]) / curr.[02]) as [02 Chg%], curr.[02] as Curr_02
	,prev.[03] as Prev_03, ((curr.[03] - prev.[03]) / curr.[03]) as [03 Chg%], curr.[03] as Curr_03
	,prev.[04] as Prev_04, ((curr.[04] - prev.[04]) / curr.[04]) as [04 Chg%], curr.[04] as Curr_04
	,prev.[05] as Prev_05, ((curr.[05] - prev.[05]) / curr.[05]) as [05 Chg%], curr.[05] as Curr_05
	,prev.[06] as Prev_06, ((curr.[06] - prev.[06]) / curr.[06]) as [06 Chg%], curr.[06] as Curr_06
	,prev.[07] as Prev_07, ((curr.[07] - prev.[07]) / curr.[07]) as [07 Chg%], curr.[07] as Curr_07
	,prev.[08] as Prev_08, ((curr.[08] - prev.[08]) / curr.[08]) as [08 Chg%], curr.[08] as Curr_08
	,prev.[09] as Prev_09, ((curr.[09] - prev.[09]) / curr.[09]) as [09 Chg%], curr.[09] as Curr_09
	,prev.[10] as Prev_10, ((curr.[10] - prev.[10]) / curr.[10]) as [10 Chg%], curr.[10] as Curr_10
	,prev.[11] as Prev_11, ((curr.[11] - prev.[11]) / curr.[11]) as [11 Chg%], curr.[11] as Curr_11
	,prev.[12] as Prev_12, ((curr.[12] - prev.[12]) / curr.[12]) as [12 Chg%], curr.[12] as Curr_12
from 
	MonthlyRetailSales prev full outer join	MonthlyRetailSales curr 
		on prev.[Data Type] = curr.[Data Type] 
		and prev.[Kind of Business] = curr.[Kind of Business]
		and prev.Rpt_Year = curr.Rpt_Year - 1
where 
	curr.Rpt_Year >= 1992
order by curr.Rpt_Year, curr.[Data Type], curr.[Kind of Business]