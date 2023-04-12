SELECT t.TrackId, t.Name, t.Composer
FROM tracks t
JOIN invoice_items ii ON t.TrackId = ii.TrackId;