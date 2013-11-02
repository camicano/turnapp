class ArtistsController < ApplicationController
	def index
		@artists = Artist.all
		@artist = Artist.new
	end

	def create
		@artist = Artist.create(params[:artist])
		redirect_to '/artists'
	end

	def edit
		@artists = Artist.all
		@artist = Artist.find(params[:id])
	end
	
	def update
		@artist = Artist.update(params[:id], params[:artist])
		redirect_to '/artists'
	end

	def destroy
		artist = Artist.find(params[:id])
		artist.destroy
		redirect_to '/artists'
	end 	

end
