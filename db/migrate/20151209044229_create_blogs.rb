class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.datetime :blog_date
      t.string :blog_title
      t.text :blog_main
      t.string :blog_img

      t.timestamps null: false
    end
  end
end
