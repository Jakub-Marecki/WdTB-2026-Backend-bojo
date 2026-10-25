-- Dane startowe aplikacji. Tabele tworzy Hibernate z encji, a ten plik Spring Boot uruchamia zaraz potem.
-- LAB 01: dopiszcie tu konta wszystkich osób z zespołu (reguła R1.03).
-- LAB 02: dopiszcie dane do swoich tabel (kolejność: najpierw tabele, na które wskazują klucze obce).
insert into user_account (email, display_name, role, created_at) values
    ('ola@student.merito.pl',   'Ola',   'USER',    current_timestamp),
    ('kuba@student.merito.pl',  'Kuba',  'USER',    current_timestamp),
    ('firma@example.com',       'Firma', 'PARTNER', current_timestamp),
    ('admin@example.com',       'Admin', 'ADMIN',   current_timestamp),
    ('ttt@student.merito.pl',       'ttt', 'USER',   current_timestamp),
    ('jakub.marecki@student.merito.pl',       'Jakub', 'USER',   current_timestamp),
    ('szymon.mruszczyk@student.merito.pl',       'Szymon', 'USER',   current_timestamp);

-- LAB 01: Wasze konta (zmieńcie na swoje dane, rola USER)
-- insert into user_account (email, display_name, role, created_at) values
--     ('imie.nazwisko@student.merito.pl', 'Imię', 'USER', current_timestamp);


-- LAB 02 Sports_facility
insert into sports_facility (name, facility_type, hourly_rate, active, street, city, postal_code) VALUES
('Boisko Orlik Centrum', 'FIELD', 120.00, TRUE, 'Sportowa 5', 'Wrocław', '50-001'),
('Hala Sportowa Zachód', 'HALL', 180.00, TRUE,'Fabryczna 12', 'Wrocław', '53-609'),
('Boisko Piłkarskie Arena', 'FIELD', 150.00, TRUE, 'Parkowa 8', 'Poznań', '60-001');

-- Lab 02 booking
-- ===== LAB 02 · booking =====

INSERT INTO booking (customer_name, start_at, end_at, total_price, confirmed) VALUES
('Jan Kowalski', '2026-11-04 18:00:00', '2026-11-04 19:00:00', 120.00, TRUE),
('Adam Nowak', '2026-11-05 17:00:00', '2026-11-05 19:00:00', 360.00, TRUE),
('Piotr Wiśniewski', '2026-11-06 20:00:00', '2026-11-06 21:00:00',150.00, FALSE);

-- Lab 02 customers

INSERT INTO customer
(full_name, email, phone, registered_on, active) VALUES
('Jan Kowalski', 'jan.kowalski@example.com', '600100200', '2026-10-01', TRUE),
('Adam Nowak', 'adam.nowak@example.com', '600200300', '2026-10-05', TRUE),
('Piotr Wiśniewski', 'piotr.wisniewski@example.com', '600300400', '2026-10-10', TRUE);