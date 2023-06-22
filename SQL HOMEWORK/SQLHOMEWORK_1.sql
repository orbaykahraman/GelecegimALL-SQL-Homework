/* 

		Requested Data in the Table

1. users table must have a minimum of 2 users.
2. posts table must have different categories, different number of views and different
headings must have a minimum of 50 posts.
3. categories table should have minimum 3 categories.
4. comments table should contain posts belonging to different posts, belonging to different users, or belonging to
There should be a total of at least 250 comments that do not exist.
5. The creation_date of the data must be different.


*/

-- Step 1 : Create the "users" table.

CREATE TABLE users (
  user_id SERIAL PRIMARY KEY,
  username VARCHAR(255) UNIQUE NOT NULL,
  email VARCHAR(255) UNIQUE NOT NULL,
  creation_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  is_active BOOLEAN
);

-- Step 2 : Create the "categories" table.

CREATE TABLE categories (
  category_id SERIAL PRIMARY KEY,
  name VARCHAR(255) UNIQUE NOT NULL,
  creation_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


-- Step 3 : Create the "posts" table.

CREATE TABLE posts (
  post_id SERIAL PRIMARY KEY,
  user_id INTEGER REFERENCES users(user_id) NOT NULL,
  category_id INTEGER REFERENCES categories(category_id) NOT NULL,
  title VARCHAR(50) NOT NULL,
  content TEXT NOT NULL,
  view_count INTEGER DEFAULT 0,
  creation_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  is_published BOOLEAN
);

	
-- Step 4 : Create the "comments" table.

CREATE TABLE comments (
  comment_id SERIAL PRIMARY KEY,
  post_id INTEGER REFERENCES posts(post_id) NOT NULL,
  user_id INTEGER REFERENCES users(user_id),
  comment VARCHAR(255) NOT NULL,
  creation_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  is_confirmed BOOLEAN
); 



-- Category titles have been entered.

insert into categories (name, creation_date) values ('Football', '2000-10-01');
insert into categories (name, creation_date) values ('Basketball', '2000-10-01');
insert into categories (name, creation_date) values ('Volleyball', '2000-10-01');
insert into categories (name, creation_date) values ('Golf', '2000-10-01');
insert into categories (name, creation_date) values ('Tennis', '2000-10-01');


-- users titles have been entered.


insert into users (username, email, creation_date, is_active) values ('dissitt0', 'rjackett0@e-recht24.de', '2002/11/30', false);
insert into users (username, email, creation_date, is_active) values ('rudale1', 'phospital1@howstuffworks.com', '2006/09/25', true);
insert into users (username, email, creation_date, is_active) values ('jmacinnes2', 'rovenden2@ning.com', '2012/10/20', true);
insert into users (username, email, creation_date, is_active) values ('sheater3', 'emackleden3@globo.com', '2004/05/03', false);
insert into users (username, email, creation_date, is_active) values ('pvedishchev4', 'rpritchitt4@wired.com', '2002/06/08', false);
insert into users (username, email, creation_date, is_active) values ('wblincoe5', 'sjankowski5@mozilla.com', '2015/02/16', false);
insert into users (username, email, creation_date, is_active) values ('premington6', 'pcolafate6@odnoklassniki.ru', '2010/07/02', false);
insert into users (username, email, creation_date, is_active) values ('mchasen7', 'kkirrage7@1und1.de', '2013/05/01', true);
insert into users (username, email, creation_date, is_active) values ('cmckeowon8', 'bpaulley8@hostgator.com', '2009/08/08', false);
insert into users (username, email, creation_date, is_active) values ('skroon9', 'tgagen9@is.gd', '2016/04/02', false);
insert into users (username, email, creation_date, is_active) values ('ezanussiia', 'ltanslya@clickbank.net', '2016/09/24', false);
insert into users (username, email, creation_date, is_active) values ('banfonsib', 'dchueb@noaa.gov', '2009/05/04', true);
insert into users (username, email, creation_date, is_active) values ('khockeyc', 'zdowreyc@xing.com', '2007/01/13', false);
insert into users (username, email, creation_date, is_active) values ('apinkd', 'dantonellid@ucoz.ru', '2016/11/04', true);
insert into users (username, email, creation_date, is_active) values ('nwinyarde', 'rmeaghere@twitpic.com', '2004/02/16', true);


-- posts entered.

insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (4, 5, 'luctus', 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.

Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 624, '2013-08-03 18:58:05', false);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (8, 4, 'a', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.

Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', 2041, '2020-06-30 07:40:44', false);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (1, 3, 'purus', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.

Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', 3720, '2011-09-01 16:20:18', true);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (14, 4, 'tincidunt', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.

Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', 2466, '2015-02-04 06:55:30', true);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (4, 2, 'erat', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.

In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 1317, '2011-01-15 07:49:35', false);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (6, 2, 'sit', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.

Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', 1343, '2021-11-25 10:31:09', false);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (14, 3, 'fusce', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.

Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', 93, '2012-04-21 08:37:19', false);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (8, 2, 'pharetra', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.

Sed ante. Vivamus tortor. Duis mattis egestas metus.', 514, '2021-01-02 19:35:06', true);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (3, 5, 'tristique', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.

Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', 2055, '2014-11-06 08:04:44', false);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (1, 3, 'nulla', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.

Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', 4876, '2016-03-13 07:58:36', true);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (11, 1, 'diam', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.

Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 1959, '2014-09-30 21:12:48', true);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (10, 2, 'ipsum', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.

Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', 887, '2012-03-17 04:58:11', false);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (13, 2, 'nulla', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.

Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', 4716, '2015-09-29 08:12:44', false);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (9, 3, 'accumsan', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.

Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', 564, '2012-12-12 22:53:08', false);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (5, 2, 'dui', 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.

Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', 3991, '2018-06-04 08:49:38', false);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (8, 1, 'iaculis', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', 2379, '2012-10-20 17:44:24', false);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (4, 4, 'maecenas', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.

In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 3109, '2011-01-30 19:54:49', false);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (11, 2, 'morbi', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.

Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', 752, '2015-05-13 00:17:25', true);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (2, 1, 'morbi', 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', 4781, '2014-11-21 02:27:48', true);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (1, 2, 'nunc', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.

Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 652, '2016-09-20 09:53:08', true);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (4, 2, 'non', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.

Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', 2220, '2020-08-19 23:40:52', true);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (13, 1, 'donec', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.

Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', 4922, '2014-12-27 18:32:33', true);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (1, 4, 'aliquam', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.

Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', 1407, '2015-07-29 20:55:12', false);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (7, 4, 'mauris', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.

Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', 55, '2021-07-07 20:49:47', false);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (5, 3, 'nam', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.

Phasellus in felis. Donec semper sapien a libero. Nam dui.', 1409, '2017-11-26 11:27:32', true);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (13, 2, 'fermentum', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', 4549, '2018-10-15 19:41:31', true);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (7, 3, 'ut', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.

Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', 4100, '2016-09-16 09:07:46', true);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (13, 3, 'vulputate', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.

Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', 4553, '2018-08-11 08:59:22', false);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (14, 2, 'metus', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.

Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', 3273, '2021-02-19 23:28:56', false);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (10, 2, 'at', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', 455, '2016-06-06 21:47:38', true);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (8, 1, 'augue', 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.

Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', 3466, '2010-02-22 10:51:45', false);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (6, 4, 'vehicula', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.

Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', 2330, '2010-04-03 04:32:09', true);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (3, 3, 'dolor', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.

Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', 856, '2013-07-13 02:10:36', false);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (3, 5, 'eget', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.

Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 3465, '2013-10-15 21:16:09', true);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (6, 5, 'libero', 'Fusce consequat. Nulla nisl. Nunc nisl.

Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', 655, '2015-06-06 14:13:56', true);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (3, 1, 'at', 'Sed ante. Vivamus tortor. Duis mattis egestas metus.

Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', 4518, '2019-02-10 16:28:39', true);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (11, 3, 'semper', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.

Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 3198, '2013-03-29 09:52:57', false);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (9, 3, 'elementum', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.

Phasellus in felis. Donec semper sapien a libero. Nam dui.', 2949, '2017-03-03 04:57:50', false);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (5, 4, 'ut', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.

Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', 3866, '2017-08-18 11:49:37', true);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (8, 4, 'aliquam', 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', 939, '2014-08-09 16:25:07', false);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (13, 5, 'placerat', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.

Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', 2969, '2018-08-28 18:04:17', true);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (4, 2, 'nunc', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.

Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', 785, '2019-11-12 09:21:38', true);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (14, 2, 'nulla', 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.

Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', 3035, '2012-08-15 10:50:43', false);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (4, 4, 'dignissim', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.

In congue. Etiam justo. Etiam pretium iaculis justo.', 712, '2012-01-25 15:12:24', true);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (10, 1, 'viverra', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.

Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', 422, '2015-06-18 11:44:37', true);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (4, 1, 'velit', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.

Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 3566, '2012-12-07 11:07:11', false);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (3, 3, 'lacus', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.

Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', 372, '2020-01-14 17:44:24', true);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (13, 3, 'habitasse', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', 3998, '2012-08-29 08:57:02', true);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (14, 4, 'in', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.

Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', 670, '2013-03-27 06:23:30', true);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (9, 2, 'erat', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.

Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', 2120, '2019-07-27 05:44:36', false);




-- comments entered.

insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (6, 1, 'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit.', '2012-07-20 14:00:57', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (37, 5, 'Etiam vel augue. .', '2010-10-12 14:45:41', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (28, 8, 'Aenean fermentum. .', '2014-08-13 14:01:30', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (11, 14, 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', '2012-06-19 15:42:18', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (27, 5, 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices.', '2018-11-26 12:47:39', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (18, 14, 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', '2011-12-27 12:08:36', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (8, 6, 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nipit ligula in lacus.', '2014-05-07 19:43:34', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (14, 11, 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posueren sapien non mi. Integer ac neque.', '2014-09-23 17:46:02', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (30, 12, 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', '2011-11-10 03:46:39', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (23, 1, 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', '2021-07-27 08:24:22', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (49, 13, 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', '2010-03-14 02:02:16', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (39, 8, 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices policitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', '2017-02-15 18:12:34', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (15, 9, 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', '2012-01-26 20:29:40', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (28, 7, 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', '2019-09-17 16:18:09', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (12, 11, 'Proin interdum mauris non ligula pellentesquacult at, vulputate vitae, nisl.', '2018-06-20 16:01:47', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (42, 11, 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt laos elementum pellentesque.', '2011-05-12 09:23:16', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (34, 1, 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibpien non mi. Integer ac neque.', '2018-11-05 20:51:20', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (4, 1, 'Vestibulum quam sapien, varius ut, blandit non, interdmis in tur convallis.', '2014-09-09 12:12:24', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (41, 6, 'Proin interdum mue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', '2020-06-30 05:20:06', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (27, 5, 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', '2014-04-15 09:50:25', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (36, 13, 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', '2018-09-14 04:26:56', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (44, 5, 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', '2020-10-15 22:40:01', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (7, 10, 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', '2020-04-01 07:23:34', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (25, 9, 'In congue. Etiam justo. Etiam pretium iaculis justo.', '2013-04-24 02:55:58', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (30, 1, 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', '2018-04-27 22:06:19', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (31, 14, 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', '2012-11-03 22:18:28', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (8, 2, 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac cos posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', '2019-08-11 18:38:40', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (34, 9, 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', '2020-09-16 07:10:55', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (29, 10, 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', '2015-06-09 19:43:59', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (34, 11, 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', '2015-09-17 05:19:21', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (4, 5, 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turisi eu orci. Mauris lacinia sapien quis libero.', '2013-04-25 02:52:40', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (38, 14, 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', '2015-12-08 03:14:43', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (18, 8, 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pre. Nulla justo.', '2020-02-06 08:23:07', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (4, 14, 'Quisque id justo sit amet sapien dignissim vestibulust. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', '2011-07-20 07:36:01', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (43, 5, 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', '2013-02-21 16:28:21', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (21, 7, 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', '2018-01-17 13:55:50', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (40, 6, 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', '2015-02-13 02:30:14', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (42, 8, 'In hac habitasse platea dictumst. Morbi vestibulue sapien placerat ante. Nulla justo.', '2016-05-30 18:36:03', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (48, 9, 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', '2016-09-28 00:11:55', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (10, 7, 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', '2012-08-15 09:54:26', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (44, 11, 'Maecenas tristique, est et tempuestibulum a cubilivitae quam. Suspendisse potenti.', '2020-03-22 00:19:50', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (23, 6, 'Cum sociis natoque penati sapien. Cum sociis natoque penatiur ridiculus mus.', '2011-08-10 00:01:31', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (46, 6, 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', '2021-07-01 02:47:19', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (50, 14, 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', '2010-01-25 09:39:09', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (6, 5, 'Aliquam quis turpis eget elit sn tortor quis turpis.', '2017-08-12 21:34:33', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (35, 6, 'Proin interdum mauris nVivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', '2020-06-16 20:33:47', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (11, 2, 'In sagittis dui vel nisl. Duis auis, lectus.', '2014-08-27 19:51:19', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (48, 10, 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', '2018-11-13 22:38:59', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (3, 1, 'Maecenas leo odi pede ac diam. Cras pellentesque volutpat dui.', '2012-08-17 02:06:21', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (14, 3, 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', '2015-03-29 04:39:32', true);


--     The operations we want to perform on the database

-- 1. Tüm blog yazılarını başlıkları, yazarları ve kategorileriyle birlikte getirin.

SELECT users.username, posts.title, categories.name FROM posts
INNER JOIN categories ON posts.category_id = categories.category_id
INNER JOIN users ON posts.user_id = users.user_id;

-- 2. En son yayınlanan 5 blog yazısını başlıkları, yazarları ve yayın tarihleriyle birlikte alın

SELECT users.username, posts.title, posts.creation_date FROM posts
INNER JOIN users ON posts.user_id = users.user_id
WHERE posts.is_published = true
ORDER BY posts.creation_date DESC
LIMIT 5;


-- 3. Her blog yazısı için yorum sayısını gösterin.


SELECT title,
(SELECT COUNT (*) FROM comments 
 WHERE posts.post_id = comments.post_id
) 
AS count
FROM posts
INNER JOIN comments
ON posts.post_id = comments.post_id;


-- 4. Tüm kayıtlı kullanıcıların kullanıcı adlarını ve e-posta adreslerini gösterin.

SELECT username, email FROM users;


-- 5. En son 10 yorumu, ilgili gönderi başlıklarıyla birlikte alın.

SELECT comments.comment, posts.title
FROM comments
INNER JOIN posts ON comments.post_id = posts.post_id
ORDER BY posts.creation_date DESC
LIMIT 10;

-- 6. Belirli bir kullanıcı tarafından yazılan tüm blog yazılarını bulun.

SELECT posts.content FROM users
JOIN posts ON posts.user_id = users.user_id
WHERE username = 'mchasen7';

-- 7. Her kullanıcının yazdığı toplam gönderi sayısını alın

SELECT users.username,
(SELECT COUNT(*) FROM posts 
 WHERE users.user_id = posts.user_id
) 
AS post_count
FROM users;

--  8.Her kategoriyi, kategorideki gönderi sayısıyla birlikte gösterin.

SELECT categories.name, COUNT(posts.post_id) AS total_count FROM categories
LEFT JOIN posts ON posts.category_id = categories.category_id
GROUP BY categories.name;



-- 9.Gönderi sayısına göre en popüler kategoriyi bulun.


SELECT categories.name, COUNT(posts.category_id) AS total_count FROM categories
JOIN posts ON posts.category_id = categories.category_id
GROUP BY categories.name
ORDER BY total_count DESC
LIMIT 1;


--  10.Gönderilerindeki toplam görüntülenme sayısına göre en popüler kategoriyi bulun.


SELECT categories.name, SUM(posts.view_count) AS total_view FROM categories
JOIN posts ON posts.category_id = categories.category_id
GROUP BY categories.name
ORDER BY total_view DESC
LIMIT 1;


-- 11.En fazla yoruma sahip gönderiyi alın.


SELECT posts.title,
(
	SELECT COUNT(*) FROM comments WHERE comments.post_id = posts.post_id
) AS count_comment
FROM posts
ORDER BY count_comment DESC
LIMIT 1;


-- 12.Belirli bir gönderinin yazarının kullanıcı adını ve e-posta adresini gösterin


SELECT users.username, users.email, posts.content 
FROM posts
INNER JOIN users ON posts.user_id = users.user_id
WHERE posts.post_id = 12;


-- 13.Başlık veya içeriklerinde belirli bir anahtar kelime bulunan tüm gönderileri bulun.


SELECT * FROM posts
WHERE title ILIKE '%In%';


-- 14.Belirli bir kullanıcının en son yorumunu gösterin.


SELECT * FROM comments
WHERE user_id = 13
ORDER BY creation_date DESC
LIMIT 1;

-- 15.Gönderi başına ortalama yorum sayısını bulun.

SELECT AVG(comment_count)
FROM (
  SELECT post_id, COUNT(*) AS Commentary
  FROM comments
  GROUP BY post_id
) 
AS sub_comments;


-- 16.Son 30 günde yayınlanan gönderileri gösterin


SELECT * FROM posts
WHERE creation_date >= CURRENT_DATE - INTERVAL '30 day';



-- 17.Belirli bir kullanıcının yaptığı yorumları alın


SELECT comments.comment,
(
	SELECT users.username FROM users WHERE comments.user_id = users.user_id
)
FROM comments
WHERE comments.user_id = 6;


-- 18.Belirli bir kategoriye ait tüm gönderileri bulun

SELECT * FROM categories
JOIN posts ON posts.category_id = categories.category_id
WHERE categories.name = 'Tennis'


-- 19.5'ten az yazıya sahip kategorileri bulun

SELECT categories.name, COUNT(posts.post_id) AS post_count FROM categories 
LEFT JOIN posts ON categories.category_id = posts.category_id
GROUP BY categories.category_id, categories.name
HAVING COUNT(posts.post_id) < 5;


-- 20.Hem bir yazı hem de bir yoruma sahip olan kullanıcıları gösterin.

SELECT posts.user_id, comments.user_id, users.username FROM posts 
INNER JOIN comments ON posts.user_id = comments.user_id
INNER JOIN users ON users.user_id = posts.user_id
GROUP BY posts.user_id, comments.user_id, users.username;


-- 21.En az 2 farklı yazıya yorum yapmış kullanıcıları alın.
SELECT users.username, users.user_id FROM users
INNER JOIN 
(SELECT user_id FROM comments
  GROUP BY user_id
  HAVING COUNT(DISTINCT post_id) >= 2
) 
AS response ON users.user_id = response.user_id;

-- 22.En az 3 yazıya sahip kategorileri görüntüleyin.
SELECT categories.name, categories.category_id, COUNT(posts.post_id) FROM posts
INNER JOIN categories ON categories.category_id = posts.category_id
GROUP BY categories.category_id, categories.name
HAVING COUNT(posts.post_id) >= 3;


-- 23.5'ten fazla blog yazısı yazan yazarları bulun.

SELECT users.username FROM users
WHERE(
	SELECT COUNT(*) FROM posts
	WHERE users.user_id = posts.user_id
) > 5;


-- 24.Bir blog yazısı yazmış veya bir yorum yapmış kullanıcıların e-posta adreslerini görüntüleyin. (UNION kullanarak)

(SELECT users.email FROM users 
 WHERE 
 (SELECT COUNT(*) FROM posts 
  WHERE posts.user_id = users.user_id) = 1)
UNION
(SELECT users.email	FROM users 
 WHERE (SELECT COUNT(*) FROM comments
 WHERE comments.user_id = users.user_id) = 1);


-- 25.Bir blog yazısı yazmış ancak hiç yorum yapmamış yazarları bulun.


SELECT users.username FROM users
WHERE
(
	SELECT COUNT(*) FROM posts WHERE posts.user_id = users.user_id
) > 0
AND
(
	SELECT COUNT(*) FROM comments WHERE comments.user_id = users.user_id
) = 0;



