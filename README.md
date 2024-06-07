# World-Locations-API

Welcome to the World-Locations-API! This API provides information about continents, countries, states, and cities around the world. It is built using Node.js, Express, and PostgreSQL.

## Table of Contents
- [Getting Started](#getting-started)
- [Setting Up the Database](#setting-up-the-database)
  - [Creating the Database](#creating-the-database)
  - [Executing `data.sql`](#executing-datasql)
- [Endpoints](#endpoints)
  - [Get All Locations](#getall)
  - [Get Continents](#getcontinents)
  - [Get Countries by Continent](#getcontinentidcountries)
  - [Get Country by Code](#getcountryid)
  - [Get Country Capital](#getcountrycapital)
  - [Get States by Country](#getcountryidstates)
  - [Get Cities by State](#getstateidcities)
  - [Get Locations starting with](#startswith)
  - [Get Locations ending with](#endswith)
  - [Get Locations containing](#contains)
  - [Validate Location](#postlocation)

## Getting Started
Follow these instructions to set up and run the WorldData API on your local machine.

1. Clone the repository:
   ```bash
   git clone https://github.com/TarushGupta23/World-Locations-API
   cd World-Locations-API
   ```

2. Install dependencies:
   ```bash
   npm install
   ```

4. Run the API:
   ```bash
   node index.js
   ```

The API will be running at `http://localhost:3080`. You can now make requests to the various endpoints.

## Setting Up the Database
Follow these steps to set up the PostgreSQL database for the WorldData API.

### Creating the Database
1. Open pgAdmin and connect to your PostgreSQL server.

2. Create a new database named `WorldData`.

3. Update the `index.js` file with your PG-Admin password.

### Executing `data.sql` <a name="executing-datasql"></a>
The `data.sql` file contains SQL commands to populate the database with initial data.

1. In pgAdmin, open a query tool for the `WorldData` database.

2. Copy the contents of the `data.sql` file and paste them into the query tool.

3. Execute the script to create tables and insert initial data.

   **Note:** Ensure that the `pg_password` in the `index.js` file matches your PG-Admin password.

The database is now set up with initial data.

## Endpoints

### Get All Locations <a name="getall"></a>
- **Endpoint**: `/all`
- **Method**: `GET`
- **Description**: Get a list of all locations, including continents, countries, states, and cities.
   - **Example Response**:
     ```json
      [{"continent_code":"AS","name":"Asia","countries":[{"country_code":"IN","continent_code":"AS","name":"India","capital":"New Delhi","states":[{"state_id":"UP","country_code":"IN","name":"Uttar Pradesh","cities":[{"city_id":"LUK","state_id":"UP","name":"Lucknow"}]}]}]},{"continent_code":"EU","name":"Europe","countries":[{"country_code":"FR","continent_code":"EU","name":"France","capital":"Paris","states":[{"state_id":"IDF","country_code":"FR","name":"Île-de-France","cities":[{"city_id":"PAR","state_id":"IDF","name":"Paris"}]}]}]},{"continent_code":"NA","name":"North America","countries":[{"country_code":"US","continent_code":"NA","name":"United States","capital":"Washington, D.C.","states":[{"state_id":"CA","country_code":"US","name":"California","cities":[{"city_id":"SFO","state_id":"CA","name":"San Francisco"}]}]}]},{"continent_code":"SA","name":"South America","countries":[{"country_code":"BR","continent_code":"SA","name":"Brazil","capital":"Brasília","states":[{"state_id":"SP","country_code":"BR","name":"São Paulo","cities":[{"city_id":"SAO","state_id":"SP","name":"São Paulo"}]}]}]}]
     ```

### Get Continents <a name="getcontinents"></a>
- **Endpoint**: `/continents`
- **Method**: `GET`
- **Description**: Get a list of all continents.
   - **Example Response**:
     ```json
     [{"continent_code":"AS","name":"Asia"},{"continent_code":"EU","name":"Europe"},{"continent_code":"NA","name":"North America"},{"continent_code":"SA","name":"South America"}]
     ```

### Get Countries by Continent <a name="getcontinentidcountries"></a>
- **Endpoint**: `/continent/:id/countries`
- **Method**: `GET`
- **Description**: Get all countries on a specific continent. Replace `:id` with the continent code.
   - **Example Response**:
     ```json
     [
       {
         "country_code": "IN",
         "continent_code": "AS",
         "name": "India",
         "capital": "New Delhi"
       }
     ]
     ```

### Get Country by Code <a name="getcountryid"></a>
- **Endpoint**: `/country/:id`
- **Method**: `GET`
- **Description**: Get details of a country by its country code. Replace `:id` with the country code.
   - **Example Response**:
     ```json
     {
       "country_code": "IN",
       "continent_code": "AS",
       "name": "India",
       "capital": "New Delhi"
     }
     ```

### Get Capital of a Country <a name="getcountrycapital"></a>
- **Endpoint**: `/country/:id/capital`
- **Method**: `GET`
- **Description**: Get capital city of a country by its country code. Replace `:id` with country code
   - **Example Response**:
     ```json
     {
       "capital": "New Delhi"
     }
     ```

### Get States by Country <a name="getcountryidstates"></a>
- **Endpoint**: `/country/:id/states`
- **Method**: `GET`
- **Description**: Get states inside a specific country. Replace `:id` with the country code.
   - **Example Response**:
     ```json
     [
       {
         "state_id": "UP",
         "country_code": "IN",
         "name": "Uttar Pradesh"
       }
     ]
     ```

### Get Cities by State <a name="getstateidcities"></a>
- **Endpoint**: `/state/:id/cities`
- **Method**: `GET`
- **Description**: Get cities inside a specific state. Replace `:id` with the state ID.
   - **Example Response**:
     ```json
     [
      {
        "city_id": "LUK",
        "state_id": "UP",
        "name": "Lucknow"
      }
     ]
     ```

### Get Locations Starting with <a name="startswith"></a>
- **Endpoint**: `/starts-with/:char`
- **Method**: `GET`
- **Description**: Get all locations which starts with given character sequence. replace `:char` with character sequence, use **_** to simply get list of all locations' name

### Get Locations Ending with <a name="endswith"></a>
- **Endpoint**: `/ends-with/:char`
- **Method**: `GET`
- **Description**: Get all locations which ends with given character sequence. replace `:char` with character sequence, use **_** to simply get list of all locations' name

### Get Locations Containing <a name="contains"></a>
- **Endpoint**: `/contains/:char`
- **Method**: `GET`
- **Description**: Get all locations which contains given character sequence. replace `:char` with character sequence, use **_** to simply get list of all locations' name

### Validate Location <a name="postlocation"></a>
- **Endpoint**: `/location/:loc`
- **Method**: `POST`
- **Description**: Validate a location by providing the location name in the request body. Returns the location ID and type (continent, country, state, or city).

   - **Example Response**:
     ```json
     {
       "id": "IN",
       "type": "country"
     }
     ```
     

Feel free to explore and integrate the WorldData API into your applications! If you have any questions or issues, please open an [issue](https://github.com/TarushGupta23/World-Locations-API/issues)
