class SongsController < ApplicationController
	def index	
		@artists = Artist.all
		artist = Artist.find(params[:artist_id])
		@albums = artist.albums
		album = artist.albums.first
		@songs = album.songs
		@song = Song.new
	end

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
