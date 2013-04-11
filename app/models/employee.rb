# == Schema Information
#
# Table name: employees
#
#  id            :integer          not null, primary key
#  name          :string(255)      not null
#  email         :string(255)
#  position      :string(255)
#  supervisor_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Employee < ActiveRecord::Base
  attr_accessible :email, :name, :position, :supervisor_id, :profile_attributes, :team_ids

  belongs_to :supervisor, class_name: 'Employee', inverse_of: :subordinates
  has_many :subordinates, class_name: 'Employee', foreign_key: :supervisor_id, inverse_of: :supervisor

  has_many :team_memberships, dependent: :destroy
  has_many :teams, through: :team_memberships

  has_many :supervised_teams, class_name: 'Team', foreign_key: :supervisor_id, inverse_of: :supervisor

  has_one :profile, class_name: 'EmployeeProfile', inverse_of: :employee, dependent: :destroy
  
  accepts_nested_attributes_for :profile
  
  validates :name, presence: true
end
