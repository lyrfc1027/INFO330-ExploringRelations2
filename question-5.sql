SELECT tracks.Name AS TrackName, COUNT(*) AS NumPurchases
FROM invoice_items
JOIN invoices ON invoice_items.InvoiceId = invoices.InvoiceId
JOIN tracks ON invoice_items.TrackId = tracks.TrackId
WHERE strftime('%Y', invoices.InvoiceDate) = '2013'
GROUP BY tracks.TrackId
ORDER BY NumPurchases DESC
LIMIT 1;