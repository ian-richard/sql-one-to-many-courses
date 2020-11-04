-- SELECT students.* from students
-- INNER JOIN bookings
-- ON bookings.student_id = student_id;

SELECT students.name, courses.title, bookings.date_booked from students
INNER JOIN bookings
on bookings.student_id = student_id
INNER JOIN courses
on courses.id = bookings.course_id;
