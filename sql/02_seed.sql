-- Transcribed from the original report; see docs/project-notes.md.
-- Sample subscriber email domains changed to example.com for publication.
-- One apostrophe uses standard SQL escaping; record values are otherwise unchanged.

-- COUNTRY (20 rows)
INSERT INTO country (country_id, country_name, iso_code, region) VALUES
(1, 'United States', 'US', 'North America'),
(2, 'United Kingdom', 'GB', 'Europe'),
(3, 'Spain', 'ES', 'Europe'),
(4, 'France', 'FR', 'Europe'),
(5, 'Germany', 'DE', 'Europe'),
(6, 'Brazil', 'BR', 'South America'),
(7, 'Japan', 'JP', 'Asia'),
(8, 'South Korea', 'KR', 'Asia'),
(9, 'Mexico', 'MX', 'North America'),
(10, 'Canada', 'CA', 'North America'),
(11, 'Italy', 'IT', 'Europe'),
(12, 'Argentina', 'AR', 'South America'),
(13, 'Australia', 'AU', 'Oceania'),
(14, 'India', 'IN', 'Asia'),
(15, 'Netherlands', 'NL', 'Europe'),
(16, 'Sweden', 'SE', 'Europe'),
(17, 'Poland', 'PL', 'Europe'),
(18, 'Portugal', 'PT', 'Europe'),
(19, 'Turkey', 'TR', 'Asia'),
(20, 'Colombia', 'CO', 'South America');

-- LANGUAGE (15 rows)
INSERT INTO language (language_id, language_name, iso_code) VALUES
(1, 'English', 'EN'),
(2, 'Spanish', 'ES'),
(3, 'French', 'FR'),
(4, 'German', 'DE'),
(5, 'Portuguese', 'PT'),
(6, 'Japanese', 'JA'),
(7, 'Korean', 'KO'),
(8, 'Italian', 'IT'),
(9, 'Dutch', 'NL'),
(10, 'Swedish', 'SV'),
(11, 'Polish', 'PL'),
(12, 'Hindi', 'HI'),
(13, 'Turkish', 'TR'),
(14, 'Mandarin', 'ZH'),
(15, 'Russian', 'RU');

-- GENRE (12 rows)
INSERT INTO genre (genre_id, genre_name) VALUES
(1, 'Action'),
(2, 'Comedy'),
(3, 'Drama'),
(4, 'Science Fiction'),
(5, 'Horror'),
(6, 'Romance'),
(7, 'Thriller'),
(8, 'Documentary'),
(9, 'Animation'),
(10, 'Fantasy'),
(11, 'Mystery'),
(12, 'Adventure');

-- ACTOR (48 rows)
 INSERT INTO actor (actor_id, full_name, birthdate, nationality) VALUES
(1, 'Tom Hanks',       '1956-07-09', 'American'),
(2, 'Meryl Streep', '1949-06-22', 'American'),
(3, 'Leonardo DiCaprio','1974-11-11', 'American'),
(4, 'Jennifer Aniston', '1969-02-11', 'American'),
(5, 'Matthew Perry', '1969-08-19', 'American'),
(6, 'Courteney Cox', '1964-06-15', 'American'),
(7, 'Pedro Pascal', '1975-04-02', 'Chilean'),
(8, 'Zendaya Coleman', '1996-09-01', 'American'),
(9, 'Bryan Cranston', '1956-03-07', 'American'),
(10, 'Jim Parsons',     '1973-03-24', 'American'),
(11, 'Kaley Cuoco',     '1985-11-30', 'American'),
(12, 'Elijah Wood',    '1981-01-28', 'American'),
(13, 'Ian McKellen', '1939-05-25', 'British'),
(14, 'Cate Blanchett', '1969-05-14', 'Australian'),
(15, 'Russell Crowe', '1964-04-07', 'New Zealander'),
(16, 'Joaquin Phoenix', '1974-10-28', 'American'),
(17, 'Aaron Paul',     '1979-08-27', 'American'),
(18, 'Anna Gunn',        '1968-08-11', 'American'),
(19, 'Álvaro Morte', '1975-02-23', 'Spanish'),
(20, 'Úrsula Corberó', '1989-08-11', 'Spanish'),
(21, 'Timothée Chalamet','1995-12-27', 'American'),
(22, 'Rebecca Ferguson', '1983-10-19', 'Swedish'),
(23, 'Keanu Reeves', '1964-09-02', 'Canadian'),
(24, 'Carrie-Anne Moss', '1967-08-21', 'Canadian'),
(25, 'Robin Wright', '1966-04-08', 'American'),
(26, 'Morgan Freeman',           '1937-06-01', 'American'),
(27, 'Tim Robbins',          '1958-10-16', 'American'),
(28, 'Marlon Brando',          '1924-04-03', 'American'),
(29, 'Al Pacino',         '1940-04-25', 'American'),
(30, 'Christian Bale',      '1974-01-30', 'British'),
(31, 'Heath Ledger',          '1979-04-04', 'Australian'),

(32, 'Liam Neeson',          '1952-06-07', 'Irish'),
(33, 'John Travolta',     '1954-02-18', 'American'),
(34, 'Samuel L. Jackson', '1948-12-21', 'American'),
(35, 'Henry Cavill',    '1983-05-05', 'British'),
(36, 'Jenna Ortega',        '2002-09-27', 'American'),
(37, 'Lee Jung-jae',      '1972-12-15', 'South Korean'),
(38, 'Sam Worthington',          '1976-08-02', 'Australian'),
(39, 'Tom Cruise',       '1962-07-03', 'American'),
(40, 'Michelle Yeoh',      '1962-08-06', 'Malaysian'),
(41, 'Robert Pattinson', '1986-05-13', 'British'),
(42, 'Tom Holland',       '1996-06-01', 'British'),
(43, 'Oscar Isaac',      '1979-03-09', 'Guatemalan-American'),
(44, 'Song Kang-ho',           '1967-01-17', 'South Korean'),
(45, 'Robert Downey Jr.', '1965-04-04', 'American'),
(46, 'Anya Taylor-Joy',       '1996-04-16', 'American'),
(47, 'Margot Robbie',         '1990-07-02', 'Australian'),
(48, 'Ryan Gosling',       '1980-11-12', 'Canadian');


