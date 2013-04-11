# == Schema Information
#
# Table name: teams
#
#  id            :integer          not null, primary key
#  supervisor_id :integer
#  name          :string(255)      not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Team < ActiveRecord::Base
  attr_accessible :name, :supervisor_id, :member_ids

  belongs_to :supervisor, class_name: 'Employee', inverse_of: :supervised_teams

  has_many :team_memberships
  has_many :members, through: :team_memberships, class_name: 'Employee', source: :employee
  
  validates :name, presence: true
end
