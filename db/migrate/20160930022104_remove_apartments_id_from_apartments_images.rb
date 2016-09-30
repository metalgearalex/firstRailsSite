class RemoveApartmentsIdFromApartmentsImages < ActiveRecord::Migration[5.0]
  def change
    remove_column :apartment_images, :apartments_id, :integer
  end
end
