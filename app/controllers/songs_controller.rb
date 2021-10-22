class SongsController < ApplicationController
    before_action :find_song, only: [:show, :edit, :update, :destroy]
    def index 
        @songs = Song.all
    end

    def show
    #    @musical = @song.musical   
    end

    def new
        @song = Song.new
    end
    
    def create 
        @song = Song.new(song_params)
        if @song.save
          redirect_to @song
        else
          render 'new'
        end
    end
      
    def edit
    # #     @song = Song.find(params[:id])
    end
    
    def update
        @song.update(song_params)
        redirect_to song_path(@song)
    end
    
    def destroy
        @song.destroy
        redirect_to songs_path
    end

    private
    
    def song_params
        params.require(:song).permit(:song_title, :track_no, :musical_id)
    end

    def find_song
        @song = Song.find(params[:id])
    end
end
