class UsersController < ApplicationController
	def admin
		@auditoriums = Auditorium.all
	end
end
