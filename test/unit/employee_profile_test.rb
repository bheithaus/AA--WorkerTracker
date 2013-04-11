# == Schema Information
#
# Table name: employee_profiles
#
#  id                 :integer          not null, primary key
#  employee_id        :integer          not null
#  content            :text
#  birthday           :date
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  height             :integer
#  age                :integer
#  salary             :integer
#  favorite_food      :string(255)
#  favorite_day       :string(255)
#  photo_file_name    :string(255)
#  photo_content_type :string(255)
#  photo_file_size    :integer
#  photo_updated_at   :datetime
#  online_photo_url   :string(255)
#

require 'test_helper'

class EmployeeProfileTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
