class AlbumsController < ApplicationController
	def index	
		@artists = Artist.all
		artist = Artist.find(params[:artist_id])
		@artist = Artist.new
		@album = Album.new
		@albums = artist.albums.all
	end

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
