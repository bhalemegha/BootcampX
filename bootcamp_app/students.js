const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

const cohortName = process.argv[2];
const limit = Number(process.argv[3]);
  
pool.query(`
SELECT students.id, students.name, c.name as cohort
FROM students
JOIN cohorts AS c ON c.id = cohort_id
LIMIT ${limit};
`)
.then(res => {
    res.rows.forEach(user => {
    console.log(`${user.name} has an id of ${user.id} and was in the ${user.cohort} cohort`);
  })
});