-- CONTENT (41 rows)
INSERT INTO content (content_id, title, content_type, release_date, duration_minutes)
VALUES
(1, 'The Lord of the Rings: The Fellowship of the Ring', 'Movie', '2001-12-19', 178),
(2, 'Gladiator',                         'Movie', '2000-05-05', 155),
(3, 'The Big Bang Theory',                          'TV Show', '2007-09-24', 22),
(4, 'Friends',                          'TV Show', '1994-09-22', 22),
(5, 'Breaking Bad',                           'TV Show', '2008-01-20', 47),
(6, 'Inception',                         'Movie', '2010-07-16', 148),
(7, 'The Matrix',                         'Movie', '1999-03-31', 136),
(8, 'Forrest Gump',                            'Movie', '1994-07-06', 142),
(9, 'Money Heist',                           'TV Show', '2017-05-02', 70),
(10, 'Dune',                             'Movie', '2021-10-22', 155),
(11, 'Stranger Things',                         'TV Show', '2016-07-15', 51),
(12, 'The Crown',                             'TV Show', '2016-11-04', 58),
(13, 'Interstellar',                     'Movie', '2014-11-07', 169),
(14, 'The Shawshank Redemption',                         'Movie', '1994-09-23', 142),
(15, 'Pulp Fiction',                        'Movie', '1994-10-14', 154),
(16, 'Game of Thrones',                            'TV Show', '2011-04-17', 57),
(17, 'The Mandalorian',                           'TV Show', '2019-11-12', 40),
(18, 'Avatar',                          'Movie', '2009-12-18', 162),
(19, 'The Dark Knight',                          'Movie', '2008-07-18', 152),
(20, 'Oppenheimer',                              'Movie', '2023-07-21', 180),
(21, 'The Green Mile',                           'Movie', '1999-12-10', 189),
(22, 'The Godfather',                           'Movie', '1972-03-24', 175),
(23, 'Inglourious Basterds',                       'Movie', '2009-08-21', 153),
(24, 'Schindler''s List',                    'Movie', '1993-12-15', 195),
(25, 'Fight Club',                         'Movie', '1999-10-15', 139),
(26, 'The Witcher',                           'TV Show', '2019-12-20', 60),

(27, 'Wednesday',                            'TV Show', '2022-11-23', 50),
(28, 'Squid Game',                           'TV Show', '2021-09-17', 60),
(29, 'Avatar: The Way of Water',                   'Movie', '2022-12-16', 192),
(30, 'Top Gun: Maverick',                      'Movie', '2022-05-27', 131),
(31, 'Everything Everywhere All at Once',             'Movie', '2022-03-25', 139),
(32, 'The Batman',                          'Movie', '2022-03-04', 176),
(33, 'Spider-Man: No Way Home',                      'Movie', '2021-12-17', 148),
(34, 'The Last of Us',                      'TV Show', '2023-01-15', 60),
(35, 'House of the Dragon',                     'TV Show', '2022-08-21', 60),
(36, 'Black Mirror',                      'TV Show', '2011-12-04', 60),
(37, 'Parasite',                         'Movie', '2019-05-30', 132),
(38, 'Joker',                          'Movie', '2019-10-04', 122),
(39, 'Avengers: Endgame',                         'Movie', '2019-04-26', 181),
(40, 'The Queen''s Gambit',                      'TV Show', '2020-10-23', 60),
(41, 'Barbie',                          'Movie', '2023-07-21', 114);

-- SUBSCRIPTION_PLAN (3 plans)
INSERT INTO subscription_plan (plan_id, plan_name, monthly_price, max_devices)
VALUES
(1, 'Basic', 9.99, 1),
(2, 'Standard', 13.99, 2),
(3, 'Premium', 17.99, 4);

-- PAYMENT_METHOD_TYPE (lookup)
INSERT INTO payment_method_type (method_type_id, description) VALUES
(1, 'CREDIT_CARD'),
(2, 'DEBIT_CARD'),
(3, 'DIGITAL_WALLET');

-- SUBSCRIPTION_STATUS (lookup)
INSERT INTO subscription_status (sstatus_id, description) VALUES
(1, 'TRIAL'),
(2, 'ACTIVE'),
(3, 'PAUSED'),
(4, 'CANCELLED');

-- PAYMENT_STATUS (lookup)
INSERT INTO payment_status (pstatus_id, description) VALUES
(1, 'COMPLETED'),
(2, 'FAILED'),
(3, 'PENDING');
-- PAYMENT_METHOD (9 methods)
INSERT INTO payment_method (payment_method_id, method_name, provider,
method_type_id) VALUES
(1, 'Visa Credit',  'Visa',       1), -- CREDIT_CARD
(2, 'Mastercard Debit', 'Mastercard',    2), -- DEBIT_CARD
(3, 'PayPal',      'PayPal Holdings', 3), -- DIGITAL_WALLET
(4, 'Apple Pay',     'Apple',      3), -- DIGITAL_WALLET

(5, 'Google Pay',      'Google',       3), -- DIGITAL_WALLET
(6, 'Amex Credit',     'American Express',1), -- CREDIT_CARD
(7, 'Visa Debit',   'Visa',       2), -- DEBIT_CARD
(8, 'Revolut Pay',    'Revolut',       3), -- DIGITAL_WALLET
(9, 'Mastercard Credit', 'Mastercard',     1); -- CREDIT_CARD

