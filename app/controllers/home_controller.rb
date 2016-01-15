class HomeController < ApplicationController
	skip_before_filter :verify_authenticity_token, :only => [:submit]

	def landing
	end

	def try
		render layout: nil
	end

	# def contact
	# 	contact = Contact.new(contact_params)
	# 	if contact.save then
	# 		render json: {}, status: :ok
	# 	else
	# 		render json: contact.errors.full_message, status: :ok
	# 	end
	# end

	def form
		@fields = Infosheet.new()
	end

	def submit
		puts params
		render json: {}, status: :ok
	end

	private

	def contact_params
		params.require(:home).permit(:name, :email, :phone)
	end


end