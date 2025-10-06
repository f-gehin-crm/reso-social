INSERT INTO rs_users (username, email, password_hash) VALUES
('rs_postsrs_usersalice', 'alice@example.com', 'hashed_password_1'),
('bob', 'bob@example.com', 'hashed_password_2'),
('charlie', 'charlie@example.com', 'hashed_password_3');
INSERT INTO rs_posts (rs_user_id, rs_posts_title, content) VALUES
(1, 'Hello World', 'This is my first post!'),
(2, 'Greetings', 'Excited to join this platform.'),
(3, 'My Thoughts', 'Sharing some thoughts on technology.');