-- SUBSCRIBER (30 rows)
INSERT INTO subscriber (subscriber_id, full_name, email, signup_date, country_id,
preferred_language_id) VALUES
(1, 'John Doe', 'john.doe@example.com', '2023-01-15', 1, 1),
(2, 'Maria Garcia', 'maria.garcia@example.com', '2023-02-20', 3, 2),
(3, 'Jean Dupont', 'jean.dupont@example.com', '2023-03-10', 4, 3),
(4, 'Hans Mueller', 'hans.mueller@example.com', '2023-04-05', 5, 4),
(5, 'Sarah Smith', 'sarah.smith@example.com', '2023-05-12', 2, 1),
(6, 'Carlos Silva', 'carlos.silva@example.com', '2023-06-18', 6, 5),
(7, 'Yuki Tanaka', 'yuki.tanaka@example.com', '2023-07-22', 7, 6),
(8, 'Kim Minjun', 'kim.minjun@example.com', '2023-08-30', 8, 7),
(9, 'Miguel Lopez', 'miguel.lopez@example.com', '2023-09-14', 9, 2),
(10, 'Emma Wilson', 'emma.wilson@example.com', '2023-10-25', 10, 1),
(11, 'David Brown', 'david.brown@example.com', '2024-01-10', 1, 1),
(12, 'Sophie Martin', 'sophie.martin@example.com', '2024-02-15', 4, 3),
(13, 'Lucas Santos', 'lucas.santos@example.com', '2024-03-20', 6, 5),
(14, 'Anna Schmidt', 'anna.schmidt@example.com', '2024-04-12', 5, 4),
(15, 'James Taylor', 'james.taylor@example.com', '2024-05-08', 1, 1),
(16, 'Isabella Romano', 'isabella.romano@example.com', '2024-06-15', 11, 8),
(17, 'Diego Martinez', 'diego.martinez@example.com', '2024-07-20', 12, 2),
(18, 'Olivia Anderson', 'olivia.anderson@example.com', '2024-08-05', 13, 1),
(19, 'Raj Patel', 'raj.patel@example.com', '2024-08-18', 14, 12),
(20, 'Lars Svensson', 'lars.svensson@example.com', '2024-09-10', 16, 10),
(21, 'Emily Johnson', 'emily.johnson@example.com', '2024-09-25', 1, 1),
(22, 'Pierre Dubois', 'pierre.dubois@example.com', '2024-10-01', 4, 3),
(23, 'Ana Costa', 'ana.costa@example.com', '2024-10-12', 18, 5),
(24, 'Max Weber', 'max.weber@example.com', '2024-10-20', 5, 4),
(25, 'Sofia Fernandez', 'sofia.fernandez@example.com', '2024-10-28', 3, 2),
(26, 'Ryan O''Connor', 'ryan.oconnor@example.com', '2024-11-01', 1, 1),
(27, 'Yuki Nakamura', 'yuki.nakamura@example.com', '2024-11-08', 7, 6),
(28, 'Pablo Hernandez', 'pablo.hernandez@example.com', '2024-11-15', 20, 2),
(29, 'Lisa van der Berg', 'lisa.vandenberg@example.com', '2024-11-20', 15, 9),
(30, 'Ahmed Hassan', 'ahmed.hassan@example.com', '2024-11-25', 19, 13);


-- CONTENT_GENRE
INSERT INTO content_genre (content_id, genre_id) VALUES
(1, 10), (1, 12), (1, 1), -- LOTR: Fantasy, Adventure, Action
(2, 1), (2, 3), (2, 12), -- Gladiator: Action, Drama, Adventure
(3, 2),                -- Big Bang Theory: Comedy
(4, 2), (4, 6),          -- Friends: Comedy, Romance
(5, 3), (5, 7),          -- Breaking Bad: Drama, Thriller

(6, 4), (6, 7), (6, 11), -- Inception: Sci-Fi, Thriller, Mystery
(7, 4), (7, 1),          -- The Matrix: Sci-Fi, Action
(8, 3), (8, 6),          -- Forrest Gump: Drama, Romance
(9, 7), (9, 3),          -- Money Heist: Thriller, Drama
(10, 4), (10, 12),          -- Dune: Sci-Fi, Adventure
(11, 3), (11, 5), (11, 11), -- Stranger Things: Drama, Horror, Mystery
(12, 3), (12, 8),          -- The Crown: Drama, Documentary
(13, 4), (13, 3), (13, 12), -- Interstellar: Sci-Fi, Drama, Adventure
(14, 3),                -- The Shawshank Redemption: Drama
(15, 3), (15, 7),          -- Pulp Fiction: Drama, Thriller
(16, 10),(16, 3), (16, 12), -- Game of Thrones: Fantasy, Drama, Adventure
(17, 4), (17, 12),(17, 1), -- The Mandalorian: Sci-Fi, Adventure, Action
(18, 4), (18, 12),(18, 10), -- Avatar: Sci-Fi, Adventure, Fantasy
(19, 1), (19, 3), (19, 7), -- The Dark Knight: Action, Drama, Thriller
(20, 3), (20, 7), (20, 8), -- Oppenheimer: Drama, Thriller, Documentary-like
(21, 3),                -- The Green Mile: Drama
(22, 3), (22, 7),          -- The Godfather: Drama, Thriller
(23, 1), (23, 3), (23, 7), -- Inglourious Basterds: Action, Drama, Thriller
(24, 3), (24, 8),          -- Schindler's List: Drama, Documentary
(25, 3), (25, 7),          -- Fight Club: Drama, Thriller
(26, 10),(26, 12),(26, 1), -- The Witcher: Fantasy, Adventure, Action
(27, 11),(27, 2), (27, 5), -- Wednesday: Mystery, Comedy, Horror
(28, 7), (28, 3), (28, 1), -- Squid Game: Thriller, Drama, Action
(29, 4), (29, 12),(29, 1), -- Avatar: The Way of Water: Sci-Fi, Adventure, Action
(30, 1), (30, 3),          -- Top Gun: Maverick: Action, Drama
(31, 4), (31, 2), (31, 12), -- Everything Everywhere All at Once: Sci-Fi, Comedy, Adventure
(32, 1), (32, 7), (32, 11), -- The Batman: Action, Thriller, Mystery
(33, 1), (33, 12),(33, 4), -- Spider-Man: No Way Home: Action, Adventure, Sci-Fi
(34, 3), (34, 5), (34, 7), -- The Last of Us: Drama, Horror, Thriller
(35, 10),(35, 12),(35, 3), -- House of the Dragon: Fantasy, Adventure, Drama
(36, 4), (36, 7), (36, 3), -- Black Mirror: Sci-Fi, Thriller, Drama
(37, 3), (37, 7), (37, 2), -- Parasite: Drama, Thriller, Comedy
(38, 3), (38, 7),          -- Joker: Drama, Thriller
(39, 1), (39, 12),(39, 4), -- Avengers: Endgame: Action, Adventure, Sci-Fi
(40, 3),                -- The Queen's Gambit: Drama
(41, 2), (41, 12),(41, 10); -- Barbie: Comedy, Adventure, Fantasy

