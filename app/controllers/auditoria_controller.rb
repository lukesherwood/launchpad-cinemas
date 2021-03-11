class AuditoriaController < ApplicationController

	def new
		@auditorium = Auditorium.new
	end

	def create
		@auditorium = Auditorium.new(auditorium_params)
		if @auditorium.save
			redirect_to :users_admin, notice: "Successfully created an auditorium"
		else
			render 'new'
		end
	end

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
