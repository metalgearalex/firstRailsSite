class ApartmentsController < ApplicationController #inherits from application_controller.rb
	def show #this literally only works if you have an html file called show in a folder called apartments
		@apartments = Apartment.all
		
		#prior working code in def show method
			#@apartment = Apartment.find(params[:id])
		
		##worked to get only second record showing (seems to be overwriting original)
			#Apartment.all.each do |x|
			#@apartment = Apartment.find(params[:id])
			#@apartment = x
  		
  	end
end