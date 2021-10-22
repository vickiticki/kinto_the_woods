class CreatorsController < ApplicationController
    before_action :find_creator, only: [:show, :edit, :update, :destroy]
    def index 
        @creators = Creator.all
    end

    def show
        @musicals = @creator.musicals
    end

    def new
        @creator = Creator.new
      end
    
      def create 
        @creator = Creator.new(musical_params)
        if @creator.save
          redirect_to @creator
        else
          render 'new'
        end
      end
      
      def edit
        @creator = Creator.find(params[:id])
      end
    
      def update
        @creator.update(creator_params)
        redirect_to creator_path(@creator)
      end
    
      def destroy
        @creator.destroy
        redirect_to creators_path
      end

    private
    
    def creator_params
        params.require(:creator).permit(:name, :bio)
    end

    def find_creator
        @creator = Creator.find(params[:id])
    end
end
