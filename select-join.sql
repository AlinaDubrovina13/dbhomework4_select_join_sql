---1. количество исполнителей в каждом жанре---
select g.title, count(*) from genre as g 
join genre_musician as gm 
on gm.genre_id = g.id group by g.id;

---2. количество треков, вошедших в альбомы 2019-2020 годов---
select count(*) from album as a 
join tracks as t on t.album_id = a.id 
where a."year_of_release" between 2019 and 2020;

---3. средняя продолжительность треков по каждому альбому---
select a.name, avg(t."track_duration") 
from album as a 
join tracks as t on t.album_id = a.id 
group by a.id;

---4. все исполнители, которые не выпустили альбомы в 2020 году---
select m.musician_name from "musician" as m 
left join musician_album as ma 
on ma.musician_id = m.id 
left join album as a on a.id = ma.album_id and a."year_of_release" = 2020 
where a.id is null;

---5. названия сборников, в которых присутствует конкретный исполнитель (выберите сами)---
select distinct c.name from collection as c
left join tracks_collection as tc on c.id = tc.collection_id
left join tracks as t on t.id = tc.tracks_id
left join album as a on a.id = t.album_id
left join musician_album as ma on ma.album_id = a.id
left join musician as m on m.id = ma.musician_id
where m.musician_name like '%%Katatonia%%'
order by c.name;

---6. название альбомов, в которых присутствуют исполнители более 1 жанра---
select a.name from album as a
left join musician_album as ma on a.id = ma.album_id
left join musician as m on m.id = ma.musician_id
left join genre_musician as gm on m.id = gm.musician_id
left join genre as g on g.id = gm.genre_id
group by a.name
having count(distinct g.title) > 1
order by a.name;

---7. наименование треков, которые не входят в сборники---
select t.track_name 
from tracks as t 
left join tracks_collection as tc on tc.tracks_id = t.id 
where tc.collection_id is null;

---8. исполнителя(-ей), написавшего самый короткий по продолжительности трек---
select m.musician_name, t.track_duration
from tracks as t
left join album as a on a.id = t.album_id
left join musician_album as ma on ma.album_id = a.id
left join musician as m on m.id = ma.musician_id
group by m.musician_name, t.track_duration
having t.track_duration = (select min(track_duration) from tracks)
order by m.musician_name;

---9. название альбомов, содержащих наименьшее количество треков---
select distinct a.name
from album as a
left join tracks as t on t.album_id = a.id
where t.album_id in (select album_id
from tracks group by album_id
having count(id) = (select count(id)
from tracks group by album_id
order by count limit 1))
order by a.name





