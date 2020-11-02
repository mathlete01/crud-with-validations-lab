class SongsController < ApplicationController
    def index
        @songs = Song.all
    end

    def new
        @song = Song.new
    end

    def create
        @song = Song.create(song_params)
        @song.save
        redirect_to song_path(@song)
    end

    def show
        @song = Song.find(params[:id])
    end

    def edit
        @song = Song.find(params[:id])
    end

    def update
        @song = Song.find(params[:id])
        @song.update(song_params(:title))
        redirect_to song_path(@song)
    end

    def destroy
    end

    private

    def song_params  
        params.require(:song).permit(:title, :released, :release_year, :artist_name, genre)
    end

end
