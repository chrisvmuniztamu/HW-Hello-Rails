# db/seeds.rb
more_movies = [
  { title: 'My Neighbor Totoro', rating: 'G', release_date: '1988-04-16', description: 'A heartwarming tale of two sisters who discover a magical world of forest spirits.' },
  { title: 'Green Book', rating: 'PG-13', release_date: '2018-11-16', description: 'A story of a working-class Italian-American bouncer who becomes the driver of an African-American classical pianist on a tour of venues through the 1960s American South.' },
  { title: 'Parasite', rating: 'R', release_date: '2019-05-30', description: 'A dark comedy thriller about a poor family that schemes to become employed by a wealthy family and infiltrates their household.' },
  { title: 'Nomadland', rating: 'R', release_date: '2021-02-19', description: 'Following the economic collapse of a company town in rural Nevada, Fern sets off on the road exploring a life outside of conventional society as a modern-day nomad.' },
  { title: 'CODA', rating: 'PG-13', release_date: '2021-08-13', description: 'As a CODA (Child of Deaf Adults), Ruby is the only hearing person in her deaf family, and she finds herself torn between pursuing her passion for music and her fear of abandoning her parents.' },
  { title: 'Toy Story', rating: 'G', release_date: '1995-11-22', description: 'A story about the secret life of toys when people are not around, focusing on Woody, a pull-string cowboy doll, and Buzz Lightyear, an astronaut action figure.' },
  { title: 'Inception', rating: 'PG-13', release_date: '2010-07-16', description: 'A skilled thief, who is the absolute best in the dangerous art of extraction, stealing valuable secrets from deep within the subconscious during the dream state.' },
  { title: 'Hunger Games', rating: 'PG-13', release_date: '2012-03-23', description: 'In a dystopian future, Katniss Everdeen volunteers to take her younger sister’s place in the Hunger Games, a televised competition in which two teenagers from each of the twelve Districts are chosen to fight to the death.' }
]

more_movies.each do |movie|
  Movie.find_or_create_by!(title: movie[:title], rating: movie[:rating], release_date: movie[:release_date], description: movie[:description])
end
