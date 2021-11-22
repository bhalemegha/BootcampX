create table student (id serial primary key, name varchar(50), email varchar(50), phone integer, github varchar(50), start_date date, end_date date, cohort_id integer, constraint fk_cohort FOREIGN KEY(cohort_id) REFERENCES cohort(id));


ALTER TABLE cohort
RENAME TO cohorts;
