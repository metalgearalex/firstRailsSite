class CreateApartmentImages < ActiveRecord::Migration[5.0]
  def change
    create_table :apartment_images do |t|
      t.string :image
      t.references :apartments, foreign_key: true

      t.timestamps
    end
  end
end
