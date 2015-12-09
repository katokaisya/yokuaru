# == Schema Information
#
# Table name: stores
#
#  id                :integer          not null, primary key
#  store_name        :string
#  stor_catch        :string
#  store_genre       :string
#  store_area        :string
#  store_description :text
#  store_address     :text
#  store_access      :string
#  store_tel         :string
#  store_email       :string
#  storeurl          :string
#  store_movie       :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  blog_id           :integer
#

require 'test_helper'

class StoreTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
