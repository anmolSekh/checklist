ALTER TABLE privs
ADD CONSTRAINT fk_users
FOREIGN KEY (user_id)
references logins(user_id);