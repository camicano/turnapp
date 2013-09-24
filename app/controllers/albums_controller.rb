class AlbumsController < ApplicationController
	def index	
		@artists = Artist.all
		artist = Artist.find(params[:artist_id])
		@artist = Artist.new
		@album = Album.new
		@albums = artist.albums.all
	end

	# def show
		
	# end

	# def new
	# 	@album = Album.new
	# end

	def create
		@album = Album.create(params[:album])
		redirect_to '/artist/#{@album.artist.id}/albums'
	end

	def edit
		@artists = Artist.all
		artist = Artist.find(params[:artist_id])
		@artist = Artist.new 
		@albums = artist.albums.all
		@album = Album.find(params[:id])
	end

	def update
		@album = Album.update(params[:id], params[:album])
		redirect_to '/artist/#{@album.artist.id}/albums'
	end

	def destroy
		@album = Album.find(params[:id])
		@album.destroy
		redirect_to '/artist/#{@album.artist.id}'
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