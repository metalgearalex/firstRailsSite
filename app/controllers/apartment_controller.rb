class ApartmentController < ApplicationController #inherits from application_controller.rb
	def show #this literally only works if you have an html file called show in a folder called apartments
				
		#you can do things like this in rails without explicitly iterating. this one line is equivalent to creating an array 
		#and doing a for loop and only then extracting data out of that individual apartment
		@apartment = Apartment.find(params[:id] ) 

		#why does simply writing Apartment.address with no instance variable naming not work? - cuz which apartment are you asking about
		@address = @apartment.address
		@price = @apartment.price
		@VT_Link = @apartment.VT_Link				
		
		#current working code to get mass spit out of database on page
			#@apartments = Apartment.all

		#prior working code in def show method
			#@apartment = Apartment.find(params[:id])
		
		##worked to get only second record showing (seems to be overwriting original)
			#Apartment.all.each do |x|
			#@apartment = Apartment.find(params[:id])
			#@apartment = x
  		
  	end

	#for my listings page of all listings
	def index
		@apartments = Apartment.all
	end



end