-- CONTENT_LANGUAGE
INSERT INTO content_language (content_id, language_id, is_original_audio, has_subtitles)
VALUES
(1, 1, 1, 1), (1, 2, 0, 1), (1, 3, 0, 1), (1, 4, 0, 1), (1, 5, 0, 1),
(2, 1, 1, 1), (2, 2, 0, 1), (2, 3, 0, 1), (2, 4, 0, 1),
(3, 1, 1, 1), (3, 2, 0, 1), (3, 3, 0, 1),
(4, 1, 1, 1), (4, 2, 0, 1), (4, 3, 0, 1), (4, 4, 0, 1), (4, 8, 0, 1),
(5, 1, 1, 1), (5, 2, 0, 1), (5, 3, 0, 1), (5, 4, 0, 1),
(6, 1, 1, 1), (6, 2, 0, 1), (6, 3, 0, 1), (6, 4, 0, 1), (6, 5, 0, 1),
(7, 1, 1, 1), (7, 2, 0, 1), (7, 3, 0, 1), (7, 4, 0, 1),
(8, 1, 1, 1), (8, 2, 0, 1), (8, 3, 0, 1), (8, 4, 0, 1), (8, 8, 0, 1),

(9, 2, 1, 1), (9, 1, 0, 1), (9, 3, 0, 1), (9, 5, 0, 1),
(10, 1, 1, 1), (10, 2, 0, 1), (10, 3, 0, 1), (10, 4, 0, 1),
(11, 1, 1, 1), (11, 2, 0, 1), (11, 3, 0, 1), (11, 4, 0, 1),
(12, 1, 1, 1), (12, 2, 0, 1), (12, 3, 0, 1),
(13, 1, 1, 1), (13, 2, 0, 1), (13, 3, 0, 1), (13, 4, 0, 1),
(14, 1, 1, 1), (14, 2, 0, 1), (14, 3, 0, 1),
(15, 1, 1, 1), (15, 2, 0, 1), (15, 3, 0, 1),
(16, 1, 1, 1), (16, 2, 0, 1), (16, 3, 0, 1), (16, 4, 0, 1),
(17, 1, 1, 1), (17, 2, 0, 1), (17, 3, 0, 1),
(18, 1, 1, 1), (18, 2, 0, 1), (18, 3, 0, 1), (18, 4, 0, 1),
(19, 1, 1, 1), (19, 2, 0, 1), (19, 3, 0, 1),
(20, 1, 1, 1), (20, 2, 0, 1), (20, 3, 0, 1), (20, 4, 0, 1),
(21, 1, 1, 1), (21, 2, 0, 1), (21, 3, 0, 1), (21, 4, 0, 1),
(22, 1, 1, 1), (22, 2, 0, 1), (22, 3, 0, 1), (22, 4, 0, 1), (22, 8, 0, 1),
(23, 1, 1, 1), (23, 2, 0, 1), (23, 3, 0, 1), (23, 4, 0, 1),
(24, 1, 1, 1), (24, 2, 0, 1), (24, 3, 0, 1), (24, 4, 0, 1),
(25, 1, 1, 1), (25, 2, 0, 1), (25, 3, 0, 1), (25, 4, 0, 1),
(26, 1, 1, 1), (26, 2, 0, 1), (26, 3, 0, 1), (26, 4, 0, 1), (26, 5, 0, 1),
(27, 1, 1, 1), (27, 2, 0, 1), (27, 3, 0, 1), (27, 4, 0, 1),
(28, 7, 1, 1), (28, 1, 0, 1), (28, 2, 0, 1), (28, 3, 0, 1),
(29, 1, 1, 1), (29, 2, 0, 1), (29, 3, 0, 1), (29, 4, 0, 1),
(30, 1, 1, 1), (30, 2, 0, 1), (30, 3, 0, 1), (30, 4, 0, 1),
(31, 1, 1, 1), (31, 2, 0, 1), (31, 3, 0, 1), (31, 14, 0, 1),
(32, 1, 1, 1), (32, 2, 0, 1), (32, 3, 0, 1), (32, 4, 0, 1),
(33, 1, 1, 1), (33, 2, 0, 1), (33, 3, 0, 1), (33, 4, 0, 1),
(34, 1, 1, 1), (34, 2, 0, 1), (34, 3, 0, 1), (34, 4, 0, 1),
(35, 1, 1, 1), (35, 2, 0, 1), (35, 3, 0, 1), (35, 4, 0, 1),
(36, 1, 1, 1), (36, 2, 0, 1), (36, 3, 0, 1), (36, 4, 0, 1),
(37, 7, 1, 1), (37, 1, 0, 1), (37, 2, 0, 1), (37, 3, 0, 1),
(38, 1, 1, 1), (38, 2, 0, 1), (38, 3, 0, 1), (38, 4, 0, 1),
(39, 1, 1, 1), (39, 2, 0, 1), (39, 3, 0, 1), (39, 4, 0, 1),
(40, 1, 1, 1), (40, 2, 0, 1), (40, 3, 0, 1), (40, 4, 0, 1),
(41, 1, 1, 1), -- English (original)
(41, 2, 0, 1), -- Spanish
(41, 3, 0, 1), -- French
(41, 4, 0, 1), -- German
(41, 5, 0, 1), -- Portuguese
(41, 8, 0, 1); -- Italian

-- CONTENT_ACTOR
INSERT INTO content_actor (content_id, actor_id) VALUES
(1, 12), (1, 13), (1, 14), -- LOTR: Elijah Wood, Ian McKellen, Cate Blanchett
(2, 15), (2, 16),          -- Gladiator: Russell Crowe, Joaquin Phoenix
(3, 10), (3, 11),          -- Big Bang Theory: Jim Parsons, Kaley Cuoco
(4, 4), (4, 5), (4, 6), -- Friends: Aniston, Perry, Cox
(5, 9), (5, 17), (5, 18), -- Breaking Bad: Cranston, Paul, Gunn
(6, 3),                -- Inception: DiCaprio
(7, 23), (7, 24),          -- The Matrix: Keanu Reeves, Carrie-Anne Moss

