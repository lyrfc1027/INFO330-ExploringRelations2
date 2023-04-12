SELECT c.FirstName || ' ' || c.LastName AS FullName, i.InvoiceId, i.InvoiceDate, i.BillingCountry
FROM customers c
JOIN invoices i ON c.CustomerId = i.CustomerId
WHERE i.BillingCountry = 'Brazil';