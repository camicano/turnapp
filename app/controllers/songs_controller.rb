class SongsController < ApplicationController
	def index	
		@artists = Artist.all
		artist = Artist.find(params[:artist_id])
		@albums = artist.albums
		album = artist.albums.first
		@songs = album.songs
		@song = Song.new
	end

	# def show
	# 	@song = Song.find(params[:id])
	# end 

	# def new
	# 	@song = Song.new
	# end

	def create
		@song = Song.create(params[:song])
		redirect_to '/artist/#{@song.artist.id}/albums/#{@song.album.id}/songs/#{@song.id}'
	end

	def edit
		@artists = Artist.all
		artist = Artist.find(params[:artist_id])
		@albums = artist.albums
		album = artist.albums.first
		@songs = album.songs
		@song = Song.find(params[:id])
	end

	def update
		@song = Song.update(params[:id], params[:song])
		redirect_to '/artist/#{@song.artist.id}/albums/#{@song.album.id}/songs/#{@song.id}'
	end

	def destroy
		@song = Song.find(params[:id])
		redirect_to '/artist/#{@song.artist.id}/albums/#{@song.album.id}/songs'
	end	

end

#                   root        /                                                             artists#index
#     artist_album_songs GET    /artists/:artist_id/albums/:album_id/songs(.:format)          songs#index
#                        POST   /artists/:artist_id/albums/:album_id/songs(.:format)          songs#create
#  new_artist_album_song GET    /artists/:artist_id/albums/:album_id/songs/new(.:format)      songs#new
# edit_artist_album_song GET    /artists/:artist_id/albums/:album_id/songs/:id/edit(.:format) songs#edit
#      artist_album_song GET    /artists/:artist_id/albums/:album_id/songs/:id(.:format)      songs#show
#                        PUT    /artists/:artist_id/albums/:album_id/songs/:id(.:format)      songs#update
#                        DELETE /artists/:artist_id/albums/:album_id/songs/:id(.:format)      songs#destroy
#          artist_albums GET    /artists/:artist_id/albums(.:format)                          albums#index
#                        POST   /artists/:artist_id/albums(.:format)                          albums#create
#       new_artist_album GET    /artists/:artist_id/albums/new(.:format)                      albums#new
#      edit_artist_album GET    /artists/:artist_id/albums/:id/edit(.:format)                 albums#edit
#           artist_album GET    /artists/:artist_id/albums/:id(.:format)                      albums#show
#                        PUT    /artists/:artist_id/albums/:id(.:format)                      albums#update
#                        DELETE /artists/:artist_id/albums/:id(.:format)                      albums#destroy
#                artists GET    /artists(.:format)                                            artists#index
#                        POST   /artists(.:format)                                            artists#create
#             new_artist GET    /artists/new(.:format)                                        artists#new
#            edit_artist GET    /artists/:id/edit(.:format)                                   artists#edit
#                 artist GET    /artists/:id(.:format)                                        artists#show
#                        PUT    /artists/:id(.:format)                                        artists#update
#                        DELETE /artists/:id(.:format)                                        artists#destroy