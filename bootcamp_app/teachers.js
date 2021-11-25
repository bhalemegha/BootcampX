const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

const cohortName = process.argv[2];
const values = [`%${cohortName}%`];
const selectSql = `SELECT t.name AS teacher, c.name AS cohort
FROM assistance_requests AS a
JOIN teachers AS t
ON t.id = a.teacher_id
JOIN students AS s
ON s.id = a.student_id
JOIN cohorts AS c
ON c.id = s.cohort_id
WHERE c.name LIKE $1;`
pool.query(selectSql, values)
.then(res => {
    res.rows.forEach(user => {
    console.log(`${user.cohort}: ${user.teacher}`);
  })
});
