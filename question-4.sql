SELECT e.FirstName || ' ' || e.LastName AS SalesAgentName, 
       SUM(il.UnitPrice * il.Quantity) AS TotalSales
FROM employees e
JOIN customers c ON e.EmployeeId = c.SupportRepId
JOIN invoices i ON c.CustomerId = i.CustomerId
JOIN invoice_items il ON i.InvoiceId = il.InvoiceId
WHERE e.Title = 'Sales Support Agent' AND strftime('%Y', i.InvoiceDate) = '2010'
GROUP BY e.EmployeeId
ORDER BY TotalSales DESC
LIMIT 1;