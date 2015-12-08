class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :store_name
      t.string :stor_catch
      t.string :store_genre
      t.string :store_area
      t.text :store_description
      t.text :store_address
      t.string :store_access
      t.string :store_tel
      t.string :store_email
      t.string :storeurl
      t.string :store_movie

      t.timestamps null: false
    end
  end
end
