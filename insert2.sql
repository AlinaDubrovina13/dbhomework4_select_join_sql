insert into genre values 
(1, 'doom metal'),
(2, 'progressive metal'),
(3, 'alternative rock'),
(4, 'post punk'),
(5, 'synthpop'),
(6, 'dark wave'),
(7, 'melodic death metal'),
(8, 'trash metal')


insert into musician values 
(1, 'Type o Negative'),
(2, 'Katatonia'),
(3, 'Placebo'),
(4, 'The Cure'),
(5, 'Depeche Mode'),
(6, 'London After Midnight'),
(7, 'Children of Bodom'),
(8, 'Pantera')

insert into genre_musician values
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8)

insert into genre_musician values
(1, 2),
(4, 6),
(8, 7)

insert into album values
(1, 'October rust', 1996),
(2, 'City burials', 2020),
(3, 'Meds', 2006),
(4, 'Bloodflowers', 2000),
(5, 'Playing the angel', 2005),
(6, 'Psycho Magnet', 2005),
(7, 'Follow the reaper', 2000),
(8, 'Far beyond driven', 1994)

insert into album values
(9, 'Spirit', 2018)

insert into musician_album values
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8)

insert into tracks values
(1, 'Love you to death', 7, 1),
(2, 'Wolf moon', 6, 1),
(3, 'Cinnamon Girl', 4, 1),
(4, 'Laquer', 4, 2),
(5, 'The winter of our passing', 3, 2),
(6, 'Vanishers', 5, 2),
(7, 'Song to say goodbye', 3, 3),
(8, 'Blind', 4, 3),
(9, 'The last day of summer', 5, 4),
(10, 'Precious', 4, 5),
(11, 'Nothings impossible', 4, 5),
(12, 'Shatter', 6, 6),
(13, 'Kiss', 4, 6),
(14, 'Every time i die', 4, 7),
(15, 'Kissing the shadows', 4, 7),
(16, '5 minutes alone', 5, 8),
(17, 'i am broken', 3, 8)
(18, 'My girlfriends girlfriend', 4, 1)

insert into tracks values
(19, 'Be my druidess', 5, 1)

insert into collection values
(1, 'Doom metal collection', 2020),
(2, 'Dark romantic collection', 2000),
(3, 'Alternative rock collection', 2005),
(4, 'The best of synthpop', 2018),
(5, 'Dark songs collection', 2015),
(6, 'Trash and death metall collection', 2017),
(7, 'Metal Ballads', 2022),
(8, 'Old school of Rock', 2019)

insert into tracks_collection values
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(2, 1),
(2, 4),
(2, 12),
(2, 13),
(2, 18),
(3, 7),
(3, 8),
(3, 5),
(3, 15),
(3, 16),
(4, 9),
(4, 10),
(4, 11),
(5, 1),
(5, 2),
(5, 12),
(5, 18),
(5, 13),
(6, 14),
(6, 15),
(6, 16),
(6, 17),
(7, 2),
(7, 4),
(7, 5),
(7, 6),
(7, 1),
(8, 3),
(8, 14),
(8, 15),
(8, 16),
(8, 17)


