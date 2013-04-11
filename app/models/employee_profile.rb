class EmployeeProfile < ActiveRecord::Base
  attr_accessible :birthday, :content, :employee_id
  
  belongs_to :employee, inverse_of: :profile
end
