-- Transcribed from the original report; see docs/project-notes.md.
-- Run once in a new, empty MySQL database.

CREATE TABLE country (
   country_id INT AUTO_INCREMENT PRIMARY KEY,
   country_name VARCHAR(100) NOT NULL,
   iso_code CHAR(2),
   region    VARCHAR(100),
   CONSTRAINT uq_country_name UNIQUE (country_name),
   CONSTRAINT uq_country_iso UNIQUE (iso_code)
);

CREATE TABLE language (
   language_id INT AUTO_INCREMENT PRIMARY KEY,
   language_name VARCHAR(100) NOT NULL,
   iso_code   CHAR(2),
   CONSTRAINT uq_language_name UNIQUE (language_name),
   CONSTRAINT uq_language_iso UNIQUE (iso_code)
);

CREATE TABLE genre (
   genre_id INT AUTO_INCREMENT PRIMARY KEY,
   genre_name VARCHAR(50) NOT NULL,
   CONSTRAINT uq_genre_name UNIQUE (genre_name)
);

CREATE TABLE actor (
   actor_id INT AUTO_INCREMENT PRIMARY KEY,
   full_name VARCHAR(100) NOT NULL,
   birthdate DATE,
   nationality VARCHAR(100),
   -- Avoid exact duplicates of the same person
   CONSTRAINT uq_actor_name_birth UNIQUE (full_name, birthdate)
);

CREATE TABLE content (
  content_id INT AUTO_INCREMENT PRIMARY KEY,

     title      VARCHAR(200) NOT NULL,
     content_type VARCHAR(50) NOT NULL, -- e.g. 'Movie', 'TV Show'
     release_date DATE,
     duration_minutes INT,
     -- Avoid exact duplicates of the same title + release date
     CONSTRAINT uq_content_title_release UNIQUE (title, release_date)
);

CREATE TABLE subscription_plan (
   plan_id    INT AUTO_INCREMENT PRIMARY KEY,
   plan_name VARCHAR(100) NOT NULL,      -- e.g. 'Basic', 'Standard', 'Premium'
   monthly_price DECIMAL(10,2) NOT NULL,
   max_devices INT NOT NULL,
   CONSTRAINT uq_plan_name UNIQUE (plan_name)
);

-- Lookup for payment method type (instead of ENUM)
CREATE TABLE payment_method_type (
   method_type_id TINYINT AUTO_INCREMENT PRIMARY KEY,
   description VARCHAR(30) NOT NULL -- e.g. 'CREDIT_CARD', 'DEBIT_CARD', 'DIGITAL_WALLET'
);

-- Lookup for subscription status
CREATE TABLE subscription_status (
   sstatus_id TINYINT AUTO_INCREMENT PRIMARY KEY,
       description VARCHAR(20) NOT NULL -- 'TRIAL', 'ACTIVE', 'PAUSED', 'CANCELLED'
);

-- Lookup for payment status
CREATE TABLE payment_status (
   pstatus_id TINYINT AUTO_INCREMENT PRIMARY KEY,
    description VARCHAR(20) NOT NULL      -- 'COMPLETED', 'FAILED', 'PENDING'
);
CREATE TABLE payment_method (
   payment_method_id INT AUTO_INCREMENT PRIMARY KEY,
   method_name       VARCHAR(50) NOT NULL, -- e.g. 'Visa Credit'
   provider       VARCHAR(50),     -- e.g. 'Visa'
   method_type_id TINYINT NOT NULL,
   CONSTRAINT fk_pm_method_type
     FOREIGN KEY (method_type_id)
     REFERENCES payment_method_type(method_type_id)
);

-- ENTITIES WITH FKs

CREATE TABLE subscriber (

     subscriber_id     INT AUTO_INCREMENT PRIMARY KEY,
     full_name        VARCHAR(100) NOT NULL,
     email          VARCHAR(100) NOT NULL,
     signup_date       DATE NOT NULL,
     country_id       INT NOT NULL,
     preferred_language_id INT NULL,
     CONSTRAINT uq_subscriber_email UNIQUE (email),
     CONSTRAINT fk_sub_country
        FOREIGN KEY (country_id)
        REFERENCES country(country_id),
     CONSTRAINT fk_sub_pref_lang
        FOREIGN KEY (preferred_language_id)
        REFERENCES language(language_id)
);

