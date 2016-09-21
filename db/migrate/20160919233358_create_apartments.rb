class CreateApartments < ActiveRecord::Migration[5.0]
  def change
    create_table :apartments do |t|
      t.string :address
      t.integer :price
      t.string :VT_Link

      t.timestamps
    end
  end
end
