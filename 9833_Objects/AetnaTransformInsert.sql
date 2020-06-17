USE bsa

BEGIN TRANSACTION

INSERT INTO dbo.TransformAetnaSchedule (
	[Area]
	,[RatingSystem]
	,[Code]
	,[Modifier]
	,[Description]
	,[Specialty]
	,[Product]
	,[PlaceOfService]
	,[Amount]
	,[StartDate]
	,[EndDate]
	)
SELECT 
	[Area] = Case 
				when i.[Area]like 'CA04' then 'All'
				Else i.[Area]
			end
	,i.[RatingSystem]
	,i.[Code]
	,i.[Modifier]
	,i.[Description]
	,i.[Specialty]
	,i.[Product]
	,[PlaceOfService] = case 
							when i.[PlaceOfService] like '' then 'Clinic'
							when i.[PlaceOfService] like 'OFF' then 'Clinic'
							when i.[PlaceOfService] like 'NOF' then 'Hospital'
						End
	,i.[Amount]
	,i.[StartDate]
	,i.[EndDate]
FROM dbo.ImportAetnaSchedule i
LEFT JOIN dbo.TransformAetnaSchedule t
	ON i.Code = t.Code
		AND i.[Modifier] = t.[modifier] 
		AND i.Amount = t.Amount
		AND i.StartDate = t.StartDate
		AND i.EndDate = t.EndDate
		AND i.Area = t.Area
WHERE t.RecordID IS NULL

rollback TRANSACTION
