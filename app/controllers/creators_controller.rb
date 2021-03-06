class CreatorsController < ApplicationController
    before_action :find_creator, only: [:show, :edit, :update, :destroy]
    def index 
        @creators = Creator.all.sort_by {|hash| hash[:name]}
    end

    def show
        @musicals = @creator.musicals
        @books = @creator.books
    end

    def new
        @creator = Creator.new
    end
    
    def create 
        @creator = Creator.new(creator_params)
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
        Book.where(id: @creator.books).delete_all
        redirect_to creators_path
    end

    private
    
    def creator_params
        params.require(:creator).permit(:name, :bio, :portrait)
    end

    def find_creator
        @creator = Creator.find(params[:id])
    end
end
