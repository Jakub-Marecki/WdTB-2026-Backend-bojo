-- Dane startowe Bojo

-- Uzytkownicy
insert into user_account (email, display_name, role, created_at) values
                                                                     ('ola@student.merito.pl', 'Ola', 'USER', CURRENT_TIMESTAMP),
                                                                     ('kuba@student.merito.pl', 'Kuba', 'USER', CURRENT_TIMESTAMP),
                                                                     ('firma@example.com', 'Firma', 'PARTNER', CURRENT_TIMESTAMP),
                                                                     ('admin@example.com', 'Admin', 'ADMIN', CURRENT_TIMESTAMP),
                                                                     ('ttt@student.merito.pl', 'ttt', 'USER', CURRENT_TIMESTAMP),
                                                                     ('jakub.marecki@student.merito.pl', 'Jakub', 'USER', CURRENT_TIMESTAMP),
                                                                     ('szymon.mruszczyk@student.merito.pl', 'Szymon', 'USER', CURRENT_TIMESTAMP),
                                                                     ('jan.kowalski@example.com', 'Jan Kowalski', 'USER', CURRENT_TIMESTAMP),
                                                                     ('adam.nowak@example.com', 'Adam Nowak', 'USER', CURRENT_TIMESTAMP),
                                                                     ('piotr.wisniewski@example.com', 'Piotr Wiśniewski', 'USER', CURRENT_TIMESTAMP);

-- Boiska i hale
insert into sports_facility (name, facility_type, hourly_rate, active, street, city, postal_code) values
                                                                                                      ('Boisko Orlik Centrum', 'FIELD', 120.00, TRUE, 'Sportowa 5', 'Wrocław', '50-001'),
                                                                                                      ('Hala Sportowa Zachód', 'HALL', 180.00, TRUE, 'Fabryczna 12', 'Wrocław', '53-609'),
                                                                                                      ('Boisko Piłkarskie Arena', 'FIELD', 150.00, TRUE, 'Parkowa 8', 'Poznań', '60-001');

-- Wyposazenie
insert into amenity (name, description, category, extra_fee, active) values
                                                                         ('Szatnia', 'Szatnia dla zawodnikow', 'COMFORT', 0.00, TRUE),
                                                                         ('Oswietlenie', 'Oswietlenie obiektu sportowego', 'TECHNICAL', 20.00, TRUE),
                                                                         ('Parking', 'Parking dla klientow', 'COMFORT', 0.00, TRUE);

-- Klienci i przypisane do nich konta
insert into customer (full_name, email, phone, registered_on, active, user_account_id) values
                                                                                           ('Jan Kowalski', 'jan.kowalski@example.com', '600100200', '2026-10-01', TRUE,
                                                                                            (select id from user_account where email = 'jan.kowalski@example.com')),
                                                                                           ('Adam Nowak', 'adam.nowak@example.com', '600200300', '2026-10-05', TRUE,
                                                                                            (select id from user_account where email = 'adam.nowak@example.com')),
                                                                                           ('Piotr Wiśniewski', 'piotr.wisniewski@example.com', '600300400', '2026-10-10', TRUE,
                                                                                            (select id from user_account where email = 'piotr.wisniewski@example.com'));

-- Rezerwacje
insert into booking (customer_name, start_at, end_at, total_price, confirmed, sports_facility_id, customer_id) values
                                                                                                                   ('Jan Kowalski', '2026-11-04 18:00:00', '2026-11-04 19:00:00', 120.00, TRUE, 1, 1),
                                                                                                                   ('Adam Nowak', '2026-11-05 17:00:00', '2026-11-05 19:00:00', 360.00, TRUE, 1, 2),
                                                                                                                   ('Piotr Wiśniewski', '2026-11-06 20:00:00', '2026-11-06 21:00:00', 150.00, FALSE, 2, 3);

-- Wyposazenie przypisane do obiektow
insert into facility_amenity (sports_facility_id, amenity_id) values
                                                                  (1, 1),
                                                                  (1, 2),
                                                                  (2, 3),
                                                                  (3, 2);