require 'rspotify'
class MusicalsController < ApplicationController
    before_action :find_musical, only: [:show, :edit, :update, :destroy]
    def index 
        @musicals = Musical.all.sort_by {|hash| hash[:title]}
      end
      
      def show
        # @musical = Musical.find(params[:id])
        @creators = @musical.creators
        @songs = @musical.songs
        if @musical.album_id == "search"
          @album = RSpotify::Album.search(@musical.title).first
        elsif @musical.album_id != nil && @musical.album_id.length == 22 
          @album = RSpotify::Album.find(@musical.album_id)
        end
      @items = @musical.items
    end

    def new
        @musical = Musical.new
      end
    
      def create 
        @musical = Musical.new(musical_params)
        if @musical.save
          redirect_to @musical
        else
          render 'new'
        end
      end
      
      def edit
        @musical = Musical.find(params[:id])
      end
    
      def update
        @musical.update(musical_params)
        redirect_to musical_path(@musical)
      end
    
      def destroy
        @musical.destroy
        Item.where(id: @musical.items).delete_all
        Book.where(id: @musical.books).delete_all
        redirect_to musicals_path
      end

    private

    def musical_params
        params.require(:musical).permit(:title, :synopsis, :release_year, :album_id, :poster, :items)
    end

    def find_musical
        @musical = Musical.find(params[:id])
    end

end
