class MusicalsController < ApplicationController
    before_action :find_musical, only: [:show, :edit, :update]
    def index 
        @musicals = Musical.all
    end

    def show
        # @musical = Musical.find(params[:id])
        @creators = @musical.creators
        @songs = @musical.songs
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
    
    #   def destroy
    #     @movie.destroy
    #     redirect_to movies_path
    #   end

    private

    def musical_params
        params.require(:musical).permit(:title, :synopsis, :release_year)
    end

    def find_musical
        @musical = Musical.find(params[:id])
    end

end