(8, 1), (8, 25),        -- Forrest Gump: Tom Hanks, Robin Wright
(9, 19), (9, 20),        -- Money Heist: Álvaro Morte, Úrsula Corberó
(10, 21),(10, 8), (10, 22), -- Dune: Timothée Chalamet, Zendaya, Rebecca Ferguson
(17, 7),              -- The Mandalorian: Pedro Pascal
(21, 26), (21, 27),        -- The Green Mile: Morgan Freeman, Tim Robbins
(22, 28), (22, 29),        -- The Godfather: Marlon Brando, Al Pacino
(23, 30), (23, 31),        -- Inglourious Basterds: (using Christian Bale, Heath Ledger)
(24, 32),              -- Schindler's List: Liam Neeson
(25, 33), (25, 34),        -- Fight Club: (John Travolta, Samuel L. Jackson as stand-ins)
(26, 35),              -- The Witcher: Henry Cavill
(27, 36),              -- Wednesday: Jenna Ortega
(28, 37),              -- Squid Game: Lee Jung-jae
(29, 38),              -- Avatar 2: Sam Worthington
(30, 39),              -- Top Gun: Maverick: Tom Cruise
(31, 40),              -- Everything Everywhere: Michelle Yeoh
(32, 41),              -- The Batman: Robert Pattinson
(33, 42),              -- Spider-Man: Tom Holland
(34, 43),              -- The Last of Us: Oscar Isaac (id 43 updated)
(37, 44),              -- Parasite: Song Kang-ho
(38, 16),              -- Joker: Joaquin Phoenix
(39, 45),              -- Avengers: Endgame: Robert Downey Jr.
(40, 46),              -- The Queen's Gambit: Anya Taylor-Joy
(41, 47),(41, 48);     -- Barbie: Margot Robbie, Ryan Gosling

-- SUBSCRIPTION (30 subscriptions)
INSERT INTO subscription (subscription_id, subscriber_id, plan_id, start_date, end_date,
sstatus_id) VALUES
(1, 1, 3, '2023-01-15', NULL, 2),
(2, 2, 2, '2023-02-20', NULL, 2),
(3, 3, 1, '2023-03-10', NULL, 2),
(4, 4, 3, '2023-04-05', NULL, 2),
(5, 5, 2, '2023-05-12', NULL, 2),
(6, 6, 3, '2023-06-18', NULL, 2),
(7, 7, 1, '2023-07-22', NULL, 2),
(8, 8, 3, '2023-08-30', NULL, 2),
(9, 9, 2, '2023-09-14', NULL, 2),
(10, 10, 3, '2023-10-25', NULL, 2),
(11, 11, 3, '2024-01-10', NULL, 2),
(12, 12, 2, '2024-02-15', NULL, 2),
(13, 13, 1, '2024-03-20', NULL, 2),
(14, 14, 3, '2024-04-12', NULL, 2),
(15, 15, 2, '2024-05-08', NULL, 2),
(16, 16, 3, '2024-06-15', NULL, 2),
(17, 17, 2, '2024-07-20', NULL, 2),
(18, 18, 3, '2024-08-05', NULL, 2),
(19, 19, 1, '2024-08-18', NULL, 2),
(20, 20, 2, '2024-09-10', NULL, 2),
(21, 21, 3, '2024-09-25', NULL, 2),

(22, 22, 2, '2024-10-01', NULL, 2),
(23, 23, 1, '2024-10-12', NULL, 2),
(24, 24, 3, '2024-10-20', NULL, 2),
(25, 25, 2, '2024-10-28', NULL, 2),
(26, 26, 3, '2024-11-01', NULL, 2),
(27, 27, 1, '2024-11-08', NULL, 2),
(28, 28, 2, '2024-11-15', NULL, 2),
(29, 29, 3, '2024-11-20', NULL, 2),
(30, 30, 2, '2024-11-25', NULL, 2);

-- PAYMENT (77 payments covering last 12 months)
INSERT INTO payment (payment_id, subscription_id, payment_method_id, pstatus_id,
amount, payment_date) VALUES
-- January 2024
(1, 1, 1, 1, 17.99, '2024-01-15'),
(2, 2, 2, 1, 13.99, '2024-01-20'),
(3, 3, 3, 1, 9.99, '2024-01-10'),
(4, 11, 4, 1, 17.99, '2024-01-10'),
-- February 2024
(5, 1, 1, 1, 17.99, '2024-02-15'),
(6, 2, 2, 1, 13.99, '2024-02-20'),
(7, 3, 3, 1, 9.99, '2024-02-10'),
(8, 11, 5, 1, 17.99, '2024-02-10'),
(9, 12, 6, 1, 13.99, '2024-02-15'),
-- March 2024
(10, 1, 1, 1, 17.99, '2024-03-15'),
(11, 2, 7, 1, 13.99, '2024-03-20'),
(12, 11, 8, 1, 17.99, '2024-03-10'),
(13, 12, 9, 1, 13.99, '2024-03-15'),
(14, 13, 3, 1, 9.99, '2024-03-20'),
-- April 2024
(15, 1, 6, 1, 17.99, '2024-04-15'),
(16, 2, 2, 1, 13.99, '2024-04-20'),
(17, 11, 4, 1, 17.99, '2024-04-10'),
(18, 12, 5, 1, 13.99, '2024-04-15'),
(19, 13, 3, 1, 9.99, '2024-04-20'),
(20, 14, 1, 1, 17.99, '2024-04-12'),
-- May 2024
(21, 1, 9, 1, 17.99, '2024-05-15'),
(22, 11, 4, 1, 17.99, '2024-05-10'),
(23, 12, 7, 1, 13.99, '2024-05-15'),
(24, 14, 8, 1, 17.99, '2024-05-12'),
(25, 15, 2, 1, 13.99, '2024-05-08'),
-- June 2024
(26, 1, 1, 1, 17.99, '2024-06-15'),
(27, 11, 5, 1, 17.99, '2024-06-10'),
(28, 14, 6, 1, 17.99, '2024-06-12'),
(29, 15, 2, 1, 13.99, '2024-06-08'),