-- BRIDGE TABLES (M:N RELATIONSHIPS)

CREATE TABLE content_genre (
   content_id INT NOT NULL,
   genre_id INT NOT NULL,
   PRIMARY KEY (content_id, genre_id),
   CONSTRAINT fk_cg_content
     FOREIGN KEY (content_id) REFERENCES content(content_id),
   CONSTRAINT fk_cg_genre
     FOREIGN KEY (genre_id) REFERENCES genre(genre_id)
);

CREATE TABLE content_actor (
   content_id INT NOT NULL,
   actor_id INT NOT NULL,
   PRIMARY KEY (content_id, actor_id),
   CONSTRAINT fk_ca_content
     FOREIGN KEY (content_id) REFERENCES content(content_id),
   CONSTRAINT fk_ca_actor
     FOREIGN KEY (actor_id) REFERENCES actor(actor_id)
);

CREATE TABLE content_language (
   content_id INT NOT NULL,
   language_id INT NOT NULL,
   is_original_audio TINYINT(1) NOT NULL DEFAULT 0,
   has_subtitles TINYINT(1) NOT NULL DEFAULT 0,
   PRIMARY KEY (content_id, language_id),
   CONSTRAINT fk_cl_content
      FOREIGN KEY (content_id) REFERENCES content(content_id),
   CONSTRAINT fk_cl_language
      FOREIGN KEY (language_id) REFERENCES language(language_id)
);

-- SUBSCRIPTION & BILLING

CREATE TABLE subscription (
   subscription_id     INT AUTO_INCREMENT PRIMARY KEY,
   subscriber_id      INT NOT NULL,
   plan_id         INT NOT NULL,
   start_date       DATE NOT NULL,
   end_date          DATE,
   sstatus_id       TINYINT NOT NULL,
   CONSTRAINT fk_subscr_subscriber
      FOREIGN KEY (subscriber_id)    REFERENCES subscriber(subscriber_id),
   CONSTRAINT fk_subscr_plan
      FOREIGN KEY (plan_id)         REFERENCES subscription_plan(plan_id),
   CONSTRAINT fk_subscr_status
      FOREIGN KEY (sstatus_id) REFERENCES subscription_status(sstatus_id)
);

CREATE TABLE payment (
  payment_id      INT AUTO_INCREMENT PRIMARY KEY,
  subscription_id INT NOT NULL,
  payment_method_id INT NOT NULL,
  pstatus_id     TINYINT NOT NULL,
  amount         DECIMAL(10,2) NOT NULL,
  payment_date     DATE NOT NULL,

     CONSTRAINT fk_pay_subscription
       FOREIGN KEY (subscription_id)
       REFERENCES subscription(subscription_id),

     CONSTRAINT fk_pay_method
       FOREIGN KEY (payment_method_id)
       REFERENCES payment_method(payment_method_id),

     CONSTRAINT fk_pay_status
       FOREIGN KEY (pstatus_id)
       REFERENCES payment_status(pstatus_id)
);

CREATE TABLE viewing (
  viewing_id    INT AUTO_INCREMENT PRIMARY KEY,
  subscriber_id INT NOT NULL,
  content_id    INT NOT NULL,
  audio_language_id INT NULL,
  view_date      DATE NOT NULL,
  minutes_watched INT,
  liked_flag   TINYINT(1) NOT NULL DEFAULT 0,
  CONSTRAINT fk_view_subscriber

       FOREIGN KEY (subscriber_id) REFERENCES subscriber(subscriber_id),
     CONSTRAINT fk_view_content
       FOREIGN KEY (content_id)    REFERENCES content(content_id),
     CONSTRAINT fk_view_language
       FOREIGN KEY (audio_language_id) REFERENCES language(language_id)
);
