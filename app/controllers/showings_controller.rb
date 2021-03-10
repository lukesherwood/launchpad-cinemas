class ShowingsController < ApplicationController

    def new
        @showing = Showing.new
        @auditoriums = Auditorium.all
        @movies = Movie.all
    end

    def create
        @showing = Showing.new(showing_params)
        if @showing.save
            redirect_to :users_admin, notice: "Successfully created a showing"
        else
            render 'new'
        end
    end

    def edit
        @showing = Showing.find(params[:id])
        @auditoriums = Auditorium.all
        @movies = Movie.all
    end

    def update
        @showing = Showing.find(params[:id])
        if @showing.update(showing_params)
            redirect_to :users_admin, notice: "Successfully updated showing"
        else 
            render "edit"
        end
    end

    private

    def showing_params
        params.require(:showing).permit(:auditorium_id, :time, :movie_id)
    end
end