(30, 16, 3, 1, 17.99, '2024-06-15'),
-- July 2024
(31, 1, 4, 1, 17.99, '2024-07-15'),
(32, 11, 8, 1, 17.99, '2024-07-10'),
(33, 14, 1, 1, 17.99, '2024-07-12'),
(34, 15, 7, 1, 13.99, '2024-07-08'),
(35, 16, 9, 1, 17.99, '2024-07-15'),
(36, 17, 2, 1, 13.99, '2024-07-20'),
-- August 2024
(37, 1, 6, 1, 17.99, '2024-08-15'),
(38, 11, 3, 1, 17.99, '2024-08-10'),
(39, 14, 4, 1, 17.99, '2024-08-12'),
(40, 16, 5, 1, 17.99, '2024-08-15'),
(41, 17, 2, 1, 13.99, '2024-08-20'),
(42, 18, 8, 1, 17.99, '2024-08-05'),
(43, 19, 3, 1, 9.99, '2024-08-18'),
-- September 2024
(44, 1, 1, 1, 17.99, '2024-09-15'),
(45, 11, 9, 1, 17.99, '2024-09-10'),
(46, 14, 6, 1, 17.99, '2024-09-12'),
(47, 16, 4, 1, 17.99, '2024-09-15'),
(48, 18, 7, 1, 17.99, '2024-09-05'),
(49, 19, 3, 1, 9.99, '2024-09-18'),
(50, 20, 2, 1, 13.99, '2024-09-10'),
(51, 21, 5, 1, 17.99, '2024-09-25'),
-- October 2024
(52, 1, 8, 1, 17.99, '2024-10-15'),
(53, 11, 1, 1, 17.99, '2024-10-10'),
(54, 14, 9, 1, 17.99, '2024-10-12'),
(55, 16, 3, 1, 17.99, '2024-10-15'),
(56, 18, 4, 1, 17.99, '2024-10-05'),
(57, 20, 7, 1, 13.99, '2024-10-10'),
(58, 21, 6, 1, 17.99, '2024-10-25'),
(59, 22, 2, 1, 13.99, '2024-10-01'),
(60, 23, 5, 1, 9.99, '2024-10-12'),
(61, 24, 1, 1, 17.99, '2024-10-20'),
(62, 25, 2, 1, 13.99, '2024-10-28'),
-- November 2024
(63, 1, 9, 1, 17.99, '2024-11-15'),
(64, 11, 4, 1, 17.99, '2024-11-10'),
(65, 14, 8, 1, 17.99, '2024-11-12'),
(66, 16, 5, 1, 17.99, '2024-11-15'),
(67, 18, 1, 1, 17.99, '2024-11-05'),
(68, 21, 6, 1, 17.99, '2024-11-25'),
(69, 22, 3, 1, 13.99, '2024-11-01'),
(70, 23, 7, 1, 9.99, '2024-11-12'),
(71, 24, 9, 1, 17.99, '2024-11-20'),
(72, 25, 2, 1, 13.99, '2024-11-28'),

(73, 26, 1, 1, 17.99, '2024-11-01'),
(74, 27, 3, 1, 9.99, '2024-11-08'),
(75, 28, 4, 1, 13.99, '2024-11-15'),
(76, 29, 8, 1, 17.99, '2024-11-20'),
(77, 30, 5, 1, 13.99, '2024-11-25');




-- VIEWING (220 viewing records with likes and language preferences)
INSERT INTO viewing (viewing_id, subscriber_id, content_id, audio_language_id,
view_date, minutes_watched, liked_flag) VALUES
-- LOTR - Most liked (10 likes)
(1, 1, 1, 1, '2024-11-25', 178, 1),
(2, 2, 1, 2, '2024-11-26', 178, 1),
(3, 3, 1, 3, '2024-11-27', 178, 1),
(4, 4, 1, 4, '2024-11-28', 178, 1),
(5, 5, 1, 1, '2024-11-29', 178, 1),
(6, 11, 1, 1, '2024-11-30', 178, 1),
(7, 15, 1, 1, '2024-12-01', 178, 1),
(8, 21, 1, 1, '2024-12-02', 178, 1),
(9, 26, 1, 1, '2024-12-03', 178, 1),
(10, 10, 1, 1, '2024-12-03', 160, 1),
-- Inception - Second most liked (9 likes)
(11, 1, 6, 1, '2024-11-20', 148, 1),
(12, 3, 6, 3, '2024-11-21', 148, 1),
(13, 4, 6, 4, '2024-11-22', 148, 1),
(14, 11, 6, 1, '2024-11-23', 148, 1),
(15, 15, 6, 1, '2024-11-24', 148, 1),
(16, 18, 6, 1, '2024-11-25', 148, 1),
(17, 21, 6, 1, '2024-11-26', 148, 1),
(18, 24, 6, 4, '2024-11-27', 148, 1),
(19, 26, 6, 1, '2024-11-28', 148, 1),
-- Breaking Bad - Third most liked (8 likes)
(20, 1, 5, 1, '2024-11-15', 47, 1),
(21, 5, 5, 1, '2024-11-16', 47, 1),
(22, 11, 5, 1, '2024-11-17', 47, 1),
(23, 15, 5, 1, '2024-11-18', 47, 1),
(24, 18, 5, 1, '2024-11-19', 47, 1),
(25, 21, 5, 1, '2024-11-20', 47, 1),
(26, 24, 5, 4, '2024-11-21', 47, 1),
(27, 26, 5, 1, '2024-11-22', 47, 1),
-- Friends - Fourth most liked (7 likes)
(28, 1, 4, 1, '2024-11-10', 22, 1),
(29, 5, 4, 1, '2024-11-11', 22, 1),
(30, 10, 4, 1, '2024-11-12', 22, 1),
(31, 15, 4, 1, '2024-11-13', 22, 1),
(32, 18, 4, 1, '2024-11-14', 22, 1),
(33, 21, 4, 1, '2024-11-15', 22, 1),

