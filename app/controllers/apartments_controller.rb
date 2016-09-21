class ApartmentsController < ApplicationController #inherits from application_controller.rb
	def show #this literally only works if you have an html file called show in a folder called apartments
		apartments_array = Apartment.all
		
		for index in 0...apartments_array.size

		@apartment = Apartment.find(params[:id] )

		#why does simply writing Apartment.address with no instance variable naming not work?
		#how am I not just overwriting the apartment data here so that i only ever see my last db entry's info?
		@address = @apartment.address
		@price = @apartment.price
		@VT_Link = @apartment.VT_Link

		end
		
		
		#current working code to get mass spit out of database on page
			#@apartments = Apartment.all

		#prior working code in def show method
			#@apartment = Apartment.find(params[:id])
		
		##worked to get only second record showing (seems to be overwriting original)
			#Apartment.all.each do |x|
			#@apartment = Apartment.find(params[:id])
			#@apartment = x
  		
  	end
end