# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Artist.delete_all

artist = Artist.create(name: "Beatles", bio: "A little-known 60s band from Liverpool, UK.")
artist2 = Artist.create(name: "Radiohead", bio: "A little-known 2000s band from USA.")
valid_album_title = "Rubber Soul"
valid_album_genre = "Folk-Rock"
album = Album.create(title: valid_album_title, genre: valid_album_genre, artist_id: artist.id)
valid_song_title = "Norwegian Wood"
song = Song.create(title: valid_song_title, album_id: album.id)
valid_album_title2 = "R2ubber Soul"
valid_album_genre2 = "Fol2k-Rock"
album2 = Album.create(title: valid_album_title2, genre: valid_album_genre2, artist_id: artist2.id)
valid_song_title2 = "Nor2wegian Wood"
song2 = Song.create(title: valid_song_title, album_id: album2.id)

album.songs << song
album2.songs << song2

artist.albums << album
artist2.albums << album2

