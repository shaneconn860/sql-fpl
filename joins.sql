#Basicjoin

select a.player_name, a.team, b.assists
from player_basics a
inner join player_stats b
on a.player_name = b.player_name
where position = 'Defender';
