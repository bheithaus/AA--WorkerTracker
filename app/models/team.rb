class Team < ActiveRecord::Base
  attr_accessible :name, :supervisor_id

  belongs_to :supervisor, class_name: 'Employee', inverse_of: :supervised_teams

  has_many :team_memberships
  has_many :members, through: :team_memberships, class_name: 'Employee', source: :employee
end
