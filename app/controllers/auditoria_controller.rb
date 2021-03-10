class AuditoriaController < ApplicationController
    def update
        @auditorium = Auditorium.find(params[:id])
        if @auditorium.update(auditorium_params)
            redirect_to :users_admin, notice: "Successfully updated seating capacity of auditorium"
        end
    end

    private

    def auditorium_params
        params.require(:auditorium).permit(:capacity, :name)
    end
end
