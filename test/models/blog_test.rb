# == Schema Information
#
# Table name: blogs
#
#  id         :integer          not null, primary key
#  blog_date  :datetime
#  blog_title :string
#  blog_main  :text
#  blog_img   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  store_id   :integer
#

require 'test_helper'

class BlogTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
