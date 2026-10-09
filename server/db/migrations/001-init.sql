CREATE TABLE IF NOT EXISTS logins (
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    pass_hash VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS checklists (
    check_id SERIAL PRIMARY KEY,
    user_id INT references logins(user_id),
    title VARCHAR(255),
    create_date DATE DEFAULT CURRENT_DATE
);

CREATE TABLE IF NOT EXISTS tasks (
    task_id SERIAL PRIMARY KEY,
    check_id INT references checklists(check_id),
    task VARCHAR(750)
);