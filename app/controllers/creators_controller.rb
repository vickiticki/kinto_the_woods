class CreatorsController < ApplicationController
    before_action :find_creator, only: [:show]
    def index 
        @creators = Creator.all
    end

    def show
    end

    private

    def find_creator
        @creator = Creator.find(params[:id])
    end
end
