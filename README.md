After learning some database fundamentals, I created a simple devices_store_sql_db project, so I could apply all concepts I’ve learned in a practical way. Below a video exploring the structure.



🛠️ Tools used: SSMS 2022 & MS SQL Server | Draw.io (for designing the ERD).



📂 Physical Directory: Separated the project into 5 directories: entities (12 core tables), lookups (12 reference tables), junctions (1 table), views (12 queries), and schema (diagram in .drawio and .png).



🗄️ Database & Schema: All database objects are housed inside the devices_store_db database under a dedicated ds schema (standing for devices_store) rather than defaulting to dbo to ensure clean namespace isolation.



📝 Coding Standards: Enforced lowercase snake_case for all identifiers, and used explicit constraint naming (e.g., pk_transactions_transaction_id) rather than random names.



📏 Data Sizing: Data types are strictly tailored to the domain, such as decimal(10, 2) for financial amounts (sale_price, amount), char(2) for fixed-length ISO country codes, bit for boolean flags (is_active), and nvarchar(max) for open-ended text fields.



Relational Architecture: 

🔗 Lookup Table Normalization (1:N): Extracted static categories, such as device_types, phone_types, and power_sources, into 12 dedicated reference tables. By storing foreign key IDs in the core tables instead of raw text, the architecture prevents data entry anomalies and strictly enforces domain integrity.

👤 Supertype/Subtype Pattern (1:1): Separated the base-entity (ds.people) from the business-entity (ds.customers). I enforced a strict 1:1 relationship by placing a unique constraint on the foreign key (uq_customers_person_id), keeping the architecture modular.

🌉 Many-to-Many Relationship (M:N): A person can have home and work addresses, and multiple people can share the same home address. I implemented this mapping using the ds.people_addresses junction table, secured with a composite unique constraint on (person_id, address_id) to avoid duplicated records.

💳 Hierarchical Tracing (1:N): One sale can have multiple transactions, and each transaction maps to a specific payment method. This structure freezes the final_price at the time of sale, while allowing multiple payment methods to be tracked against a single transaction without data duplication.



I've open-sourced the full SQL scripts and ERD on my GitHub (ahmedhakamidev).