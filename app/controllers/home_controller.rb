class HomeController < ApplicationController
	skip_before_filter :verify_authenticity_token, :only => [:submit]

	def landing
	end

	def try
		render layout: nil
	end

	def form
		@fields = Infosheet.new()
	end

	def submit
		info = Infosheet.new(info_params)
		if info.save then
			render json: {}, status: :ok
		else
			render json: info.errors.full_message, status: :ok
		end
	end

	private

	def info_params
		params.require(:home).permit(:name, :email, :phone)
	end


end