(34, 26, 4, 1, '2024-11-16', 22, 1),
-- Dune - Fifth (6 likes)
(35, 1, 10, 1, '2024-11-05', 155, 1),
(36, 11, 10, 1, '2024-11-06', 155, 1),
(37, 15, 10, 1, '2024-11-07', 155, 1),
(38, 18, 10, 1, '2024-11-08', 155, 1),
(39, 21, 10, 1, '2024-11-09', 155, 1),
(40, 24, 10, 4, '2024-11-10', 155, 1),
-- Matrix - Sixth (5 likes)
(41, 1, 7, 1, '2024-10-28', 136, 1),
(42, 11, 7, 1, '2024-10-29', 136, 1),
(43, 15, 7, 1, '2024-10-30', 136, 1),
(44, 18, 7, 1, '2024-10-31', 136, 1),
(45, 21, 7, 1, '2024-11-01', 136, 1),
-- Forrest Gump - Seventh (4 likes)
(46, 1, 8, 1, '2024-10-20', 142, 1),
(47, 5, 8, 1, '2024-10-21', 142, 1),
(48, 11, 8, 1, '2024-10-22', 142, 1),
(49, 15, 8, 1, '2024-10-23', 142, 1),
-- Stranger Things - Eighth (4 likes)
(50, 11, 11, 1, '2024-10-15', 51, 1),
(51, 15, 11, 1, '2024-10-16', 51, 1),
(52, 18, 11, 1, '2024-10-17', 51, 1),
(53, 21, 11, 1, '2024-10-18', 51, 1),
-- Money Heist - Ninth (3 likes)
(54, 2, 9, 2, '2024-10-10', 70, 1),
(55, 9, 9, 2, '2024-10-11', 70, 1),
(56, 17, 9, 2, '2024-10-12', 70, 1),
-- Oppenheimer - Tenth (3 likes)
(57, 1, 20, 1, '2024-12-01', 180, 1),
(58, 11, 20, 1, '2024-12-02', 180, 1),
(59, 15, 20, 1, '2024-12-03', 180, 1),
-- Views in preferred language
(60, 1, 4, 1, '2024-11-28', 22, 0),
(61, 2, 9, 2, '2024-11-28', 70, 0),
(62, 3, 12, 3, '2024-11-28', 58, 0),
(63, 4, 1, 4, '2024-11-28', 178, 0),
(64, 5, 4, 1, '2024-11-28', 22, 0),
(65, 9, 9, 2, '2024-11-28', 70, 0),
(66, 10, 4, 1, '2024-11-28', 22, 0),
(67, 12, 12, 3, '2024-11-28', 58, 0),
(68, 16, 8, 8, '2024-11-28', 142, 0),
-- Views in different language
(69, 6, 1, 1, '2024-11-28', 178, 0),
(70, 7, 1, 1, '2024-11-28', 178, 0),
(71, 8, 5, 1, '2024-11-28', 47, 0),
(72, 13, 6, 1, '2024-11-28', 148, 0),
(73, 19, 1, 1, '2024-11-28', 178, 0),

(74, 20, 5, 1, '2024-11-28', 47, 0),
(75, 14, 1, 4, '2024-11-29', 178, 0),
(76, 22, 6, 3, '2024-11-29', 148, 0),
(77, 23, 8, 1, '2024-11-29', 142, 0),
(78, 25, 9, 2, '2024-11-29', 70, 0),
(79, 28, 9, 2, '2024-11-29', 70, 0),
(80, 29, 1, 1, '2024-11-29', 178, 0),
-- Spider-Man: No Way Home - NEW #1 Most Trending (15 likes)
(81, 1, 33, 1, '2024-12-01', 148, 1),
(82, 2, 33, 2, '2024-12-01', 148, 1),
(83, 3, 33, 3, '2024-12-01', 148, 1),
(84, 4, 33, 4, '2024-12-01', 148, 1),
(85, 5, 33, 1, '2024-12-02', 148, 1),
(86, 11, 33, 1, '2024-12-02', 148, 1),
(87, 15, 33, 1, '2024-12-02', 148, 1),
(88, 18, 33, 1, '2024-12-02', 148, 1),
(89, 21, 33, 1, '2024-12-03', 148, 1),
(90, 24, 33, 4, '2024-12-03', 148, 1),
(91, 26, 33, 1, '2024-12-03', 148, 1),
(92, 10, 33, 1, '2024-12-03', 148, 1),
(93, 14, 33, 4, '2024-12-04', 148, 1),
(94, 16, 33, 1, '2024-12-04', 148, 1),
(95, 22, 33, 3, '2024-12-04', 148, 1),
-- Avatar: The Way of Water - NEW #2 (13 likes)
(96, 1, 29, 1, '2024-11-28', 192, 1),
(97, 5, 29, 1, '2024-11-28', 192, 1),
(98, 11, 29, 1, '2024-11-29', 192, 1),
(99, 15, 29, 1, '2024-11-29', 192, 1),
(100,18, 29, 1, '2024-11-30', 192, 1),
(101,21, 29, 1, '2024-11-30', 192, 1),
(102,24, 29, 4, '2024-12-01', 192, 1),
(103,26, 29, 1, '2024-12-01', 192, 1),
(104,10, 29, 1, '2024-12-02', 192, 1),
(105,14, 29, 4, '2024-12-02', 192, 1),
(106,16, 29, 1, '2024-12-03', 192, 1),
(107,22, 29, 3, '2024-12-03', 192, 1),
(108,25, 29, 2, '2024-12-04', 192, 1),
-- The Last of Us - NEW #3 (12 likes)
(109,1, 34, 1, '2024-11-25', 60, 1),
(110,5, 34, 1, '2024-11-26', 60, 1),
(111,11,34, 1, '2024-11-27', 60, 1),
(112,15,34, 1, '2024-11-28', 60, 1),
(113,18,34, 1, '2024-11-29', 60, 1),
(114,21,34, 1, '2024-11-30', 60, 1),
(115,24,34, 4, '2024-12-01', 60, 1),
(116,26,34, 1, '2024-12-02', 60, 1),
(117,10,34, 1, '2024-12-03', 60, 1),
(118,14,34, 4, '2024-12-03', 60, 1),

