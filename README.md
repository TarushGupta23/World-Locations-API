# World-Locations-API

Welcome to the World-Locations-API! This API provides information about continents, countries, states, and cities around the world. It is built using Node.js, Express, and PostgreSQL.

## Table of Contents
- [Getting Started](#getting-started)
- [Setting Up the Database](#setting-up-the-database)
  - [Creating the Database](#creating-the-database)
  - [Executing `data.sql`](#executing-data.sql)
- [Endpoints](#endpoints)
  - [Get All Locations](#getall)
  - [Get Continents](#getcontinents)
  - [Get Countries by Continent](#getcontinentidcountries)
  - [Get Country by Code](#getcountryid)
  - [Get States by Country](#getcountryidstates)
  - [Get Cities by State](#getstateidcities)
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

### Executing `data.sql`
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

### Get Continents <a name="getcontinents"></a>
- **Endpoint**: `/continents`
- **Method**: `GET`
- **Description**: Get a list of all continents.

### Get Countries by Continent <a name="getcontinentidcountries"></a>
- **Endpoint**: `/continent/:id/countries`
- **Method**: `GET`
- **Description**: Get all countries on a specific continent. Replace `:id` with the continent code.

### Get Country by Code <a name="getcountryid"></a>
- **Endpoint**: `/country/:id`
- **Method**: `GET`
- **Description**: Get details of a country by its country code. Replace `:id` with the country code.

### Get States by Country <a name="getcountryidstates"></a>
- **Endpoint**: `/country/:id/states`
- **Method**: `GET`
- **Description**: Get states inside a specific country. Replace `:id` with the country code.

### Get Cities by State <a name="getstateidcities"></a>
- **Endpoint**: `/state/:id/cities`
- **Method**: `GET`
- **Description**: Get cities inside a specific state. Replace `:id` with the state ID.

### Validate Location <a name="postlocation"></a>
- **Endpoint**: `/location`
- **Method**: `POST`
- **Description**: Validate a location by providing the location name in the request body. Returns the location ID and type (continent, country, state, or city).

   - **Request Body**:
     ```json
     {
       "location": "India"
     }
     ```

   - **Example Response**:
     ```json
     {
       "id": "IN",
       "type": "country"
     }
     ```

Feel free to explore and integrate the WorldData API into your applications! If you have any questions or issues, please open an [issue](https://github.com/TarushGupta23/World-Locations-API/issues)