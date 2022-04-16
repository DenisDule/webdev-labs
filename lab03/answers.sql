-- Exercise 1 (done for you):
SELECT * FROM users;



-- Exercise 2 (done for you):
SELECT id, first_name, last_name 
FROM users;



-- Exercise 3
SELECT id, first_name, last_name FROM users ORDER BY last_name;



-- Exercise 4
SELECT id, image_url, user_id FROM posts WHERE user_id=26;



-- Exercise 5
SELECT id, image_url, user_id FROM posts WHERE user_id=26 or user_id=12;



-- Exercise 6
SELECT count(id) FROM posts;



-- Exercise 7
SELECT user_id, count(user_id) FROM comments GROUP BY user_id ORDER BY count(user_id) DESC;



-- Exercise 8
SELECT posts.id, posts.image_url, posts.user_id, users.username, users.first_name, users.last_name FROM posts 
INNER JOIN users ON users.id = posts.user_id
WHERE user_id=26 or user_id=12;



-- Exercise 9
SELECT posts.id, pub_date, following_id 
FROM posts 
INNER JOIN following ON posts.user_id = following.following_id
WHERE following.user_id=26;



-- Exercise 10
-- Optional



-- Exercise 11
INSERT INTO BOOKMARKS (user_id, post_id, timestamp)
VALUES (26, 219, now());

INSERT INTO BOOKMARKS (user_id, post_id, timestamp)
VALUES (26, 220, now());

INSERT INTO BOOKMARKS (user_id, post_id, timestamp)
VALUES (26, 221, now());



-- Exercise 12
DELETE FROM BOOKMARKS
WHERE user_id=26 AND post_id=219;

DELETE FROM BOOKMARKS
WHERE user_id=26 AND post_id=220;

DELETE FROM BOOKMARKS
WHERE user_id=26 AND post_id=221;



-- Exercise 13
UPDATE users
SET email = 'knick2022@gmail.com'
WHERE id=26;


-- Exercise 14
-- Optional
