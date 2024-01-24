-- creating table of continents
CREATE TABLE continents (
    continent_code varchar(20) PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

-- creating table of countries
CREATE TABLE countries (
    country_code varchar(20) PRIMARY KEY,
    continent_code varchar(20),
    name VARCHAR(255) NOT NULL,
    capital VARCHAR(255),
    FOREIGN KEY (continent_code) REFERENCES continents(continent_code)
);
-- creating table of states
CREATE TABLE states (
    state_id varchar(20) PRIMARY KEY,
    country_code varchar(20),
    name VARCHAR(255) NOT NULL,
    FOREIGN KEY (country_code) REFERENCES countries(country_code)
);

-- creating table of cities
CREATE TABLE cities (
    city_id varchar(20) PRIMARY KEY,
    state_id varchar(20),
    name VARCHAR(255) NOT NULL,
    FOREIGN KEY (state_id) REFERENCES states(state_id)
);