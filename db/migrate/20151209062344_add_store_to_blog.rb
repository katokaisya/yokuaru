class AddStoreToBlog < ActiveRecord::Migration
  def change
    add_reference :blogs, :store, index: true, foreign_key: true
  end
end
