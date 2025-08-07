SELECT am.*, um.user_id, um.watched_status FROM (
  SELECT
    m.movie_id,
    m.title,
    m.release_year,
    m.director,
    m.short_description,
    m.trailer_url,
    m.poster,
    m.rating,
    -- um.watched_status,
    GROUP_CONCAT(DISTINCT g.genre_name SEPARATOR ', ') AS genres,
    GROUP_CONCAT(DISTINCT a.actor_name SEPARATOR ', ') AS actors
  FROM movies m
  LEFT JOIN movies_with_genres mg ON m.movie_id = mg.movie_id
  LEFT JOIN genres g ON mg.genre_id = g.genre_id
  LEFT JOIN movies_with_actors ma ON m.movie_id = ma.movie_id
  LEFT JOIN actors a ON ma.actor_id = a.actor_id
  GROUP BY
    m.movie_id, m.title, m.release_year, m.director, m.short_description,
    m.trailer_url, m.poster, m.rating
) am
LEFT OUTER JOIN (
  SELECT * FROM user_movies um
  WHERE user_id = 1
) um ON um.movie_id = am.movie_id
;