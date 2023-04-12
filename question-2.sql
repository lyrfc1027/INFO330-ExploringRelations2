SELECT e.FirstName, e.LastName, i.*
FROM employees e
JOIN customers c on e.EmployeeId = c.SupportRepId
JOIN invoices i on c.CustomerId = i.CustomerId;