class ApartmentController < ApplicationController #inherits from application_controller.rb
	
	#show method is for an individual apartment page
	def show #this literally only works if you have an html file called show in a folder called apartments
				
		#you can do things like this in rails without explicitly iterating. this one line is equivalent to creating an array 
		#and doing a for loop and only then extracting data out of that individual apartment
		@apartment = Apartment.find(params[:id] ) #id is essentially provided when you type in the URL i.e. apartment/1. its get /apartment/:id

		#why does simply writing Apartment.address with no instance variable naming not work? - cuz which apartment are you asking about
		@address = @apartment.address
		@price = @apartment.price
		@VT_Link = @apartment.VT_Link
		
		#bring me all rows in the ApartmentImage table related to this specific apt id. 
		#STILL NEED TO CALL .image to get that column of data  out
		@ApartmentImages = ApartmentImage.where(apartment_id: @apartment.id) 
		


		#dynamically pulls in that apartment's image but only either the first or last one depending on whether you use .first or .last
#		@ApartmentImages = ApartmentImage.where(apartment_id: @apartment.id) #bring me all images related to this specific apt id
#		@showfirstAptImage = @ApartmentImages.first.image
	

		#this works to get first image out of db but not unique to any apt
		#@firstImage = ApartmentImage.first
		#@showImage = @firstImage.image
		

		
		
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