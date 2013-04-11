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
#

class EmployeeProfile < ActiveRecord::Base
  attr_accessible :birthday, :content, :employee_id,
                  :height, :age, :salary, :favorite_food, :favorite_day,
                  :photo
                  
  has_attached_file :photo
  
  belongs_to :employee, inverse_of: :profile
  
  validates :employee, presence: true
  
  validates :favorite_day, inclusion: { in: ['monday', 'tuesday', 'wednesday',
                                             'thurdsay', 'friday', 'saturday', 'sunday']}
  
  validates :salary, numericality: { less_than: 1_000_000, greater_than: 10_000,
                                      message: 'That salary is out of our range'}
end
