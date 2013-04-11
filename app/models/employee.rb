class Employee < ActiveRecord::Base
  attr_accessible :email, :name, :position, :supervisor_id
end
