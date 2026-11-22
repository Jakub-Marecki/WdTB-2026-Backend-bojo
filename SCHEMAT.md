# Schemat bazy danych

Plik generują reguły projektu (panel Maven → Lifecycle → verify). Nie edytujcie go ręcznie.

Tabele: 6 (w tym tabele łączące @ManyToMany: facility_amenity) · kolumny: 34 · relacje: 2 × @ManyToOne, 1 × @OneToMany, 1 × @OneToOne, 1 × @ManyToMany

| Tabela | Encja | Kolumny | Klucze obce |
|---|---|---|---|
| amenity | Amenity | 6 | — |
| booking | Booking | 8 | customer_id, sports_facility_id |
| customer | Customer | 7 | user_account_id |
| sports_facility | SportsFacility | 8 | — |
| user_account | UserAccount | 5 | — |

```mermaid
erDiagram
    amenity {
        Long id PK
        Boolean active
        String category
        String description
        BigDecimal extra_fee
        String name
    }
    booking {
        Long id PK
        Boolean confirmed
        Long customer_id FK
        String customer_name
        LocalDateTime end_at
        Long sports_facility_id FK
        LocalDateTime start_at
        BigDecimal total_price
    }
    customer {
        Long id PK
        Boolean active
        String email
        String full_name
        String phone
        LocalDate registered_on
        Long user_account_id FK
    }
    sports_facility {
        Long id PK
        Boolean active
        String city
        FacilityType facility_type
        BigDecimal hourly_rate
        String name
        String postal_code
        String street
    }
    user_account {
        Long id PK
        LocalDateTime created_at
        String display_name
        String email
        AccountRole role
    }
    customer ||--o{ booking : "customer_id"
    sports_facility ||--o{ booking : "sports_facility_id"
    sports_facility }o--o{ amenity : "facility_amenity"
    user_account |o--o| customer : "user_account_id"
```