(119,16,34, 1, '2024-12-04', 60, 1),
(120,22,34, 3, '2024-12-04', 60, 1),
-- Wednesday - NEW #4 (11 likes)
(121,1, 27, 1, '2024-11-22', 50, 1),
(122,5, 27, 1, '2024-11-23', 50, 1),
(123,11,27, 1, '2024-11-24', 50, 1),
(124,15,27, 1, '2024-11-25', 50, 1),
(125,18,27, 1, '2024-11-26', 50, 1),
(126,21,27, 1, '2024-11-27', 50, 1),
(127,24,27, 4, '2024-11-28', 50, 1),
(128,26,27, 1, '2024-11-29', 50, 1),
(129,10,27, 1, '2024-11-30', 50, 1),
(130,14,27, 4, '2024-12-01', 50, 1),
(131,16,27, 1, '2024-12-02', 50, 1),
-- Top Gun: Maverick - NEW #7 (11 likes)
(132,1, 30, 1, '2024-11-18', 131, 1),
(133,5, 30, 1, '2024-11-19', 131, 1),
(134,11,30, 1, '2024-11-20', 131, 1),
(135,15,30, 1, '2024-11-21', 131, 1),
(136,18,30, 1, '2024-11-22', 131, 1),
(137,21,30, 1, '2024-11-23', 131, 1),
(138,24,30, 4, '2024-11-24', 131, 1),
(139,26,30, 1, '2024-11-25', 131, 1),
(140,10,30, 1, '2024-11-26', 131, 1),
(141,14,30, 4, '2024-11-27', 131, 1),
(142,16,30, 1, '2024-11-28', 131, 1),
-- The Batman - NEW #9 (10 likes)
(143,1, 32, 1, '2024-11-15', 176, 1),
(144,5, 32, 1, '2024-11-16', 176, 1),
(145,11,32, 1, '2024-11-17', 176, 1),
(146,15,32, 1, '2024-11-18', 176, 1),
(147,18,32, 1, '2024-11-19', 176, 1),
(148,21,32, 1, '2024-11-20', 176, 1),
(149,24,32, 4, '2024-11-21', 176, 1),
(150,26,32, 1, '2024-11-22', 176, 1),
(151,10,32, 1, '2024-11-23', 176, 1),
(152,14,32, 4, '2024-11-24', 176, 1),
-- The Witcher - NEW #10 (9 likes)
(153,1, 26, 1, '2024-11-12', 60, 1),
(154,5, 26, 1, '2024-11-13', 60, 1),
(155,11,26, 1, '2024-11-14', 60, 1),
(156,15,26, 1, '2024-11-15', 60, 1),
(157,18,26, 1, '2024-11-16', 60, 1),
(158,21,26, 1, '2024-11-17', 60, 1),
(159,24,26, 4, '2024-11-18', 60, 1),
(160,26,26, 1, '2024-11-19', 60, 1),
(161,10,26, 1, '2024-11-20', 60, 1),
-- Squid Game (9 likes)

(162,2, 28, 7, '2024-11-10', 60, 1),
(163,8, 28, 7, '2024-11-11', 60, 1),
(164,9, 28, 2, '2024-11-12', 60, 1),
(165,17,28, 2, '2024-11-13', 60, 1),
(166,25,28, 2, '2024-11-14', 60, 1),
(167,28,28, 2, '2024-11-15', 60, 1),
(168,5, 28, 1, '2024-11-16', 60, 1),
(169,11,28, 1, '2024-11-17', 60, 1),
(170,15,28, 1, '2024-11-18', 60, 1),
-- Everything Everywhere All at Once (8 likes)
(171,1, 31, 1, '2024-11-08', 139, 1),
(172,11,31, 1, '2024-11-09', 139, 1),
(173,15,31, 1, '2024-11-10', 139, 1),
(174,18,31, 1, '2024-11-11', 139, 1),
(175,21,31, 1, '2024-11-12', 139, 1),
(176,24,31, 4, '2024-11-13', 139, 1),
(177,26,31, 1, '2024-11-14', 139, 1),
(178,10,31, 1, '2024-11-15', 139, 1),
-- Parasite (7 likes)
(179,2, 37, 7, '2024-11-05', 132, 1),
(180,8, 37, 7, '2024-11-06', 132, 1),
(181,9, 37, 2, '2024-11-07', 132, 1),
(182,17,37, 2, '2024-11-08', 132, 1),
(183,25,37, 2, '2024-11-09', 132, 1),
(184,5, 37, 1, '2024-11-10', 132, 1),
(185,11,37, 1, '2024-11-11', 132, 1),
-- The Queen's Gambit (6 likes)
(186,1, 40, 1, '2024-11-01', 60, 1),
(187,5, 40, 1, '2024-11-02', 60, 1),
(188,11,40, 1, '2024-11-03', 60, 1),
(189,15,40, 1, '2024-11-04', 60, 1),
(190,18,40, 1, '2024-11-05', 60, 1),
(191,21,40, 1, '2024-11-06', 60, 1),

-- Additional non-liked viewing for language analysis
(192,6, 29, 5, '2024-11-28', 192, 0),
(193,7, 33, 1, '2024-12-01', 148, 0),
(194,13,30, 1, '2024-11-20', 131, 0),
(195,19,34, 1, '2024-11-28', 60, 0),
(196,20,32, 1, '2024-11-18', 176, 0),
(197,27,28, 1, '2024-11-12', 60, 0),
(198,12,27, 3, '2024-11-25', 50, 0),
(199,23,31, 1, '2024-11-10', 139, 0),
(200,29,26, 1, '2024-11-15', 60, 0),
-- Barbie likes spread throughout the entire period (14 likes)
(201, 1, 41, 1, '2024-11-04', 114, 1),
(202, 5, 41, 1, '2024-11-08', 114, 1),
(203,10, 41, 1, '2024-11-12', 114, 1),

(204,11, 41, 1, '2024-11-15', 114, 1),
(205,15, 41, 1, '2024-11-18', 114, 1),
(206,18, 41, 1, '2024-11-21', 114, 1),
(207,21, 41, 1, '2024-11-23', 114, 1),
(208,24, 41, 4, '2024-11-25', 114, 1),
(209,26, 41, 1, '2024-11-27', 114, 1),
(210,14, 41, 4, '2024-11-29', 114, 1),
(211,16, 41, 1, '2024-12-01', 114, 1),
(212,22, 41, 3, '2024-12-02', 114, 1),
(213,25, 41, 2, '2024-12-03', 114, 1),
(214,29, 41, 1, '2024-12-04', 114, 1),
(215,6, 41, 5, '2024-11-10', 114, 0),
(216,7, 41, 1, '2024-11-16', 114, 0),
(217,13, 41, 5, '2024-11-22', 114, 0),
(218,19, 41, 1, '2024-11-28', 114, 0),
(219,23, 41, 5, '2024-12-02', 114, 0),
(220,12, 41, 3, '2024-12-03', 114, 0);
