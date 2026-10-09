-- Create a new table permissions' with a primary key and columns
CREATE TABLE IF NOT EXISTS privs (
    access_id INT PRIMARY KEY,
    check_id INT references checklists(check_id),
    user_id INT
);