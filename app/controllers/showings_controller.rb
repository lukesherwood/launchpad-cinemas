class ShowingsController < ApplicationController
    def edit
        @showing = Showing.find(params[:id])
        @auditoriums = Auditorium.all
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
