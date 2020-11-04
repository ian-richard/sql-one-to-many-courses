DROP TABLE bookings;
DROP TABLE courses;
DROP TABLE students;

CREATE TABLE courses
(
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  location VARCHAR(255) NOT NULL
);

CREATE TABLE students
(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  postcode VARCHAR(255) NOT NULL
);

CREATE TABLE bookings
(
  id SERIAL PRIMARY KEY,
  student_id INT REFERENCES students(id),
  course_id INT REFERENCES courses(id),
  date_booked DATE NOT NULL
);

INSERT INTO students (name, postcode) VALUES ('Bruce', 'EH1 2EL');
INSERT INTO students (name, postcode) VALUES ('Selena', 'G2 3BZ');
INSERT INTO students (name, postcode) VALUES ('Barbara', 'IV2 3JP');
INSERT INTO students (name, postcode) VALUES ('Richard', 'EH1 2NG');

INSERT INTO courses (title, location) VALUES ('Python', 'Edinburgh');
INSERT INTO courses (title, location) VALUES ('SQL', 'Glasgow');
INSERT INTO courses (title, location) VALUES ('Java', 'Inverness');
INSERT INTO courses (title, location) VALUES ('JavaScript', 'Dundee');

INSERT INTO bookings (course_id, student_id, date_booked) VALUES (1, 1, 'March 27 2018');
INSERT INTO bookings (course_id, student_id, date_booked) VALUES (2, 2,'March 29 2018');
INSERT INTO bookings (course_id, student_id, date_booked) VALUES (4, 3, 'March 30 2018');
INSERT INTO bookings (course_id, student_id, date_booked) VALUES (1, 3, 'March 30 2018');