SELECT e.FirstName, e.LastName, i.*, t.Name as TrackName, ar.Name as ArtistName
FROM employees e
JOIN customers c on e.EmployeeId = c.SupportRepId
JOIN invoices i on c.CustomerId = i.CustomerId
JOIN invoice_items ii on i.InvoiceId = ii.InvoiceId
JOIN tracks t on ii.TrackId = t.TrackId
JOIN albums al on t.AlbumId = al.AlbumId
JOIN artists ar on al.ArtistId = ar.ArtistId;