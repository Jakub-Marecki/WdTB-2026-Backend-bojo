-- ==========================================
-- DANE STARTOWE APLIKACJI BOJO
-- LAB 01, LAB 02, LAB 03
-- ==========================================


-- ==========================================
-- LAB 01 - KONTA UŻYTKOWNIKÓW
-- ==========================================

INSERT INTO user_account
(email, display_name, role, created_at)
VALUES
    ('ola@student.merito.pl', 'Ola', 'USER', CURRENT_TIMESTAMP),
    ('kuba@student.merito.pl', 'Kuba', 'USER', CURRENT_TIMESTAMP),
    ('firma@example.com', 'Firma', 'PARTNER', CURRENT_TIMESTAMP),
    ('admin@example.com', 'Admin', 'ADMIN', CURRENT_TIMESTAMP),
    ('ttt@student.merito.pl', 'ttt', 'USER', CURRENT_TIMESTAMP),
    ('jakub.marecki@student.merito.pl', 'Jakub', 'USER', CURRENT_TIMESTAMP),
    ('szymon.mruszczyk@student.merito.pl', 'Szymon', 'USER', CURRENT_TIMESTAMP);


-- ==========================================
-- LAB 03 - KONTA KLIENTÓW
-- Potrzebne do relacji OneToOne
-- ==========================================

INSERT INTO user_account
(email, display_name, role, created_at)
VALUES
    ('jan.kowalski@example.com', 'Jan Kowalski', 'USER', CURRENT_TIMESTAMP),
    ('adam.nowak@example.com', 'Adam Nowak', 'USER', CURRENT_TIMESTAMP),
    ('piotr.wisniewski@example.com', 'Piotr Wiśniewski', 'USER', CURRENT_TIMESTAMP);


-- ==========================================
-- LAB 02 - OBIEKTY SPORTOWE
-- ==========================================

INSERT INTO sports_facility
(name, facility_type, hourly_rate, active, street, city, postal_code)
VALUES
    ('Boisko Orlik Centrum', 'FIELD', 120.00, TRUE, 'Sportowa 5', 'Wrocław', '50-001'),
    ('Hala Sportowa Zachód', 'HALL', 180.00, TRUE, 'Fabryczna 12', 'Wrocław', '53-609'),
    ('Boisko Piłkarskie Arena', 'FIELD', 150.00, TRUE, 'Parkowa 8', 'Poznań', '60-001');


-- ==========================================
-- LAB 02 i LAB 03 - KLIENCI
-- Relacja OneToOne z UserAccount
-- ==========================================

INSERT INTO customer
(full_name, email, phone, registered_on, active, user_account_id)
VALUES

    ('Jan Kowalski',
     'jan.kowalski@example.com',
     '600100200',
     '2026-10-01',
     TRUE,
     (SELECT id FROM user_account WHERE email = 'jan.kowalski@example.com')),

    ('Adam Nowak',
     'adam.nowak@example.com',
     '600200300',
     '2026-10-05',
     TRUE,
     (SELECT id FROM user_account WHERE email = 'adam.nowak@example.com')),

    ('Piotr Wiśniewski',
     'piotr.wisniewski@example.com',
     '600300400',
     '2026-10-10',
     TRUE,
     (SELECT id FROM user_account WHERE email = 'piotr.wisniewski@example.com'));


-- ==========================================
-- LAB 02 i LAB 03 - REZERWACJE
-- Relacje ManyToOne
-- ==========================================

INSERT INTO booking
(customer_name, start_at, end_at, total_price, confirmed, sports_facility_id, customer_id)
VALUES

    ('Jan Kowalski',
     '2026-11-04 18:00:00',
     '2026-11-04 19:00:00',
     120.00,
     TRUE,
     1,
     1),

    ('Adam Nowak',
     '2026-11-05 17:00:00',
     '2026-11-05 19:00:00',
     360.00,
     TRUE,
     1,
     2),

    ('Piotr Wiśniewski',
     '2026-11-06 20:00:00',
     '2026-11-06 21:00:00',
     150.00,
     FALSE,
     2,
     3);