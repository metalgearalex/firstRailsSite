class AddApartmentIdtoApartmentImages < ActiveRecord::Migration[5.0]
  def change
  	add_reference :apartment_images, :apartment, index: true
    add_foreign_key :apartment_images, :apartments
  end
end
