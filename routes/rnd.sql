UPDATE Stores as s, StoreAddress as sa 
SET s.Operating_hours='09:00-21:00', s.Size_=450, sa.Street='Kappa', sa.Number_='25', sa.Postal_code='11472', sa.City='Kalamata' 
WHERE Store_id=11;