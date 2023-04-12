SELECT tracks.TrackId, tracks.Name, tracks.Composer
FROM tracks
LEFT JOIN invoice_items ON tracks.TrackId = invoice_items.TrackId
WHERE invoice_items.InvoiceId IS NULL;