class AddBlogToStore < ActiveRecord::Migration
  def change
    add_reference :stores, :blog, index: true, foreign_key: true
  end
end
