class SongsController < ApplicationController
    before_action :find_song, only: [:show, :edit, :update, :destroy]
    def index 
        @songs = Song.all
    end

    def show
    #    @musical = @song.musical   
    end

    # def new
    #     @book = Book.new
    # end
    
    # def create 
    #     @book = Book.new(book_params)
    #     if @book.save
    #       redirect_to @book.musical
    #     else
    #       render 'new'
    #     end
    # end
      
    # # def edit
    # #     @creator = Creator.find(params[:id])
    # # end
    
    # # def update
    # #     @creator.update(creator_params)
    # #     redirect_to creator_path(@creator)
    # # end
    
    # # def destroy
    # #     @creator.destroy
    # #     redirect_to creators_path
    # # end

    private
    
    # def book_params
    #     params.require(:song).permit(:song_title, :track_no, :musical_id)
    # end

    def find_song
        @song = Song.find(params[:id])
    end
end
