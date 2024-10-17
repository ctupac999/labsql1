INSERT INTO `mydb`.`client` (`idclient`, `email`, `phone`, `address`, `city`, `state`, `country`) VALUES
(1, 'client1@example.com', 1234567890, '123 Elm St', 'Springfield', 'IL', 'USA'),
(2, 'client2@example.com', 9876543210, '456 Oak St', 'Madison', 'WI', 'USA'),
(3, 'client3@example.com', 1122334455, '789 Pine St', 'Austin', 'TX', 'USA'),
(4, 'client4@example.com', 2233445566, '135 Maple Ave', 'Denver', 'CO', 'USA'),
(5, 'client5@example.com', 3344556677, '246 Cedar Dr', 'Seattle', 'WA', 'USA'),
(6, 'client6@example.com', 4455667788, '357 Birch Blvd', 'Miami', 'FL', 'USA'),
(7, 'client7@example.com', 5566778899, '468 Redwood Ln', 'Phoenix', 'AZ', 'USA'),
(8, 'client8@example.com', 6677889900, '579 Willow Ct', 'Atlanta', 'GA', 'USA'),
(9, 'client9@example.com', 7788990011, '680 Cherry Rd', 'Boston', 'MA', 'USA'),
(10, 'client10@example.com', 8899001122, '791 Palm Ave', 'Chicago', 'IL', 'USA');

INSERT INTO `mydb`.`car` (`idcar`, `brand`, `model`, `vin`, `color`) VALUES
(1, 'Toyota', 'Corolla', 'VIN12345', 'Blue'),
(2, 'Honda', 'Civic', 'VIN23456', 'Red'),
(3, 'Ford', 'Mustang', 'VIN34567', 'Black'),
(4, 'Chevrolet', 'Camaro', 'VIN45678', 'Yellow'),
(5, 'Tesla', 'Model S', 'VIN56789', 'White'),
(6, 'BMW', 'X5', 'VIN67890', 'Silver'),
(7, 'Audi', 'A4', 'VIN78901', 'Grey'),
(8, 'Mercedes', 'C300', 'VIN89012', 'Black'),
(9, 'Nissan', 'Altima', 'VIN90123', 'Green'),
(10, 'Hyundai', 'Elantra', 'VIN01234', 'Blue');

INSERT INTO `mydb`.`sellers` (`idseller`, `nameseller`, `namestore`) VALUES
(1, 'John Doe', 'Auto World'),
(2, 'Jane Smith', 'Car Kingdom'),
(3, 'Paul Johnson', 'Luxury Motors'),
(4, 'Lisa Brown', 'Speedy Cars'),
(5, 'Mark Davis', 'Top Gear Autos'),
(6, 'Emily White', 'Electric Dreams'),
(7, 'Peter Miller', 'Classic Rides'),
(8, 'Sara Wilson', 'Fast Lane Auto'),
(9, 'David Green', 'Prime Cars'),
(10, 'Nina Black', 'Family Wheels');

INSERT INTO `mydb`.`bills` (`idbill`, `numberbill`, `year`, `idcar`, `idclient`, `idseller`) VALUES
(1, 'INV-1001', 2023, 1, 1, 1),
(2, 'INV-1002', 2023, 2, 2, 2),
(3, 'INV-1003', 2023, 3, 3, 3),
(4, 'INV-1004', 2023, 4, 4, 4),
(5, 'INV-1005', 2023, 5, 5, 5),
(6, 'INV-1006', 2023, 6, 6, 6),
(7, 'INV-1007', 2023, 7, 7, 7),
(8, 'INV-1008', 2023, 8, 8, 8),
(9, 'INV-1009', 2023, 9, 9, 9),
(10, 'INV-1010', 2023, 10, 10, 10);
