class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    # create_table :table_name_plural
    create_table :restaurants do |t|
      t.string :name
      t.string :address

      # created_at && updated_at
      t.timestamps
    end
  end
end
