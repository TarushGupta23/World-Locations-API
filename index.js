import 'dotenv/config'
import pg from "pg";
import express from "express";
import bodyParser from "body-parser";

const app = express();
const port = 3080;

const pg_username = "postgres";
const pg_password = process.env.PG_PASSWORD; /* REPLACE WITH YOUR PG-ADMIN PASSWORD, eg: password: "testPassword" */
const db_name = "WorldData";
const db_port = "5432"; /* REPLACE WITH YOUR PG-ADMIN PORT (default: 5432) */

const db = new pg.Client({
    user: pg_username,
    host: "localhost",
    database: db_name,
    password: pg_password,
    port: db_port
})
db.connect()

app.use(bodyParser.urlencoded({ extended: true }))

// get/all - list of all locations
app.get("/all", async (req, res) => {
    let allContinents = [];
    const result = await db.query("Select * from continents")
    for (let i = 0; i < result.rows.length; i++) {
        let continent = result.rows[i];

        let allCountries = [];
        const result2 = await db.query(`SELECT * FROM countries WHERE continent_code = '${continent.continent_code}'`)
        for (let j = 0; j < result2.rows.length; j++) {
            let country = result2.rows[j]

            let allStates = []
            const result3 = await db.query(`SELECT * FROM states WHERE country_code = '${country.country_code}'`)
            for (let k = 0; k < result3.rows.length; k++) {
                let state = result3.rows[k]

                const result4 = await db.query(`SELECT * FROM cities WHERE state_id = '${state.state_id}'`);
                state.cities = result4.rows;
                allStates.push(state);
            }
            country.states = allStates;
            allCountries.push(country);
        }
        continent.countries = allCountries;
        allContinents.push(continent);
    }
    res.status(200).json(allContinents);
})

// GET /continents - list of all continents
app.get('/continents', async (req,res)=>{ 
    const result = await db.query("Select * from continents");
    res.status(200).json(result.rows);
})

// GET /continent/{continent_code}/countries - all countries on that continent
app.get("/continent/:id/countries", async (req, res)=> {
    const id = req.params.id;
    const query = `select * from countries where continent_code = '${id}'`;
    const result = await db.query(query);
    res.status(200).json(result.rows);
})

// GET /country/{country_code} - detail of country by code
app.get('/country/:id', async (req, res) =>{
    const id = req.params.id;
    const result = await db.query(`select * from countries where country_code = '${id}'`);
    res.status(200).json(result.rows[0]);
})

// GET /country/{country_code}/capital - get capital of given country
app.get("/country/:id/capital", async (req, res) => {
    const id = req.params.id;
    const result = await db.query(`select * from countries where country_code = '${id}'`);
    res.status(200).json({capital: result.rows[0]["capital"]})
})

// GET /countries/{country_code}/states - states inside that country
app.get("/country/:id/states", async (req, res)=> {
    const id = req.params.id;
    const result = await db.query(`select * from states where country_code = '${id}'`);
    res.status(200).json(result.rows);
})

// GET /state/{state_id}/cities
app.get("/state/:id/cities", async (req, res)=> {
    const id = req.params.id;
    const result = await db.query(`select * from cities where state_id = '${id}'`);
    res.status(200).json(result.rows);
})

// Get all locations which starts with given character sequence
app.get("/starts-with/:char", async (req, res) => {
    const word = req.params.char;
    const prefix = word.charAt(0).toUpperCase() + word.slice(1);
    const result1 = await db.query(`select * from continents where name like '${prefix}%'`);
    const result2 = await db.query(`select * from countries where name like '${prefix}%'`);
    const result3 = await db.query(`select * from states where name like '${prefix}%'`);
    const result4 = await db.query(`select * from cities where name like '${prefix}%'`);
    const results = [...result1.rows.map(obj => obj.name), ...result2.rows.map(obj => obj.name), ...result3.rows.map(obj => obj.name), ...result4.rows.map(obj => obj.name)];
    res.status(200).json(results);
})

// Get all locations which ends with given character sequence
app.get("/ends-with/:char", async (req, res) => {
    const suffix = req.params.char;
    const result1 = await db.query(`select * from continents where name like '%${suffix}'`);
    const result2 = await db.query(`select * from countries where name like '%${suffix}'`);
    const result3 = await db.query(`select * from states where name like '%${suffix}'`);
    const result4 = await db.query(`select * from cities where name like '%${suffix}'`);
    const results = [...result1.rows.map(obj => obj.name), ...result2.rows.map(obj => obj.name), ...result3.rows.map(obj => obj.name), ...result4.rows.map(obj => obj.name)];
    res.status(200).json(results);
})

// Get all locations which contains given character sequence
app.get("/contains/:char", async (req, res) => {
    const infix = req.params.char;
    const result1 = await db.query(`select * from continents where name like '%${infix}%'`);
    const result2 = await db.query(`select * from countries where name like '%${infix}%'`);
    const result3 = await db.query(`select * from states where name like '%${infix}%'`);
    const result4 = await db.query(`select * from cities where name like '%${infix}%'`);
    const results = [...result1.rows.map(obj => obj.name), ...result2.rows.map(obj => obj.name), ...result3.rows.map(obj => obj.name), ...result4.rows.map(obj => obj.name)];
    res.status(200).json(results);
})

// POST /location - validate a location
// body: { "location": "Continent Name" } or { "location": "City Name" }
app.post("/location", async (req, res) => {
    const location = req.body.location;

    const result1 = await db.query(`select * from continents where name = '${location}'`);
    const result2 = await db.query(`select * from countries where name = '${location}'`);
    const result3 = await db.query(`select * from states where name = '${location}'`);
    const result4 = await db.query(`select * from cities where name = '${location}'`);

    let locationId =  null;
    let locationType = null;
    if (result1.rows[0] != undefined) {
        locationId = result1.rows[0].continent_code;
        locationType = 'continent';
    } else if (result2.rows[0] != undefined) {
        locationId = result2.rows[0].country_code;
        locationType = 'country'
    } else if (result3.rows[0] != undefined) {
        locationId = result3.rows[0].state_id;
        locationType = 'state'
    } else if (result4.rows[0] != undefined) {
        locationId = result4.rows[0].city_id;
        locationType = 'city'
    }

    if (locationId == null) {
        res.status(500).json({error: 'location not found'})
    } else {
        res.status(200).json({ id: locationId, type: locationType });
    }
})


app.listen(port, () => { console.log(`server running at port: ${port}`) })