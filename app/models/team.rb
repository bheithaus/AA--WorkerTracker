class Team < ActiveRecord::Base
  attr_accessible :name, :supervisor_id

  belongs_to :supervisor, inverse_of: :supervised_teams

  has_many :team_memberships
  has_many :members, through: :team_memberships, source: :employee_id
end
