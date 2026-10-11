-- Production Support Lab
-- Banking Transaction Support Database

CREATE DATABASE ProductionSupportLab;
GO

USE ProductionSupportLab;
GO

CREATE TABLE Transactions
(
    TransactionID INT PRIMARY KEY,
    AccountID INT,
    TransactionAmount DECIMAL(12,2),
    TransactionStatus VARCHAR(20),
    TransactionDate DATETIME,
    ErrorCode VARCHAR(20)
);
GO

INSERT INTO Transactions
(TransactionID, AccountID, TransactionAmount, TransactionStatus, TransactionDate, ErrorCode)
VALUES
(1001, 50001, 25000.00, 'SUCCESS', '2026-10-07 09:10:00', NULL),
(1002, 50002, 15000.50, 'SUCCESS', '2026-10-07 09:12:00', NULL),
(1003, 50003, 75000.00, 'FAILED', '2026-10-07 09:15:00', 'DB_TIMEOUT'),
(1004, 50001, 32000.00, 'FAILED', '2026-10-07 09:16:00', 'TXN_ERROR'),
(1005, 50004, 50000.00, 'PENDING', '2026-10-07 09:18:00', NULL),
(1006, 50002, 18000.00, 'FAILED', '2026-10-07 09:20:00', 'DB_TIMEOUT'),
(1007, 50005, 42000.00, 'SUCCESS', '2026-10-07 09:22:00', NULL),
(1008, 50001, 12000.00, 'SUCCESS', '2026-10-07 09:25:00', NULL),
(1009, 50003, 65000.00, 'FAILED', '2026-10-07 09:27:00', 'DB_TIMEOUT'),
(1010, 50004, 30000.00, 'PENDING', '2026-10-07 09:30:00', NULL);
GO
